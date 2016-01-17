//=====================================================================
// Licensed under the Apache License, Version 2.0 (the "License"); you may not 
// use this file except in compliance with the License.  You may obtain a copy 
// of the License at
//
//       http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software 
// distributed under the License is distributed on an "AS IS" BASIS, WITHOUT 
// WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.   See the 
// License for the specific language governing permissions and limitations under
// the License.
//=====================================================================

package org.xtuml.bp.masl.model;

import java.util.Hashtable;
import java.util.Map;
import java.util.Set;
import java.util.Map.Entry;

import org.xtuml.bp.core.Ooaofooa;
import org.xtuml.bp.core.common.ILogger;
import org.xtuml.bp.core.common.InstanceList;
import org.xtuml.bp.core.common.ModelRoot;
import org.xtuml.bp.core.common.NonRootModelElement;
import org.xtuml.bp.core.common.TraceLogger;

/**
 * Holds all the Java-only methods of Imported_masl.  All instances of this class
 * must also be instances of Imported_masl.  Externally, other classes
 * should only know about Imported_masl, and not this class.  Call
 * this class's thisAsImported_masl() method to cast an instance of 
 * this class to an Imported_masl.   
 */
public class Imported_maslBase extends ModelRoot
{
    public static ILogger log = new TraceLogger("org.xtuml.bp.ui.canvas/debug");

    protected static Map<String, Imported_maslBase> rootInstanceMap = new Hashtable<String, Imported_maslBase>();

    /**
     * Constructor 
     */
    protected Imported_maslBase(String aRootId)
    {
    	super(aRootId);

    	rootInstanceMap.put(aRootId, this);
    }

    protected static ILogger getLog() {return log;}

    /** 
     * Changes this root's ID to the one given. Is meant to be called 
     * only on root instances that have previously had their ID's 
     * fields set directly.  
     */
    public void setId(String id)
    {
        // assign the new ID
        rootInstanceMap.remove(rootId);
        rootId = id;
        rootInstanceMap.put(rootId, this);
    }
    
    /**
     * Returns this instance of this class as an instance of Imported_masl,
     * which it is required to also be.
     */
    protected Imported_masl thisAsImported_masl() {return (Imported_masl)this;}
    
    public void delete() 
    {
    	instanceListMap.clear();
        rootInstanceMap.remove(rootId);
    }
	
    public void batchUnrelateAll() {
    	for(Object key : instanceListMap.keySet()) {
    		InstanceList instanceList = instanceListMap.get(key);
    		for(NonRootModelElement object : instanceList) {
    			object.batchUnrelate();
    		}
    	}
    }
    
    /**
	 * Returns an array of all the currently existing instances of this class.
	 */
	public static Imported_masl[] getInstances()
	{
		return (Imported_masl[])rootInstanceMap.values().toArray(
				new Imported_masl[rootInstanceMap.size()]);
	}
    
    /* (non-Javadoc)
     * @see org.xtuml.bp.core.common.ModelRoot#getPersistenceFile()
     */
    public Object getPersistenceFile()
    {
        return Ooaofooa.getInstance(getId(), false).getPersistenceFile();
    }

    /* (non-Javadoc)
     * @see org.xtuml.bp.core.common.ModelRoot#isPersisting()
     */
    public boolean isPersisting()
    {
        return Ooaofooa.getInstance(getId(), false).isPersisting();
    }

	@Override
	public boolean persistEnabled() {
		Ooaofooa ooaroot = Ooaofooa.getInstance(getId());
		return ooaroot.persistEnabled();
	}
	
	public static void addInstance(Imported_masl root) {
		rootInstanceMap.put(root.getId(), root);
	}
	
	public static Imported_masl findInstance(String id) {
		return (Imported_masl) rootInstanceMap.get(id);
	}
}

