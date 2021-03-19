MODULE shape_mod
 USE input_mod,ONLY: runend
 USE esets_mod,ONLY: nnode
 IMPLICIT NONE
 !INTEGER(kind=4),PARAMETER :: shape_nodes=3

CONTAINS
!******************************************************************************
!**         1-Dimension Shape Function Selector                              **
!******************************************************************************
! SUBROUTINE shape_1d_select(xi,N_shape,dN_shape)
!   IMPLICIT NONE
!   !--Dummy arguments
!   REAL(kind=8),INTENT(IN) :: xi
!   REAL(kind=8),ALLOCATABLE,DIMENSION(:),INTENT(OUT) :: N_shape,dN_shape
!   CHARACTER(len=5),INTENT(IN) :: ORDER
!
!   SELECT CASE (nnode)
!   CASE (2)
!     ALLOCATE(N_shape(2),dN_shape(2))
!     CALL linear_shape_1d(xi,N_shape,dN_shape)
!   CASE (3)
!     ALLOCATE(N_shape(3),dN_shape(3))
!     CALL quadratic_shape_1d(xi,N_shape,dN_shape)
!   CASE DEFAULT
!     CALL runend('SHAPE_FUNCTIONS: ORDER not implemented')
!   END SELECT
!******************************************************************************
!**         Linear Shape Functions 1-dimension                               **
!******************************************************************************
 SUBROUTINE linear_shape_1d(xi,N_shape,dN_shape)
   IMPLICIT NONE
   !--Dummy arguments
   REAL(kind=8),INTENT(IN) :: xi
   REAL(kind=8),INTENT(OUT) :: N_shape(2),dN_shape(2)
   !--Local arguments

   !functions
   N_shape(1) = 0.5d0*(1.d0-xi)
   N_shape(2) = 0.5d0*(1.d0+xi)
   !derivatives
   dN_shape(1) = -0.5d0
   dN_shape(2) = 0.5d0

 END SUBROUTINE linear_shape_1d
!******************************************************************************
!**         Quadratic Shape Functions 1-dimension                               **
!******************************************************************************
  SUBROUTINE quadratic_shape_1d(xi,N_shape,dN_shape)
    IMPLICIT NONE
    !--Dummy arguments
    REAL(kind=8),INTENT(IN) :: xi
    REAL(kind=8),INTENT(OUT) :: N_shape(3),dN_shape(3)
    !--Local arguments

    !functions
    N_shape(1) = 0.5d0*xi*(xi-1.d0)
    N_shape(2) = 1.d0-xi**2.d0
    N_shape(3) = 0.5d0*xi*(xi+1.d0)
    !derivatives
    dN_shape(1) = 0.5d0*(2.d0*xi-1.d0)
    dN_shape(2) = 1.d0-2.d0*xi
    dN_shape(3) = 0.5d0*(2.d0*xi+1.d0)

  END SUBROUTINE quadratic_shape_1d

END MODULE shape_mod
