SUBROUTINE datainp()
 USE input_mod,ONLY: ludat
 USE step_mod,ONLY: tmstep
 !USE input_mod,ONLY: ludat
 IMPLICIT NONE
 !control data
 CALL control()
 !geometry data
 CALL geometry()
 !material data
 CALL material()
 !read time step schemas
 CALL tmstep()
 !close input file
 CLOSE(ludat)
 WRITE(*,"(15x,'*** READING COMPLETED ***',/)")

END SUBROUTINE datainp
