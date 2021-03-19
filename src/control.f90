SUBROUTINE control()
 USE input_mod,ONLY: listen,words,exists,runend,getint,getrea,lures
 USE ctrl_mod,ONLY: ndime,nmdof,ngaus,penal
 IMPLICIT NONE

 CALL listen('CONTROL')
 IF (.not.exists('CONTROL')) CALL runend('CONTROL: CONTROL DATA BLOCK EXPECTED')
 WRITE (lures,"(/,' C O N T R O L   D A T A ',/)",ERR=999)
 !read CONTROL block
 DO
   CALL listen('CONTROL')
   IF (exists('ENDCONT')) EXIT
   ndime=getint('NDIME',2,' Number of Dimensions ...')
   nmdof=getint('NMDOF',3,' Number of Mech. Degrees of Freedom ...')
   ngaus=getint('NGAUS',4,' Number of Integration Points ...')
   penal=getrea('PENAL',0.d0,' Shear Strain Penalty ...')
 END DO

 RETURN
 999 CALL runend('FULL MEMORY')
END SUBROUTINE control
