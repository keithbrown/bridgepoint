//=====================================================================
//
//File:      $RCSfile: BridgePointLicenseManager.java,v $
//Version:   $Revision: 1.25 $
//Modified:  $Date: 2013/06/12 15:45:39 $
//
//(c) Copyright 2004-2013 by Mentor Graphics Corp. All rights reserved.
//
//=====================================================================
//This document contains information proprietary and confidential to
//Mentor Graphics Corp. and is not for external distribution.
//=====================================================================

package com.mentor.nucleus.bp.core.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.net.URI;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IPath;

import com.mentor.jeda.comps.JetInitHeap;
import com.mentor.nucleus.bp.core.ComponentReference_c;
import com.mentor.nucleus.bp.core.Component_c;
import com.mentor.nucleus.bp.core.CorePlugin;
import com.mentor.nucleus.bp.core.Domain_c;
import com.mentor.nucleus.bp.core.common.NonRootModelElement;

public class BridgePointLicenseManager  extends BridgePointDemoEncryptor {

	public enum LicenseAtomic {

		ATOMIC_NOT_INITIALIZED(-1),
		VERIFIER_LICENSE_CODE(3157),
		VERIFIER_SYSTEM_LICENSE_CODE(100173),
		MC3020SOURCE_MC_LICENSE_CODE(2885),
		MC2020SOURCE_MC_LICENSE_CODE(2886),
		MC3020BINARY_MC_LICENSE_CODE(3145),
		MC2020BINARY_MC_LICENSE_CODE(3146),
		DAP_MC_LICENSE_CODE(3065),
		SYSTEMC_SOURCE_MC_LICENSE_CODE(101220),
		VHDL_SOURCE_MC_LICENSE_CODE(101219),
		
		// The enums from this point down were introduced when the OSS
		// version of BridgePoint was introduced.
		XTUMLEDIT(102314),
		
		XTUMLMCUIVHDL(102313),  // For possible future use
		XTUMLMCUISYSC(102312),  // For possible future use
		XTUMLMCUICPP(102311),  	// For possible future use
		XTUMLMCUIC(102310),  	// For possible future use
		XTUMLMCUICB(102309),  	// For possible future use
		
		XTUMLPREBUILD(102308),  	// For possible future use.
									// This was created while initially working
									// on OSS atomics and composites.  It was placed
									// in a composite, bpumlexecute_c, that tied
									// execution and compilation together.  
									// We do not want to tie them, so this 
									// atomic is not used, and instead XTUMLMCEXPORT
									// is used.
		
		XTUMLMCEXPORT(102320 );   // This license controls parsing and outputting
		                          // of the executable instance data 
		
		private int code;

		private LicenseAtomic(int c) {
			code = c;
		}

		public int getCode() {
			return code;
		}
	}
	
    private static final String MGLS_XTUML_APP_DATE = "Feb 01 2013";
	private static JetInitHeap license = null;

	private static final String EditorLicense = "EditorLicense";
	
	/**
	 * Simple class used to hold information about an acquired license.
	 *
	 */
	static class LicenseEntry {
		protected Date timeAcquired;
		protected long licenseTransactionID;
		
		LicenseEntry(long licenseID) {
			timeAcquired = new Date();
			licenseTransactionID = licenseID;
		}
	}
	
	/**
	 * This map keeps track of the licenses acquired and the time they were
	 * acquired.  This is used as a "license cache" so we don't request
	 * licenses so frequently.
	 */
	private static HashMap<String, LicenseEntry > licensesObtained = new HashMap<String, LicenseEntry >();

	private static boolean IsVeryFirstLicenseCheckAtStartup = true;
	
	private static boolean initialized = false;
	
	/**
	 * This constructor is here only for access to the demo encryptor. There
	 * is no reason for anyone outside this class to instantiate it.  Therefore
	 * it is private.
	 */
	private BridgePointLicenseManager() {
		super();
	}
	
    private static void initConnection() {
        if (!initialized) {
            license = new JetInitHeap();
            if (license == null) {
                UIUtil.openErrorWithContactInfo("ERROR: Could not initialize JetInitHeap.\n");
            }
            
            boolean requestResult = license.installHeapInterruptHandler();
            if (!requestResult) {
                System.err.println("INFO: Return result from installHeapInterruptHandler() was false.");
            }
            
            initialized = true;
            
            // Disable non-critical licensing dialog
            license.setBatchMode();
        }
    }

