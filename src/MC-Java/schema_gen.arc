.//====================================================================
.//
.// File:      $$RCSfile: schema_gen.arc,v $$
.// Version:   $$Revision: 1.17 $$
.// Modified:  $$Date: 2013/01/10 23:16:26 $$
.//
.// (C) Copyright 1999-2013 Mentor Graphics Corporation  All Rights Reserved.
.//
.//====================================================================
.//
.// This archetype extracts the schema for a user model from a .gen
.// database, which is output as an SQL file suitable for use in a
.// subsequent gen_import for building an instance database.
.//
.//====================================================================
.invoke ext_env = GET_ENV_VAR( "TRANSLATE_FOR_EXTERNAL_USE" )
.assign external_use = ext_env.result
.if ( external_use == "TRUE" )
--========================================================================
--
-- File: metamodel_schema.sql
--
-- WARNING:      Do not edit this generated file
-- Generated by: ${info.arch_file_name}
-- Version:      $$Revision: 1.17 $$
--
--(c) Copyright 2005-2013 by Mentor Graphics Corp. All rights reserved.
--
--========================================================================
-- Licensed under the Apache License, Version 2.0 (the "License"); you may not
-- use this file except in compliance with the License.  You may obtain a copy
-- of the License at
--
--      http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
-- WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.   See the
-- License for the specific language governing permissions and limitations under
-- the License.
--======================================================================== 
--
.end if

.select many obj_set from instances of O_OBJ
.select any dt_inst from instances of S_DT
.for each ih_obj in obj_set
	.select one subsystem related by ih_obj->S_SS[R2]
	.assign translate = "${subsystem.descrip:TRANSLATE}"
	.assign objTranslate = "${ih_obj.descrip:TRANSLATE}"
	.assign trans_obj = true
    .if(((ih_obj.Key_Lett == "KEY") or (translate == "FALSE")) or (objTranslate == "FALSE") )
      .assign trans_obj = false
    .end if
	.assign translate_for_ext = "${subsystem.descrip:TRANSLATE_FOR_EXTERNAL_USE}"
    .if ((external_use == "TRUE") and (translate_for_ext == "FALSE"))
      .assign trans_obj = false
    .end if
	.assign translate_for_ext = "${ih_obj.descrip:TRANSLATE_FOR_EXTERNAL_USE}"
    .if ((external_use == "TRUE") and (translate_for_ext == "FALSE"))
      .assign trans_obj = false
    .end if
    .// do not translate non persistent objects
    .assign is_persistent_mark = "${ih_obj.descrip:Persistent}"
    .assign is_persistent = true
    .if(((is_persistent_mark == "FALSE") or (is_persistent_mark == "False")) or (is_persistent_mark == "false"))
      .assign is_persistent = false
    .end if
   .if( trans_obj and is_persistent)
CREATE TABLE $_{ih_obj.Key_Lett} (
	.// find the first attribute of the object
	.select many ih_attrs related by ih_obj->O_ATTR[R102]
	.for each ih_attr in ih_attrs
		.select one prevAttr related by ih_attr->O_ATTR[R103.'precedes'];
		.if (empty prevAttr) 
			.break for
		.end if
	.end for
	.//
   .assign comma_needed = false
   .while (not_empty ih_attr)
     .assign trans_attr = true
     .assign translate_for_ext = "${ih_attr.descrip:TRANSLATE_FOR_EXTERNAL_USE}"
	 .assign persistent = "${ih_attr.descrip:Persistent}"     
     .if (((external_use == "TRUE") and (translate_for_ext == "FALSE")) or (persistent == "false"))
       .assign trans_attr = false
     .end if
     .if ( trans_attr )
         .select one battr_inst related by ih_attr -> O_BATTR[R106]
         .if (not_empty battr_inst)
            .select one dt_inst related by ih_attr -> S_DT[R114]
         .else
            .select one ba_in related by ih_attr -> O_RATTR[R106] -> O_BATTR[R113]
            .select one dt_inst related by ba_in -> O_ATTR[R106] -> S_DT[R114]
         .end if  
         .select one udt related by dt_inst->S_UDT[R17]
         .if (not_empty udt)
           .select one dt_inst related by udt->S_CDT[R18]->S_DT[R17]
         .end if
         .if (comma_needed and ((dt_inst.Name != "state<State_Model>") or (external_use != "TRUE")))
,
         .end if
         .if(dt_inst.Name == "integer")
	     $_{ih_attr.Name}	INTEGER\
         .elif(dt_inst.Name == "boolean")
           .if ( external_use == "TRUE" )
	     $_{ih_attr.Name}	INTEGER\
           .else
	     $_{ih_attr.Name}	BOOLEAN\
	       .end if
         .elif (dt_inst.Name == "string")
	     $_{ih_attr.Name}	STRING\
         .elif (dt_inst.Name == "unique_id")
	     $_{ih_attr.Name}	UNIQUE_ID\
         .elif (dt_inst.Name == "inst_ref<Mapping>")
	     $_{ih_attr.Name}	INTEGER\
	     .elif (dt_inst.Name == "state<State_Model>")
           .if ( external_use == "TRUE" )
             .// output nothing
           .else
	     $_{ih_attr.Name}	INTEGER\
	       .end if
	     .elif (dt_inst.Name == "real")
	     $_{ih_attr.Name}	REAL\
         .else
           .select one edt_inst related by dt_inst->S_EDT[R17]
           .if ( not_empty edt_inst )
	     $_{ih_attr.Name}	INTEGER\
           .else
         $_{ih_attr.Name}	STRING\
           .end if
         .end if
       .assign comma_needed = true
     .end if   .//  trans_attr 
		.//
		.// proceed to the next attribute of the object
		.select one ih_attr related by ih_attr->O_ATTR[R103.'succeeds']
   .end while
 );
   .end if
