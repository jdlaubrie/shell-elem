SUBROUTINE output(NSTEP,tstep,kstep,x)
 USE param_mod,ONLY: midn
 USE input_mod,ONLY: luden,lustr,lugnr,ludam,luloa
 USE ctrl_mod,ONLY: nelem,ngaus,npoin
 USE info_mod,ONLY: nodelem,Force
 USE history_mod,ONLY: history
 IMPLICIT NONE
 !--Dummy arguments
 INTEGER,INTENT(IN) :: tstep,kstep
 REAL(kind=8),INTENT(IN) :: x(ngaus)
 CHARACTER(len=midn),INTENT(IN) :: NSTEP
 !--Local variables
 INTEGER :: ielem,igaus,jgaus,ipoin
 REAL(kind=8) :: hiscen(nelem,ngaus,32),hisnod(npoin,32)

!     write(*,*) history(:,:,:,1)
 hisnod = 0.d0
 DO ielem=1,nelem
   DO igaus=1,ngaus
   !compute values in gauss point along the element
     hiscen(ielem,igaus,:) = 0.d0
     DO jgaus=1,ngaus
       hiscen(ielem,igaus,:) = history(ielem,igaus,jgaus,:) + hiscen(ielem,igaus,:)
!       write(*,*) history(ielem,igaus,jgaus,21:26)
     END DO
     hiscen(ielem,igaus,:) = hiscen(ielem,igaus,:)/REAL(ngaus)
!     write(*,*) hiscen(ielem,igaus,21:32)
   END DO
   !compute values by node
   hisnod(nodelem(ielem,1),:) = (hiscen(ielem,2,:)*(x(1)+1.d0) &
           & - hiscen(ielem,1,:)*(x(2)+1.d0))/(x(1)-x(2))
   hisnod(nodelem(ielem,2),:) = 2.d0*(hiscen(ielem,2,:)-hiscen(ielem,1,:))/(x(2)-x(1)) &
           & + (hiscen(ielem,2,:)*(x(1)+1.d0)-hiscen(ielem,1,:)*(x(2)+1.d0))/(x(1)-x(2))
!   write(*,*) hisnod(nodelem(ielem,1),21:26)
!   write(*,*) hisnod(nodelem(ielem,2),21:26)
 END DO
 !print densities
 WRITE(luden,"(5X,'TIME: ',A,I4,5X,'STEP: ',I4)") NSTEP,tstep,kstep
 DO ipoin=1,npoin
   WRITE(luden,"(I4,6F9.3)") ipoin,hisnod(ipoin,1:6)
 END DO
 !print fiber stress
 WRITE(lustr,"(5X,'TIME: ',A,I4,5X,'STEP: ',I4)") NSTEP,tstep,kstep
 DO ipoin=1,npoin
   WRITE(lustr,"(I4,7F12.3)") ipoin,hisnod(ipoin,7:13)
 END DO
 !print remodeling
 WRITE(lugnr,"(5X,'TIME: ',A,I4,5X,'STEP: ',I4)") NSTEP,tstep,kstep
 DO ipoin=1,npoin
   WRITE(lugnr,"(I4,7F12.6)") ipoin,hisnod(ipoin,14:20)
 END DO
 !print damage
 WRITE(ludam,"(5X,'TIME: ',A,I4,5X,'STEP: ',I4)") NSTEP,tstep,kstep
 DO ipoin=1,npoin
   WRITE(ludam,"(I4,6F9.5,6F9.3)") ipoin,hisnod(ipoin,21:32)
 END DO
 !print external forces
 WRITE(luloa,"(5X,'TIME: ',A,I4,5X,'STEP: ',I4)") NSTEP,tstep,kstep
 DO ipoin=1,npoin
   WRITE(luloa,"(I4,3F9.5)") ipoin,Force(:,ipoin)
 END DO
END SUBROUTINE output