	/** 
	 * @see LicenseManager.checkLicense
	 * @param licenseCode
	 * @return true if we got the license false if we did not.
	 */
	private static boolean getLicenseInternal(LicenseAtomic licenseCode, boolean useLinger) {
		// first look in our license cahce to see if we already have the license.
		boolean isLicensed = isLicensedInCache(licenseCode);

		if (!isLicensed) {
			initConnection();
	
			long txn_id = -1;
			int secondsToLinger = JetInitHeap.MGLS_LINGER_OFF;
			if (useLinger) {
				secondsToLinger = 60 * 60; // 60 minutes.
			} 
		
			boolean performLicenseCheck = true;
			// Only really attempt to pull this license if it is present.  We 
			// do this to prevent FLEXlm error for this license because this 
			// is used for usage tracking only.
			if (licenseCode == LicenseAtomic.XTUMLEDIT) {
				performLicenseCheck = BridgePointLicenseManager.testLicense(LicenseAtomic.XTUMLEDIT);
			}
			if (performLicenseCheck) {
			    txn_id = license.initHeapAttrs(licenseCode.getCode(), MGLS_XTUML_APP_DATE, getLicenseDisplayString(), secondsToLinger );
				if (txn_id <= 0) {
					if (IsVeryFirstLicenseCheckAtStartup) {
						// This is to work around a license bug. The very first
						// call to the license manager may fail even though the
						// license is valid.
						txn_id = license.initHeapAttrs(licenseCode.getCode(), MGLS_XTUML_APP_DATE, getLicenseDisplayString(), secondsToLinger );
					}
				}
			}
		
			IsVeryFirstLicenseCheckAtStartup = false;
	
			// If this is the editor allow it even if there is no license.
			// We also cache it so that we do not make lot of attempts to
			// re-acquire the editor license.
			if (txn_id > 0 || licenseCode == LicenseAtomic.XTUMLEDIT) {
				isLicensed = true;
				// Add this license to license cache with the current date, replace
				// the prior entry if there was one.
				licensesObtained.put(String.valueOf(licenseCode), new LicenseEntry(txn_id));
				
				// If it was the editor license, then release it immediately
				if ( licenseCode == LicenseAtomic.XTUMLEDIT ) {
				    releaseLicense(LicenseAtomic.XTUMLEDIT);
				}
			}
		}
		return isLicensed;
	}
	

	/**
	 * 
	 * This routine builds and returns the display string used for duplicate license
	 * grouping.  This is a lower-case string in the form:
	 *  <display from mgls>"_"<workspace URI>
	 * 
	 * @return The display string we use to control license grouping in MGLS.
	 */
	private static String getLicenseDisplayString() {
	    String licenseDisplayString = "";
	    
		if (license==null) {
			initConnection();
		}
	    String disp = license.getHeapDisplay();
	    if (disp == null) {
	        disp = "";
	    }
	    
	    //get object which represents the workspace  
	    IWorkspace workspace = ResourcesPlugin.getWorkspace();  
	      
	    //get location of workspace (java.io.File)  
	    URI workspaceURI = workspace.getRoot().getLocation().toFile().toURI(); 
	    		
	    licenseDisplayString = disp + "_" + workspaceURI;
	    
	    return licenseDisplayString;
	}

	
	/**
	 * create the file to hold the MGLS duplicate grouping key in the given 
	 * folder (typically the project's gen/code_generation folder.  The folder 
	 * should already exist, but we call Java's function to create the path if 
	 * not just in case. This is used by gen_erate to assure the same display 
	 * grouping is used for licensing so that multiple licenses are not checked 
	 * out.
	 */
	public static void writeXTUMLDisplayFile(IPath destFolder) {
		PrintStream out = null;
		final String displayFileName = ".mgxtumldisplay";

		IPath displayFilePath = destFolder.append(displayFileName);
		File displayFile = displayFilePath.toFile();
		try {
		    displayFile.getParentFile().mkdirs();
			displayFile.createNewFile(); 
			displayFile.deleteOnExit();
			out = new PrintStream(new FileOutputStream(displayFile));
			out.print(BridgePointLicenseManager.getLicenseDisplayString());
		} catch (IOException e) {
			CorePlugin.logError("Failed to write the file: " + displayFileName, e);
		} finally {
			if (out != null) {
				out.close();
			}
		}
	}
	
