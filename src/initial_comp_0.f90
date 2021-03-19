SUBROUTINE initial_comp_0()
 USE input_mod, ONLY: lures,runend
 USE info_mod, ONLY: coord,displ,stres,stran,lambd,nodelem,thick0,thick
 USE ctrl_mod, ONLY: ndime,npoin,nelem,nmdof,ngaus
 USE esets_mod
 USE history_mod
 IMPLICIT NONE
 INTEGER(kind=4) :: ieset,i1,i2
 REAL(kind=8) :: x(ndime,nnode),l0,dir(ndime)     !ATTENTION
 TYPE(element00),POINTER :: e
 TYPE(setelem00),POINTER :: elset
!******************************************************************************
!**          Compute length cosines of elements                              **
!******************************************************************************
 elset => elsetlist%head
 DO ieset=1,elsetlist%noelset
 e => elset%head
 DO i1=1,elset%nelem
   !gathers the initial coordinates and local coordinate transf.
   x  = coord(1:ndime,e%nodelem)
   !get initial length
   l0 = 0.d0
   DO i2=1,ndime
     l0 = l0 + (x(i2,nnode)-x(i2,1))**2.d0
   END DO
   l0 = SQRT(l0)
   !get directions
   dir = 0.d0
   DO i2=1,ndime
     dir(i2) = (x(i2,nnode)-x(i2,1))/l0
   END DO
   IF (l0<=0.d0) WRITE(lures,100,ERR=999) e%numelem,e%length
   e%length = l0
   e%cosdir(1) = dir(2)  !(r2-r1)/l0 or cos
   e%cosdir(2) = dir(1)  !(z2-z1)/l0 or sin
   e => e%next
 END DO
   elset => elset%next
 END DO
!******************************************************************************
!**                   Initializes variables                                  **
!******************************************************************************
 ALLOCATE(displ(nmdof,npoin),nodelem(nelem,nnode))
 ALLOCATE(stres(2,nelem,ngaus,2*ngaus),stran(3,nelem,ngaus,2*ngaus),lambd(3,nelem,ngaus,2*ngaus))
 ALLOCATE(sigma(nelem,ngaus,2*ngaus,7),sigma_h(nelem,ngaus,2*ngaus,7))
 ALLOCATE(remodeling(nelem,ngaus,2*ngaus,5),growth(nelem,ngaus,2*ngaus))
 ALLOCATE(density(nelem,ngaus,2*ngaus,6),jacobian(nelem,ngaus,2*ngaus))
 ALLOCATE(damage(nelem,ngaus,2*ngaus,12),xi0(nelem,ngaus,2*ngaus,6),history(nelem,ngaus,2*ngaus,32))
 ALLOCATE(thick(nelem,ngaus,3),contact(npoin,2))
 displ = 0.d0
! coorc = coord
! coora = coord
 stres = 0.d0
 stran = 0.d0
 lambd = 1.d0
 nodelem = 0
 sigma_h = 0.d0
 damage = 0.d0
 xi0 = 0.d0
 history = 0.d0
 contact = 0.d0
 thick(:,:,1) = thick0*0.42
 thick(:,:,2) = thick0*0.58
 thick(:,:,3) = thick0

 WRITE(*,"(10x,'*** GENERAL INITIALIZATION COMPLETED ***',/)")

 RETURN
 100 FORMAT(' null length for element',i5,' jacobian = ',e12.4)
 999 CALL runend('Full memory')
END SUBROUTINE initial_comp_0
