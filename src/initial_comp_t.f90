SUBROUTINE initial_comp_t(fxhead,nfix)
 USE input_mod, ONLY: runend
 USE info_mod, ONLY: ifpre1,BounDisp,Force
 USE ctrl_mod, ONLY: npoin,nmdof,noeq,nvfix
 USE step_mod,ONLY: fix_node
 IMPLICIT NONE
 !--Dummy arguments
 INTEGER(kind=4),INTENT(IN) :: nfix
 TYPE(fix_node),TARGET :: fxhead
 !--Local arguments
 INTEGER(kind=4) :: i1,i2,i3,ipoin,kfix(nmdof)
 REAL(kind=8) :: disp(nmdof)
 TYPE(fix_node),POINTER :: fix
!******************************************************************************
!**     Compute number of equations and apply boundary conditions            **
!******************************************************************************
 !deallocate some arrays (clean)
 IF (associated(ifpre1)) DEALLOCATE(ifpre1)
! IF (associated(ifpre2)) DEALLOCATE(ifpre2)
 ALLOCATE(ifpre1(nmdof,npoin),BounDisp(nmdof,npoin),Force(nmdof,npoin))
 !initializes IFPRE1 and IFPRE2 arrays
 ifpre1 = 0                        !initialize boundary control
! ifpre2 = 0
 BounDisp = 0.d0                   !initialize boundary displacements
! Force = 0.d0                      !initialize External Forces
 nvfix = 0                         !initialize number of fixes values
 !***Apply fixities
 fix => fxhead               !point to fist node in the list
 DO i1=1,nfix              !for each node in the list
    ipoin = fix%label              !node number
    kfix = fix%iffix(1:nmdof)      !restriction codes
    disp = fix%disp(1:nmdof)
    DO i2=1,nmdof                  !for each DOF
      IF (kfix(i2)==1) THEN
        nvfix = nvfix + 1          !increase number of fixed values
        ifpre1(i2,ipoin) = -nvfix  !assign a position
      END IF
    END DO
    BounDisp(1:nmdof,ipoin) = disp(1:nmdof)
    fix => fix%next                !point to next node in the list
 END DO

 !**Assign number to active equations
 noeq = 0                          !initializes number of equations
 DO i1=1,npoin
   DO i2=1,nmdof
     IF (ifpre1(i2,i1)==0) THEN
       noeq = noeq + 1
       ifpre1(i2,i1) = noeq
     END IF
   END DO
 END DO

 WRITE(*,"(10x,'*** STEP INITIALIZATION COMPLETED ***')")

 RETURN
 999 CALL runend('Full memory')
END SUBROUTINE initial_comp_t
