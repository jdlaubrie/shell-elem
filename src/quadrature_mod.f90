MODULE quadrature_mod
  USE input_mod,ONLY: runend
  IMPLICIT NONE

CONTAINS
!******************************************************************************
!**              Gaussian Quadrature (Point and coefficients)                **
!******************************************************************************
 SUBROUTINE gauscheb(ngauss,gpoin,gcoef)
  IMPLICIT NONE
  !--Dummy arguments
  INTEGER(kind=4),INTENT(IN) :: ngauss
  REAL(kind=8),INTENT(OUT) :: gpoin(ngauss),gcoef(ngauss)

  SELECT CASE (ngauss)
  CASE (1)
    gpoin=(/ 0.d0 /)
    gcoef=(/ 2.d0 /)
  CASE (2)
    gpoin=(/ -1.d0/SQRT(3.d0),1.d0/SQRT(3.d0) /)
    gcoef=(/ 1.d0,1.d0 /)
  CASE (3)
    gpoin=(/ -SQRT(3.d0/5.d0),0.d0,SQRT(3.d0/5.d0) /)
    gcoef=(/ 5.d0/9.d0,8.d0/9.d0,5.d0/9.d0 /)
  CASE DEFAULT                         !
    CALL runend('QUADRATURE: NGAUS not implemented')
  END SELECT
 END SUBROUTINE gauscheb

END MODULE quadrature_mod