	/**
	 * Remove the specified license from our cache and release the license so
	 * it is available to other users.
	 * 
	 * If it is the editor license, release it on the server but leave it in our
	 * cache so we don't keep hitting the server for it.
	 * 
	 * @param licenseCode
	 */
	public static void releaseLicense(LicenseAtomic licenseCode) {
		BridgePointLicenseManager.LicenseEntry licenseEntry;
		
		// Once we put an edit license in the cache, we don't want to remove it.
		if (licenseCode == LicenseAtomic.XTUMLEDIT) {
		    licenseEntry = licensesObtained.get(String.valueOf(licenseCode));
		} else {
		    licenseEntry = licensesObtained.remove(String.valueOf(licenseCode));
		}
		
		// The reason we check that licenseTransactionID > 0 is that we may have
		// cached an editor license with a transaction ID that invalid (i.e. no
		// editor license was actually checked out).  In this case, we do not 
		// want to call MGLS' releaseLicense.
		if ( licenseEntry != null && licenseEntry.licenseTransactionID > 0) {
		    boolean releasedLicense = license.releaseLicenses(licenseEntry.licenseTransactionID);
		    if (!releasedLicense) {
		     CorePlugin.logError("Failed to release the license: " + licenseCode.getCode(), null);
		    }
		}
	}
	
	public static boolean getLicense(LicenseAtomic licenseCode) {
		return getLicense(licenseCode, false);
	}

	/**
	 * 
	 * Get a license 
	 * 
	 * Attempt to acquire a license.  If the given license is a system-level
	 * license then an attempt is made to acquire just the specified license.
	 * When an attempt is made to acquire a non-system level license then 
	 * this function checks first for a system-level license and second for a 
	 * non-system level license, and if either is present the function returns 
	 * true, otherwise it returns false.  This is done because when a user has 
	 * a system-level license it may be used for non-system-level tasks.
	 *         
	 * @param licenseCode This is the BridgePoint license code to attempt to 
	 * acquire. The values expected by this function are defined as 
	 * public final static variables in this class. 
	 * @return true if license is acquired and false if not
	 */
	public static boolean getLicense(LicenseAtomic licenseCode, boolean useLinger) {
		boolean licensed = false;
		LicenseAtomic firstLicenseToCheck = licenseCode;
		LicenseAtomic secondLicenseToCheck = LicenseAtomic.ATOMIC_NOT_INITIALIZED;
		LicenseAtomic thirdLicenseToCheck = LicenseAtomic.ATOMIC_NOT_INITIALIZED;

		// If a system license if require we only check the system license.
		// If a system license is not required then we check for either
		// a system license or a non-system license.
		if (licenseCode == LicenseAtomic.VERIFIER_LICENSE_CODE) {
			secondLicenseToCheck = LicenseAtomic.VERIFIER_SYSTEM_LICENSE_CODE;
		}

		licensed = BridgePointLicenseManager.getLicenseInternal(firstLicenseToCheck, useLinger);
		if (!licensed && (secondLicenseToCheck != LicenseAtomic.ATOMIC_NOT_INITIALIZED)) {
			licensed = BridgePointLicenseManager
					.getLicenseInternal(secondLicenseToCheck, useLinger);
		}
		if (!licensed && (thirdLicenseToCheck != LicenseAtomic.ATOMIC_NOT_INITIALIZED)) {
			licensed = BridgePointLicenseManager
					.getLicenseInternal(thirdLicenseToCheck, useLinger);
		}

		if (!licensed) {
			// See if there is a demo license.
			int demo = isDemoLicensed();
			if (demo == BP_NOT_DEMOING) {
				// Do nothing
			} else if (demo == BP_DEMO_LICENSED) {
				licensed = true;
			} else if (demo == BP_NOT_DEMO_LICENSED) {
				licensed = false;
			}
		}

		return licensed;
	}
	
	/**
	 * This function look in our license cache to see if the specified 
	 * license is present.  It return true if it s present AND it is
	 * within the time period we allow it to exist without rechecking the 
	 * license.
	 * 
	 * @param licenseCode The license code to check for.  This must be one of
	 *                    the defined license code constants from
	 *                    BridgePointLicenseManager.java.
	 * @return true if the cache does hold a valid license for the specified
	 *         license code and false if it does not.
	 */
	private static boolean isLicensedInCache(LicenseAtomic licenseCode) {
		boolean licensed = false;
		
		// Use the cached license if there is one and it isn't too old
		BridgePointLicenseManager.LicenseEntry licenseEntry = licensesObtained.get(String.valueOf(licenseCode));
		
		if (licenseEntry != null) {
		    if (licenseCode == LicenseAtomic.XTUMLEDIT) {
		        // If we found the edit license in the cache, don't check (or care) about expiration time
		        licensed = true;
            } else {
                // Keep it cached for one hour
                final int MillisecondsInOneHour = 1000*60*60;
                Date now = new Date();
                long timeCachedInMS = now.getTime() - licenseEntry.timeAcquired.getTime();
                if (timeCachedInMS < MillisecondsInOneHour) {
                    licensed = true;
                }
            }
		}
		
		return licensed;
	}
	
