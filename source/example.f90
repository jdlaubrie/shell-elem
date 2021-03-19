MODULE example
  USE ISO_C_BINDING
  IMPLICIT NONE

CONTAINS
  SUBROUTINE testf(vara,varb,varc) BIND(C)
    IMPLICIT NONE
    REAL(c_float),INTENT(IN) :: vara
    REAL(c_float),INTENT(OUT) :: varc,varb

    write(*,*) vara
    varb = vara*2.0
    varc = vara**2.0

  END SUBROUTINE testf
END MODULE example
