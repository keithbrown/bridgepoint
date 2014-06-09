.//========================================================================
.//
.//File:      $RCSfile$
.//Version:   $Revision$
.//Modified:  $Date$
.//
.//Copyright 2004-2014 by Mentor Graphics Corporation. All rights reserved.
.//
.//========================================================================
.// Licensed under the Apache License, Version 2.0 (the "License"); you may not 
.// use this file except in compliance with the License.  You may obtain a copy 
.// of the License at
.//
.//       http://www.apache.org/licenses/LICENSE-2.0
.//
.// Unless required by applicable law or agreed to in writing, software 
.// distributed under the License is distributed on an "AS IS" BASIS, WITHOUT 
.// WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.   See the 
.// License for the specific language governing permissions and limitations under
.// the License.
.//========================================================================
.//
.// This file is the entry point for generating the code for the Model Compare
.// tree and text generators
.//
.invoke arc_env = GET_ENV_VAR( "PTC_MC_ARC_DIR" )
.assign mc_archetypes = arc_env.result
.if ( mc_archetypes == "" )
  .print "\nERROR: Environment variable PTC_MC_ARC_DIR not set."
  .exit 100
.end if
.//
.include "${mc_archetypes}/arch_utils.inc"
.//
.invoke local_arc_dir = GET_ENV_VAR( "LOCAL_ARC_DIR" )
.assign arc_dir = local_arc_dir.result
.if ( arc_dir == "" )
  .assign arc_dir = "arc"
.end if
.include "${arc_dir}/parse_chain.inc"
.include "${arc_dir}/create_object_inspector.inc"
.//
.assign path = "com/mentor/nucleus/bp/core"
.invoke output_path = GET_ENV_VAR( "OUTPUT_PATH" )
.if(output_path.result != "")
  .assign path = output_path.result
.end if
.assign inspector_dir = "inspector"
.assign rel_path = "src/${path}"
.invoke package = GET_ENV_VAR( "SOURCE_PACKAGE" )
.assign package_initial = package.result
.if(package_initial == "")
  .assign package_initial = "com.mentor.nucleus.bp.core"
.end if
.assign inspector_package = "${package_initial}.${inspector_dir}"
.assign inspector_interface_name = "IModelClassInspector"
.//
.assign model_element_class_name = "ObjectElement"

.function create_model_inspector
	.param string main_package
	.param string inspector_name
	.param string path
	.param string inspector_dir
	.param string inspector_interface_name
	.param string model_element_class_name
	
	.assign adapter_package = "${main_package}.${inspector_dir}.*"
.//
.//	This file provides the main inspector, to iterate through the compare tree
.//
package ${main_package}.${inspector_dir};
//======================================================================
//
// File: ${path}/${inspector_dir}/${inspector_name}.java
//
// WARNING:      Do not edit this generated file
// Generated by: ${info.arch_file_name}
// Version:      $$Revision$$
//
// (c) Copyright 2004-2014 by Mentor Graphics Corp.  All rights reserved.
//
//======================================================================
import java.util.HashMap;

import org.eclipse.swt.graphics.Image;

import com.mentor.nucleus.bp.core.ClassStateMachine_c;
import com.mentor.nucleus.bp.core.InstanceStateMachine_c;
import com.mentor.nucleus.bp.core.StateMachine_c;
import com.mentor.nucleus.bp.core.inspector.*;
import com.mentor.nucleus.bp.core.sorter.MetadataSortingManager;

public class ${inspector_name} implements ${inspector_interface_name}, IModelInspectorRegistry {

	private HashMap adaptersMap;
	private MetadataSortingManager sortingManager;
	
	public ${inspector_name}(){
	    this(null);
	}
	
	public ${inspector_name}(MetadataSortingManager aSortingManager){
		adaptersMap = new HashMap();
		sortingManager = aSortingManager;
		initializeMap();
	}

	/* 
	* @see IModelInspectorRegistry#getInspector(Class)
	*/	
	public ${inspector_interface_name} getInspector(Class modelClass) {
		return ((${inspector_interface_name})adaptersMap.get(modelClass.getName()));
	}
	
	public MetadataSortingManager getSortingManager() {
		return sortingManager;
	}
	
