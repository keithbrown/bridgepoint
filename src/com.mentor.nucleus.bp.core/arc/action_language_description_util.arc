.//=======================================================================
.//
.// File:      $RCSfile: action_language_description_util.arc,v $
.// Version:   $Revision: 1.5 $
.// Modified:  $Date: 2013/06/12 13:08:20 $
.//
.// (c) Copyright 2005-2013 by Mentor Graphics Corp.  All rights reserved.
.//
.//=======================================================================
.// Licensed under the Apache License, Version 2.0 (the "License"); you may not
.// use this file except in compliance with the License.  You may obtain a copy
.// of the License at
.//
.//      http://www.apache.org/licenses/LICENSE-2.0
.//
.// Unless required by applicable law or agreed to in writing, software
.// distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
.// WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.   See the
.// License for the specific language governing permissions and limitations under
.// the License.
.//=======================================================================
.//
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
package com.mentor.nucleus.bp.core.util;
//========================================================================
//
// File: com.mentor.nucleus.bp.core/src/com/mentor/nucleus/bp/core/util/ActionLanguageDescriptionUtil.java
//
// WARNING:      Do not edit this generated file
// Generated by: ${info.arch_file_name}
// Version:      $$Revision: 1.5 $$
//
// (c) Copyright 2005-2013 by Mentor Graphics Corp.  All rights reserved.
//
//========================================================================
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
//======================================================================== 
//
import java.util.ArrayList;
import java.util.List;

import com.mentor.nucleus.bp.core.*;

/**
 *  This class holds a utility method to determine
 *  if a given class has a descrip attribute or
 *  the necessary action language attribute
 */
public class ActionLanguageDescriptionUtil {
 	public static boolean hasDescriptionAttribute(Class<?> clazz) {
.select many objs from instances of O_OBJ
.for each obj in objs
  .select any attr related by obj->O_ATTR[R102] where (selected.Name == "Descrip")
  .if(not_empty attr)
    .select one dba related by attr->O_BATTR[R106]->O_DBATTR[R107]
    .if(empty dba)
      .invoke gn = get_class_name(obj)
      .assign className = gn.body
		if(clazz == ${className}.class) {
			return true;
		}
    .end if
  .end if
.end for
		return false;
	}

 	public static boolean hasActionLanguageAttribute(Class<?> clazz) {
.select many objs from instances of O_OBJ
.for each obj in objs
  .select any attr related by obj->O_ATTR[R102] where (selected.Name == "Action_Semantics")
  .if(not_empty attr)
    .invoke gn = get_class_name(obj)
    .assign className = gn.body
		if(clazz == ${className}.class) {
			return true;
		}
  .end if
.end for
		return false;
	}
	
	public static String getDescriptionAttributeValue(Object element) {
.select many objs from instances of O_OBJ
.for each obj in objs
  .select any attr related by obj->O_ATTR[R102] where (selected.Name == "Descrip")
  .if(not_empty attr)
    .select one dba related by attr->O_BATTR[R106]->O_DBATTR[R107]
    .if(empty dba)
      .invoke gn = get_class_name(obj)
      .assign className = gn.body
		if(element instanceof ${className}) {
			return ((${className}) element).getDescrip();
		}
    .end if
  .end if
.end for	
		return "";
	}
	
	public static String getActionLanguageAttributeValue(Object element) {
.select many objs from instances of O_OBJ
.for each obj in objs
  .select any attr related by obj->O_ATTR[R102] where (selected.Name == "Action_Semantics")
  .if(not_empty attr)
    .invoke gn = get_class_name(obj)
    .assign className = gn.body
		if(element instanceof ${className}) {
			return ((${className}) element).getAction_semantics();
		}
  .end if
.end for
  		return "";
	}
	
	public static List<Class<?>> getClassesSupportingDescriptions() {
		List<Class<?>> classes = new ArrayList<Class<?>>();
.select many objs from instances of O_OBJ
.for each obj in objs
  .select any attr related by obj->O_ATTR[R102] where (selected.Name == "Descrip")
  .if(not_empty attr)
    .select one dba related by attr->O_BATTR[R106]->O_DBATTR[R107]
    .if(empty dba)
      .invoke gn = get_class_name(obj)
      .assign className = gn.body
		classes.add(${className}.class);
    .end if
  .end if
.end for
		return classes;
	}

	public static List<Class<?>> getClassesSupportingActionLanguage() {
		List<Class<?>> classes = new ArrayList<Class<?>>();
.select many objs from instances of O_OBJ
.for each obj in objs
  .select any attr related by obj->O_ATTR[R102] where (selected.Name == "Action_Semantics")
  .if(not_empty attr)
    .invoke gn = get_class_name(obj)
    .assign className = gn.body
		classes.add(${className}.class);
  .end if
.end for
		return classes;
	}
}
.//
.emit to file "src/com/mentor/nucleus/bp/core/util/ActionLanguageDescriptionUtil.java"
.//