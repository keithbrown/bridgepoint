.//====================================================================
.//
.//  Purpose: This function connects imported classes into the system
.//    being translated by looking for empty packages that have a
.//    description field with a name that matches a real package.
.//====================================================================
.//
.function connect_imported_pkgs
    .select any s_sys from instances of S_SYS
    .select many ep_pkgs related by s_sys->EP_PKG[R1405]
    .for each ep_pkg in ep_pkgs
      .// Get the packages that are empty (having no elements inside).
      .select any pe_pe related by ep_pkg->PE_PE[R8000]
      .if ( empty pe_pe )
        .// We found an empty package, now check to see if it is marked as imported.
        .if ( "" != ep_pkg.Descrip )
          .select any imported_ep_pkg from instances of EP_PKG where ( selected.Name == ep_pkg.Descrip )
          .if ( not_empty imported_ep_pkg )
        	.print "Connecting imported package ${imported_ep_pkg.Name} in place of ${ep_pkg.Name}\n"
            .// We found a package that has a name as specified in the embedded package Descrip.
            .// Disconnect the embedded package.  Relate the imported package.
            .select one other_s_sys related by imported_ep_pkg->S_SYS[R1401]
            .if ( not_empty other_s_sys )
              .// unrelate imported_ep_pkg from s_sys across R1401;
              .assign imported_ep_pkg.Sys_ID = 0
              .// end unrelate
              .// relate imported_ep_pkg to s_sys across R1401;
			  .// TODO (SKB) - I'm not sure this re-relate should be here.  MC-3020 doesn't do it, I added it
			  .//    because I thought it should exist.  Also need to consider if we should do something with
			  .//    R1405 on imported_ep_pkg...
              .assign imported_ep_pkg.Sys_ID = s_sys.Sys_ID
              .// end relate
            .end if
            .select one pe_pe related by ep_pkg->PE_PE[R8001]
            .// unrelate pe_pe from ep_pkg across R8001;
            .assign pe_pe.Element_ID = 0
            .// end unrelate
            .// relate pe_pe to imported_ep_pkg across R8001;
            .assign pe_pe.Element_ID = imported_ep_pkg.Package_ID
            .// end relate
          .end if
        .end if
      .end if
    .end for
.end function
.//