.end for

.select many rels from instances of R_REL
.for each rel_inst in rels
	.assign found_rel = false
	.assign trans_rel = true
	.select one subsystem related by rel_inst->S_SS[R4]
	.assign translate = "${subsystem.descrip:TRANSLATE}"
    .if (translate == "FALSE")
      .assign trans_rel = false
    .end if
	.assign translate_for_ext = "${subsystem.descrip:TRANSLATE_FOR_EXTERNAL_USE}"
    .if ((external_use == "TRUE") and (translate_for_ext == "FALSE"))
      .assign trans_rel = false
    .end if
    .assign is_persistent = true
    .assign is_persistent_mark = "${rel_inst.descrip:Persistent}"
    .if(((is_persistent_mark == "FALSE") or (is_persistent_mark == "False")) or (is_persistent_mark == "false"))
      .assign is_persistent = false
    .end if
	.select many part_objects related by rel_inst->R_OIR[R201]->O_OBJ[R201]
	.for each part_object in part_objects
	  .assign objTranslate = "${part_object.descrip:TRANSLATE}"
	  .if (objTranslate == "FALSE")
	    .assign trans_rel = false
	  .end if
	  .assign translate_for_ext = "${part_object.descrip:TRANSLATE_FOR_EXTERNAL_USE}"
      .if ((external_use == "TRUE") and (translate_for_ext == "FALSE"))
        .assign trans_rel = false
      .end if
      .assign is_persistent_mark = "${part_object.descrip:Persistent}"
      .if(((is_persistent_mark == "FALSE") or (is_persistent_mark == "False")) or (is_persistent_mark == "false"))
        .assign is_persistent = false
      .end if
	.end for
	.if ((trans_rel == true) and (is_persistent))
.// ********************************************************
.// Simple relationship processing
.// *********************************************************
	.select one rel related by rel_inst -> R_SIMP[R206]
	.if ( not_empty rel )
		.assign found_rel = true
		.select one l_side related by rel -> R_FORM[R208]
		.if (empty l_side)
			.print "Warning: Relationship R${rel_inst.Numb} not formalised, ignoring . . . "
		.else
			.select one r_side related by rel -> R_PART[R207]
			.select one r_obj related by r_side -> R_RTO[R204] -> R_OIR[R203] -> O_OBJ[R201]
			.select one l_obj related by l_side -> R_RGO[R205] -> R_OIR[R203] -> O_OBJ[R201]
			.if ( (l_side.Mult == 0) and (l_side.Cond == 0) )