	/*
	*  This function is required to be called every before using the inspectors.
	*  It adds an adapter object for each object in the meta model
	*/
	private void initializeMap(){
.//
	.select many tree_nodes from instances of T_TNS
	.assign adapter_name = ""
	.for each tree_node in tree_nodes
		.select any meta_model_obj from instances of O_OBJ where (selected.Key_Lett == tree_node.Key_Lett)
		.invoke formatted_name = get_class_name(meta_model_obj)
		.assign meta_model_obj_name = formatted_name.body
.//		
		.assign adapter_name = "$Cr{meta_model_obj.Name}"
		.assign adapter_name = "${adapter_name}Inspector"
		adaptersMap.put("${main_package}.${meta_model_obj_name}", new ${adapter_name}(sortingManager) );
	.end for	
	}
	
	.assign return_string = "return getInspector(arg.getClass())"
	
	/* 
	 * @see ${inspector_interface_name}#getParent(Object)
	 */
	public Object getParent(Object arg) {
		if(arg instanceof ObjectElement) {
			return ((ObjectElement) arg).getParent();
		}
		if(arg instanceof StateMachine_c) {
			InstanceStateMachine_c ism = InstanceStateMachine_c.getOneSM_ISMOnR517((StateMachine_c) arg);
			if(ism != null) {
				arg = ism;
				return getInspector(arg.getClass()).getParent(arg);
			}
			ClassStateMachine_c csm = ClassStateMachine_c.getOneSM_ASMOnR517((StateMachine_c) arg);
			if(csm != null) {
				arg = csm;
				return getInspector(arg.getClass()).getParent(arg);
			}
		}
		if(getInspector(arg.getClass()) == null) {
		     return null;
		}
		${return_string}.getParent(arg);
		
	}
	
	/* 
	 * @see ${inspector_interface_name}#getChildRelations(Object)
	 */
	public ${model_element_class_name}[] getChildRelations(Object arg) {
		${return_string}.getChildRelations(arg);		
	}

	/* 
	 * @see ${inspector_interface_name}#hasChildRelations(Object)
	 */
	public boolean hasChildRelations(Object arg) {
		${return_string}.hasChildRelations(arg);
	}
	
	/*
	* @see ${inspector_interface_name}#getReferentials(Object)
	*/
	public ${model_element_class_name}[] getReferentials(Object arg) {
		${return_string}.getReferentials(arg);
	}
	
	/*
	* @see ${inspector_interface_name}#getAttributes(Object)
	*/	
	public ${model_element_class_name}[] getAttributes(Object arg) {
		${return_string}.getAttributes(arg);
	}
	
	/*
	 * @see IMOdelClassInspector#getReferentialDetails(Class<?> referentialClass, Object arg)
	 */
	public Object[] getReferentialDetails(Class<?> referentialClass, Object arg) {
		return getInspector(arg.getClass()).getReferentialDetails(referentialClass, arg);
	}
	
	/*
	 * @see IMOdelClassInspector#getImage(Object)
	 */
	public Image getImage(Object arg) {
		return getInspector(arg.getClass()).getImage(arg);
	}
}
.end function
.if(inspector_package == "com.mentor.nucleus.bp.core.inspector")
  ./////
  .// Generating the Inspector' Interface
  .//
package ${inspector_package};
//======================================================================
//
// File: ${path}/${inspector_dir}/${inspector_interface_name}.java
//
// WARNING:      Do not edit this generated file
// Generated by: ${info.arch_file_name}
// Version:      $$Revision$$
//
// (c) Copyright 2004-2014 by Mentor Graphics Corp.  All rights reserved.
//
//======================================================================
import org.eclipse.swt.graphics.Image;

public interface ${inspector_interface_name}{
	Object getParent(Object arg);
	${model_element_class_name}[] getChildRelations(Object arg);
	boolean hasChildRelations(Object arg);
	${model_element_class_name}[] getReferentials(Object arg);
	${model_element_class_name}[] getAttributes(Object arg);
	Object[] getReferentialDetails(Class<?> referentialClass, Object arg);
	Image getImage(Object arg);
}
 .emit to file "${rel_path}/${inspector_dir}/${inspector_interface_name}.java"
 .//
 .// Generating the Role wrapper class
  .//
package ${inspector_package};
//======================================================================
//
// File: ${path}/${inspector_dir}/${model_element_class_name}.java
//
// WARNING:      Do not edit this generated file
// Generated by: ${info.arch_file_name}
// Version:      $$Revision$$
//
// (c) Copyright 2004-2014 by Mentor Graphics Corp.  All rights reserved.
//
//======================================================================
//
// An ObjectElement represents a metamodel class attribute.  It allows
// access to it's name and value
//
import com.mentor.nucleus.bp.core.common.NonRootModelElement;

public class ${model_element_class_name}{
	public static final int ATTRIBUTE_ELEMENT = 0;
	public static final int REFERENTIAL_ATTRIBUTE_ELEMENT = 1;
	public static final int RELATION_ROLE_ELEMENT = 2;

