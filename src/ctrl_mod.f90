MODULE ctrl_mod
 IMPLICIT NONE
 !problem parameters
 INTEGER(kind=4) :: npoin, &  !number of points in the mesh
                  & nelem, &  !number of elements in the mesh
                  & ndime, &  !number of dimensions
                  & nmdof, &  !number of mechanical degrees of freedom
                  & ngaus, &  !number of gauss point or integration points
                  & noeq,  &  !number of active equations
                  & nvfix, &  !number of non active equation
                  & nteq,  &  !number of total equations
                  & nstatev !number of state variables
 !criteria
 REAL(kind=8) :: penal  !shear strain penalty

END MODULE ctrl_mod