CREATE ROP REF_ID R$_{rel_inst.Numb} FROM 1  	$_{l_obj.Key_Lett}	( \
			.elif ( (l_side.Mult == 0) and (l_side.Cond == 1) )
CREATE ROP REF_ID R$_{rel_inst.Numb} FROM 1C 	$_{l_obj.Key_Lett} 	( \
			.elif ( (l_side.Mult == 1) and (l_side.Cond == 0) )
CREATE ROP REF_ID R$_{rel_inst.Numb} FROM M 	$_{l_obj.Key_Lett} 	( \
			.elif ( (l_side.Mult == 1) and (l_side.Cond == 1) )
CREATE ROP REF_ID R$_{rel_inst.Numb} FROM MC 	$_{l_obj.Key_Lett} 	( \
			.end if	
			.assign com = false
			.select many o_r_set related by r_side -> R_RTO[R204] -> O_RTIDA[R110]
			.for each o_r_inst in o_r_set
				.if ( com )
 , \
				.end if
				.select one att related by o_r_inst -> O_REF[R111] -> O_RATTR[R108] -> O_ATTR[R106]
$_{att.Name}\
				.assign com = true
			.end for
			.if (r_obj.Obj_ID == l_obj.Obj_ID)
 )  PHRASE '$_{r_side.Txt_Phrs}'
			.else
 )
			.end if
			.if ( (r_side.Mult == 0) and (r_side.Cond == 0) )
		         TO 1  	$_{r_obj.Key_Lett} 	( \
			.elif ( (r_side.Mult == 0) and (r_side.Cond == 1) )
		         TO 1C  $_{r_obj.Key_Lett} 	( \
			.elif ( (r_side.Mult == 1) and (r_side.Cond == 0) )
		         TO M  	$_{r_obj.Key_Lett} 	( \
			.elif ( (r_side.Mult == 1) and (r_side.Cond == 1) )
		         TO MC  $_{r_obj.Key_Lett} 	( \
			.end if	
			.assign com = false
			.for each o_r_inst in o_r_set
				.if ( com )
 , \
				.end if
				.select one att related by o_r_inst -> O_OIDA[R110] -> O_ATTR[R105]
$_{att.Name}\
				.assign com = true
			.end for
			.if (r_obj.Obj_ID == l_obj.Obj_ID)
 )  PHRASE '$_{l_side.Txt_Phrs}';
			.else
 );
			.end if
		.end if
	.end if							
.// **************************************************************
.// Supertype/subtype processing
.// **************************************************************
	.if (not found_rel )
	.select one rel_sup related by rel_inst -> R_SUBSUP[R206]
	.if ( not_empty rel_sup )
	.assign found_rel = true
		.select one r_side related by rel_sup -> R_SUPER[R212]
		.select many l_side_set related by rel_sup -> R_SUB[R213]
		.select one r_obj related by r_side -> R_RTO[R204] -> R_OIR[R203] -> O_OBJ[R201]
		.for each l_side in l_side_set
			.select one l_obj related by l_side -> R_RGO[R205] -> R_OIR[R203] -> O_OBJ[R201]
CREATE ROP REF_ID R$_{rel_inst.Numb} FROM 1C 	$_{l_obj.Key_Lett} 	( \
			.assign com = false
			.select many o_r_set related by r_side -> R_RTO[R204] -> O_RTIDA[R110]
			.for each o_r_inst in o_r_set
				.if ( com )
 , \
				.end if
				.select one o_ref_in  related by o_r_inst -> O_REF[R111] where ( selected.Obj_ID == l_side.Obj_ID )
				.select one att related by o_ref_in -> O_RATTR[R108] -> O_ATTR[R106]
$_{att.Name}\
				.assign com = true
			.end for
 )
		     TO 1  	$_{r_obj.Key_Lett} 	( \
			.assign com = false
			.for each o_r_inst in o_r_set
				.if ( com )
 , \
				.end if
				.select one att related by o_r_inst -> O_OIDA[R110] -> O_ATTR[R105]
$_{att.Name}\
				.assign com = true
			.end for
 );
		.end for
	.end if
	.end if
.// ********************************************************
.// Associative relationship processing
.// *********************************************************
	.if ( not found_rel )
		.select one rel_asc related by rel_inst -> R_ASSOC[R206]
		.if ( not_empty rel_asc )
		.assign found_rel = true
		.select one obj_as_assr related by rel_asc -> R_ASSR[R211]
		.select one asc_obj related by obj_as_assr -> R_RGO[R205] -> R_OIR[R203] -> O_OBJ[R201]
		.select one r_side related by rel_asc -> R_AONE[R209]
		.select one r_obj related by r_side -> R_RTO[R204] -> R_OIR[R203] -> O_OBJ[R201]
		.select one l_side related by rel_asc -> R_AOTH[R210]
		.select one l_obj related by l_side -> R_RTO[R204] -> R_OIR[R203] -> O_OBJ[R201]
		.assign mult = 0
		.//
		.// Force multiplicity to Many for M-(x:x)
		.//
		.if (obj_as_assr.Mult == 1)
		    .assign mult = 1
		.else
		    .assign mult = l_side.Mult
		.end if
		.// 
		.// Yes, it looks backwards but it isn't.  The mult and cond
		.// of the left-side object determines the mult and cond
		.// from the right-side object to the associative object.
		.// Toward the objects in the relationship it is always 
		.// one unconditional (if there is an instance of the assoc
		.// object then it is pointing to something).
		.//
		.if ( (mult == 0) and (l_side.Cond == 0) )
CREATE ROP REF_ID R$_{rel_inst.Numb} FROM 1  	$_{asc_obj.Key_Lett} 	( \
		.elif ( (mult == 0) and (l_side.Cond == 1) )
CREATE ROP REF_ID R$_{rel_inst.Numb} FROM 1C 	$_{asc_obj.Key_Lett} 	( \
		.elif ( (mult == 1) and (l_side.Cond == 0) )
CREATE ROP REF_ID R$_{rel_inst.Numb} FROM M 	$_{asc_obj.Key_Lett} 	( \
		.elif ( (mult == 1) and (l_side.Cond == 1) )
CREATE ROP REF_ID R$_{rel_inst.Numb} FROM MC 	$_{asc_obj.Key_Lett} 	( \
		.end if	
		.assign com = false
		.select many o_r_set related by r_side -> R_RTO[R204] -> O_RTIDA[R110]
		.for each o_r_inr in o_r_set
			.if ( com )
 , \
			.end if
			.select one att_r related by o_r_inr -> O_REF[R111] -> O_RATTR[R108] -> O_ATTR[R106]
$_{att_r.Name}\
			.assign com = true
		.end for
 )
		         TO 1  	$_{r_obj.Key_Lett} 	( \
		.assign com = false
		.for each o_r_inst in o_r_set
			.if ( com )
 , \
			.end if
			.select one att related by o_r_inst -> O_OIDA[R110] -> O_ATTR[R105]
$_{att.Name}\
			.assign com = true
		.end for
		.if (r_obj.Obj_ID == l_obj.Obj_ID)
 )  PHRASE '$_{r_side.Txt_Phrs}';
		.else
 );
		.end if
		.if (obj_as_assr.Mult == 1)
		    .assign mult = 1
		.else
		    .assign mult = r_side.Mult
		.end if
		.if ( (mult == 0) and (r_side.Cond == 0) )
CREATE ROP REF_ID R$_{rel_inst.Numb} FROM 1  	$_{asc_obj.Key_Lett} 	( \
		.elif ( (mult == 0) and (r_side.Cond == 1) )
CREATE ROP REF_ID R$_{rel_inst.Numb} FROM 1C 	$_{asc_obj.Key_Lett} 	( \
		.elif ( (mult == 1) and (r_side.Cond == 0) )
CREATE ROP REF_ID R$_{rel_inst.Numb} FROM M 	$_{asc_obj.Key_Lett} 	( \
		.elif ( (mult == 1) and (r_side.Cond == 1) )
CREATE ROP REF_ID R$_{rel_inst.Numb} FROM MC 	$_{asc_obj.Key_Lett} 	( \
		.end if	
		.assign com = false
		.select one r_rto_inst related by l_side -> R_RTO[R204]
		.select many o_r_set related by r_rto_inst -> O_RTIDA[R110]
		.for each o_r_inst in o_r_set
			.if ( com )
 , \
			.end if
			.select one att related by o_r_inst -> O_REF[R111] -> O_RATTR[R108] -> O_ATTR[R106]
$_{att.Name}\
			.assign com = true
		.end for
 )
		         TO 1  	$_{l_obj.Key_Lett} 	( \
		.assign com = false
		.select one r_rto_inst related by l_side -> R_RTO[R204]
		.select many o_r_set related by r_rto_inst -> O_RTIDA[R110]
		.for each o_r_inst in o_r_set
			.if ( com )
 , \
			.end if
			.select one att related by o_r_inst -> O_OIDA[R110] -> O_ATTR[R105]
$_{att.Name}\
			.assign com = true
		.end for
		.if (r_obj.Obj_ID == l_obj.Obj_ID)
 )  PHRASE '$_{l_side.Txt_Phrs}';
		.else
 );
		.end if
	.end if	
	.end if						
.// ********************************************************
.// Composition relationship processing
.// *********************************************************
	.if ( not found_rel )
		.select one rel_comp related by rel_inst -> R_COMP[R206]
		.if ( not_empty rel_comp )
		.end if
	.end if
  .end if
.end for

.select any domain from instances of S_DOM
.assign outfile_name = domain.Name
.emit to file "${outfile_name}_schema.sql"