	public static synchronized boolean isEditorLicensed() {
		return isEditorLicensed(EditorLicense);
		}

	public static synchronized boolean isEditorLicensed(String modelElementType) {

		if (modelElementType.equalsIgnoreCase("Component_c")
				|| modelElementType.equalsIgnoreCase("ComponentReference_c")
				|| modelElementType.equalsIgnoreCase("Domain_c")
				|| modelElementType.equalsIgnoreCase(EditorLicense)) {
			
				BridgePointLicenseManager.getLicenseInternal(
						LicenseAtomic.XTUMLEDIT, false);

		}
			
		// The editor is always available.  The sole purpose of this license is 
		// usage tracking
		return true;
	}

	/**
	 * This function is used to check the model Execution license.
	 * 
	 * @param elementsInSys the list of elements the user has selected to
	 *        execute
	 *        
	 * @return true is it is licensed and false if not.
	 */
	public static boolean isExecutionLicensed(
			List<NonRootModelElement> elementsInSys) {

		/* check to see if system License is required or not */
		int numLicensedElements = 0;
		for (int i = 0; i < elementsInSys.size(); i++) {
			NonRootModelElement curElement = elementsInSys.get(i);
			if ((curElement instanceof ComponentReference_c)
					|| (curElement instanceof Component_c)
					|| (curElement instanceof Domain_c)) {
				numLicensedElements++;
			}
		}
		boolean requiresSysLicense = (numLicensedElements > 1) ? true : false;

		LicenseAtomic licenseTypeNeeded = LicenseAtomic.VERIFIER_SYSTEM_LICENSE_CODE;
		if (!requiresSysLicense) {
			licenseTypeNeeded = LicenseAtomic.VERIFIER_LICENSE_CODE;
		}

		boolean isLicensed = BridgePointLicenseManager
				.getLicense(licenseTypeNeeded);
		if (!isLicensed) {

			String message = "Failed to get verifier license from license manager.";
			if (requiresSysLicense) {
				message = "Failed to get system verifier license from license manager.  You are not licensed to run Model Verifier on multiple components at the same time.";
			}

			UIUtil.openError(null, "Verifier Launcher", message, true );
		}

		return isLicensed;
	}
	
	/**
     * 
     * Test for a license 
     * 
     * Test to see if a license is available. Does not use the license cache and
     * does not actually check the license out.
     *         
     * @param licenseCode This is the BridgePoint license code to test for. 
     * The values expected by this function are defined as 
     * public final static variables in this class. 
     * @return true if license is available and false if not
     */
    public static boolean testLicense(LicenseAtomic licenseCode) {
		//System.out.println("NOTICE: Testing availability of license code " + licenseCode + "\n");
        initConnection();
        
        boolean licensed = false;
        licensed = license.checkHeap(licenseCode.getCode(), MGLS_XTUML_APP_DATE);
        
        if (!licensed && IsVeryFirstLicenseCheckAtStartup) {
            // This is to work around a license bug.  The very first
            // call to the license manager may fail even though the 
            // license is valid.
            licensed = license.checkHeap(licenseCode.getCode(), MGLS_XTUML_APP_DATE);
                    }
                    IsVeryFirstLicenseCheckAtStartup = false;
        
        if (!licensed) {
            // See if there is a demo license.
            int demo = isDemoLicensed();
            if (demo == BP_NOT_DEMOING) {
                // Do nothing
            } else if (demo == BP_DEMO_LICENSED) {
                licensed = true;
            } else if (demo == BP_NOT_DEMO_LICENSED) {
                licensed = false;
            }
        }
        
        return licensed;
    }

    public static int BP_NOT_DEMOING = 0;
    public static int BP_DEMO_LICENSED = 1;
    public static int BP_NOT_DEMO_LICENSED = 2;
    
    public static int isDemoLicensed()
    {
        // See if there is a demo license.     
// Note: This was introduced for a specific issue (dts0100590737).  Why we
//       We have decided to remove this demo license now that that issue has
//       been resolved.  To enable the demo license the follow 4 lines should
//       be enabled.
//        boolean licensed = false;
//        BridgePointLicenseManager lm = new BridgePointLicenseManager();
//        licensed = lm.demoIsInProgress();
//        if (licensed) {
//            return BP_DEMO_LICENSED;
//        } else {
//            return BP_NOT_DEMO_LICENSED;
//        }

        return BP_NOT_DEMOING;
    }
}