	private String name;
	private int type;
	private Object value;
	private Object parent;
	private String valueAccessor;
	private boolean userModifiable;
	private Object owner;
	private boolean derived = false;
	
	public ${model_element_class_name}(String aName, int aType, Object aValue, Object parent, boolean userModifiable){
	    this(aName, aType, aValue, parent, "", userModifiable);
	}
	
	public ${model_element_class_name}(String aName, int aType, Object aValue, Object parent, String valueAccessor, boolean userModifiable){
		name = aName;
		
		if(aType < ATTRIBUTE_ELEMENT || aType > RELATION_ROLE_ELEMENT)
			throw new IllegalArgumentException("Invalid Type");
		
		type = aType;
		value = aValue;
		this.parent = parent;
		this.valueAccessor = valueAccessor;
		this.userModifiable = userModifiable;
	}

	public String getValueAccessor() {
	    return valueAccessor;
	}

	public String getName() {
		return name;
	}

	public int getType() {
		return type;
	}

	public Object getValue() {
		return value;
	}
	
	public boolean isUserModifiable() {
		return userModifiable;
	}
	
	public void setValue(Object newValue) {
		value = newValue;
	}
	
	public Object getParent() {
	    return parent;
	}
	
	public void setAttributeOwner(Object owner) {
		this.owner = owner;
	}
	
	public Object getAttributeOwner() {
		return owner;
	}
	
	@Override
	public boolean equals(Object obj) {
		if (obj instanceof ObjectElement) {
			ObjectElement other = (ObjectElement) obj;
			if (identityEquals(getParent(), other.getParent())) {
				if (other.getType() == getType()
						&& other.getName().equals(getName())) {
					return true;
				}
			}
		}
		return false;
	}
	
	private boolean identityEquals(Object element1, Object element2) {
		NonRootModelElement nrme1 = (NonRootModelElement) element1;
		NonRootModelElement nrme2 = (NonRootModelElement) element2;
		if(nrme1 == nrme2) {
			return true;
		}
		if(nrme1.identityEquals(nrme2)) {
		  	return true;
		}
		if(handleProxyEquality(nrme1, nrme2)) {
			return true;
		}
		return false;
}

	private boolean handleProxyEquality(NonRootModelElement nrme1,
			NonRootModelElement nrme2) {
		return nrme1.cachedIdentityEquals(nrme2);
	}
	
	@Override
	public int hashCode() {
		int hash = 1;
		Object instanceKey = ((NonRootModelElement) getParent()).getInstanceKey();
		if(instanceKey instanceof Object[]) {
			for (int i = 0; i < ((Object[]) instanceKey).length; i++) {
				hash = hash + ((Object[]) instanceKey)[i].hashCode();
			}
		} else {
			hash = hash + instanceKey.hashCode();
		}
		hash = hash + 31 * getType();
		hash = hash + 31 * getName().hashCode();
		return hash;
	}
	
	/**
	 * setDerived does not take a parameter as the ObjectElement class can
	 * be either derived or non-derived, it will never change during its
	 * existence
	 */
	public void setDerived() {
		derived = true;
	}
	
	public boolean isDerived() {
	  	return derived;
	}
	
}
  .emit to file "${rel_path}/${inspector_dir}/${model_element_class_name}.java"
.end if
.//
.// Generating the inspectors for each instance in CompareTree.pei.sql
.//
.select many tree_nodes from instances of T_TNS 
.for each node in tree_nodes
  .if((node.Key_Lett != "MSG_A") and (node.Key_Lett != "EP_PKG"))
    .select any mclass from instances of O_OBJ where (selected.Key_Lett == node.Key_Lett)
    .assign node_name = "$Cr{mclass.Name}"
    .invoke result = create_object_inspector(node, node_name, path, inspector_interface_name, model_element_class_name, package_initial)
package ${inspector_package};
${result.body}
    .emit to file "${rel_path}/${inspector_dir}/${result.result}.java"
  .end if
.end for
.//
.// Generating the Model Iterator
.//
.assign inspector_name = "ModelInspector"
.invoke model_inspector = GET_ENV_VAR( "INSPECTOR_NAME" )
.if(model_inspector.result != "")
  .assign inspector_name = model_inspector.result
.end if
.invoke inspector_class = create_model_inspector(package_initial, inspector_name, path, inspector_dir, inspector_interface_name, model_element_class_name)
${inspector_class.body}
.emit to file "${rel_path}/${inspector_dir}/${inspector_name}.java"
.//
