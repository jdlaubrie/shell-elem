SUBROUTINE iteration(NSTEP,miter,tol,ldhead,nsload,time,dtime)
 USE param_mod,ONLY: midn
 USE input_mod,ONLY: lures,runend
 USE ctrl_mod,ONLY: nmdof,npoin,noeq,nvfix
 USE info_mod,ONLY: ifpre1,coord,coorc,BounDisp,Force,displ
 USE step_mod,ONLY: setload
 USE history_mod
 IMPLICIT NONE
 !--Dummy arguments
 INTEGER(kind=4),INTENT(IN) :: miter,nsload
 REAL(kind=8),INTENT(IN) :: tol,time(2),dtime
 CHARACTER(len=midn),INTENT(IN) :: NSTEP
 TYPE(setload),TARGET :: ldhead
 !--Local arguments
 INTEGER(kind=4) :: iter,i1,i2
 REAL(kind=8) :: Kaa(noeq,noeq),kab(noeq,nvfix),kba(nvfix,noeq)
 REAL(kind=8) :: kbb(nvfix,nvfix),Kaa_inv(noeq,noeq)
 REAL(kind=8) :: Ra(noeq),Rb(nvfix),Fa(noeq),Fb(nvfix)
 REAL(kind=8) :: dispa(noeq),dispb(nvfix),Ddisp(nmdof,npoin)
 REAL(kind=8) :: beta,criteria,control

 iter = 1               !initializes iterations
 DO
   IF (iter>miter) CALL runend('ITERATION: Not converged') !check iterations
   !bring historical variables at the beginin of every iteration
   DO i1=1,6
     density(:,:,:,i1) = history(:,:,:,i1)
   END DO
   DO i1=1,7
     sigma(:,:,:,i1) = history(:,:,:,i1+6)
   END DO
   DO i1=1,5
     remodeling(:,:,:,i1) = history(:,:,:,i1+13)
   END DO
   growth(:,:,:) = history(:,:,:,19)
   jacobian(:,:,:) = history(:,:,:,20)
   DO i1=1,6
     damage(:,:,:,i1) = history(:,:,:,20+i1)
     damage(:,:,:,6+i1) = history(:,:,:,26+i1)
   END DO
   !counter of iterations and steps
   WRITE(lures,"(/,2X,'TIME: ',A,2X,'STEP: ',F9.3,2X,'FRAME: ',F6.3,2X,'Iteration: ',I4)") &
           &NSTEP,time(1)+time(2),time(2),iter
   !Previous displacements
   Ddisp = BounDisp*dtime              !initialize delta disp
!   displ = displ + Ddisp
   DO i1=1,nmdof
     DO i2=1,npoin
       IF (ifpre1(i1,i2)>0) THEN
         dispa(ifpre1(i1,i2)) = Ddisp(i1,i2)
       ELSE IF (ifpre1(i1,i2)<0) THEN
         dispb(-ifpre1(i1,i2)) = Ddisp(i1,i2)
       END IF
     END DO
   END DO
   CALL assembler(NSTEP,ldhead,nsload,time,dtime,Kaa,Kab,Kba,Kbb,Ra,Rb,Fa,Fb)  !get problem arrays
   Ra = -Ra                                                 !from newton schedule Ku+R=0
   Rb = -Rb                                                 !from newton schedule Ku+R=0
!-------------Solving of problem----------------
   CALL inverse(Kaa,noeq,Kaa_inv)
   dispa = MATMUL(Kab,dispb)
   dispa = Ra - dispa
   dispa = MATMUL(Kaa_inv,dispa)
   Rb = MATMUL(Kba,dispa) + MATMUL(Kbb,dispb)
   Fb = -Rb
   !write(*,*) Ra
   !write(*,*) Rb
!------------New displacements---------------
   DO i1=1,nmdof
     DO i2=1,npoin
       IF (ifpre1(i1,i2)>0) THEN
         Ddisp(i1,i2) = dispa(ifpre1(i1,i2))
         displ(i1,i2) = displ(i1,i2) + dispa(ifpre1(i1,i2))
         Force(i1,i2) = Force(i1,i2) + Fa(ifpre1(i1,i2))
       ELSE IF (ifpre1(i1,i2)<0) THEN
         Ddisp(i1,i2) = dispb(-ifpre1(i1,i2))
         Force(i1,i2) = Force(i1,i2) + Fb(ifpre1(i1,i2))
       END IF
     END DO
   END DO
   WRITE(lures,"(/,5X,' Nodal displacements: ')",ERR=999)
   WRITE(lures,"(5X,' Node    S-direction    N-direction ')",ERR=999)
   DO i1=1,npoin
     WRITE(lures,"(4X,I5,3F18.10)") i1,displ(1:nmdof,i1)
   END DO
!------------Analysis of convergence------------
   criteria = 0.d0
  ! control = 0.d0
  ! DO i1=1,npoin
  !   DO i2=1,2
  !     criteria = criteria + Ddisp(i2,i1)**2.d0
  !     control = control + displ(i2,i1)**2.d0
  !   END DO
  ! END DO
   DO i1=1,noeq
     criteria = criteria + Ra(i1)**2.d0
   END DO
   DO i1=1,nvfix
     criteria = criteria + Rb(i1)**2.d0
   END DO
   criteria = SQRT(criteria)!/SQRT(control)
   WRITE(lures,"(/,3X,' Force Error: ',E12.6)",ERR=999) criteria
   IF (criteria<tol) THEN
     !update historical variables after get convergence
     DO i1=1,6
       history(:,:,:,i1) = density(:,:,:,i1)
     END DO
     DO i1=1,7
       history(:,:,:,i1+6) = sigma(:,:,:,i1)
     END DO
     DO i1=1,5
       history(:,:,:,i1+13) = remodeling(:,:,:,i1)
     END DO
     history(:,:,:,19) = growth(:,:,:)
     history(:,:,:,20) = jacobian(:,:,:)
     DO i1=1,6
       history(:,:,:,20+i1) = damage(:,:,:,i1)
       history(:,:,:,26+i1) = damage(:,:,:,6+i1)
     END DO
     EXIT
   END IF
   iter = iter + 1                                          !count interations
 END DO                    !end of cycle for iterations

 WRITE(*,"(' TIME: ',A,2X,'STEP: ',F9.3,2X,'FRAME: ',F6.3,2X,' Iterations:',I4)") &
         & NSTEP,time(1)+time(2),time(2),iter
 !update coordinates
 !here i should work the rotation of the element to transform between
 !local coordinates to global coordinates, now there is no problem
 !with rotation, everything is in the same line
 DO i1=1,npoin
   coorc(1,i1) = coord(1,i1) + displ(1,i1)!*cosd(2) - disp(2,i1)*cosd(1)
   coorc(2,i1) = coord(2,i1) + displ(2,i1)!*cosd(1) + disp(2,i1)*cosd(2)
 END DO

!arrays to nodes type, see geometry routine
! nodes => nodelist%head             !go to top of the list of nodes
! DO i1=1,npoin                      !for each node in the list
!   nodes%coorc(1:ndime) = coorc(1:ndime,nodes%label)   !current coordinates
!   nodes => nodes%next              !next node in the list
! END DO

 RETURN
 999 CALL runend('FULL MEMORY')
END SUBROUTINE iteration
