package org.xtuml.bp.masl.model;

import java.util.MissingResourceException;
import java.util.ResourceBundle;

import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.ui.plugin.AbstractUIPlugin;
import org.osgi.framework.BundleContext;
import org.osgi.framework.Constants;

public class MASLModelPlugin extends AbstractUIPlugin {
	private static MASLModelPlugin plugin;
	private ResourceBundle resourceBundle;
	private static boolean isActivated;

	public MASLModelPlugin() {
		super();
		plugin = this;
		try {
			resourceBundle = ResourceBundle.getBundle("org.xtuml.bp.masl.model.MASLModelPluginResources"); //$NON-NLS-1$
		} catch (MissingResourceException x) {
			resourceBundle = null;
		}
	}

	public static MASLModelPlugin getDefault() {
		return plugin;
	}

	public static IWorkspace getWorkspace() {
		return ResourcesPlugin.getWorkspace();
	}

	public static String getResourceString(String key) {
		ResourceBundle bundle = MASLModelPlugin.getDefault().getResourceBundle();
		try {
			return bundle.getString(key);
		} catch (MissingResourceException e) {
			return key;
		}
	}

	public ResourceBundle getResourceBundle() {
		return resourceBundle;
	}

	public static void logError(String msg, Throwable e) {
		MASLModelPlugin cp = getDefault();
		// plugin is null when running unit tests
		if (cp != null) {
			Status status = new Status(IStatus.ERROR, (String) cp.getBundle().getHeaders().get(Constants.BUNDLE_NAME),
					IStatus.ERROR, msg, e);
			getDefault().getLog().log(status);
		} else {
			System.err.println(msg);
			if (e != null) {
				e.printStackTrace();
			}
		}
	}

	/* (non-Javadoc)
	 * @see org.osgi.framework.BundleActivator#start(org.osgi.framework.BundleContext)
	 */
	public void start(BundleContext context) throws Exception {
		/* TODO - figure out what to do and fix
		if (!CoreUtil.IsRunningHeadless) {
			super.start(context);
			MASLModelPlugin.isActivated = true;
		} else {
			MASLModelPlugin.isActivated = false;
		}*/
	}

	/* (non-Javadoc)
	 * @see org.osgi.framework.BundleActivator#stop(org.osgi.framework.BundleContext)
	 */
	public void stop(BundleContext context) throws Exception {
		if (MASLModelPlugin.isActivated) {
			super.stop(context);
		}
	}

}