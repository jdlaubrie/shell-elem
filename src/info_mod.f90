MODULE info_mod
 IMPLICIT NONE
!nodal point information
 INTEGER(kind=4),POINTER :: ifpre1(:,:), & !(nmdof,npoin) Associated equation to each DOF's
                          & ifpre2(:,:), & !(ndime,npoin) Associated equation to each DOF's
                          & nodelem(:,:)   !(nelem,nnode) Conectivity   !ATTENTION
 REAL(kind=8),POINTER :: coord(:,:), &     !(ndime,npoin) original coordinates
                       & coorc(:,:), &     !(ndime,npoin) current coordinates
                       & coora(:,:), &     !(ndime,npoin) previous coordinates
                       & displ(:,:), &     !(nmdof,npoin) general displacements
                       & stres(:,:,:,:), &   !(direc,nelem,ngaus,ngaus) cauchy stress by e and g
                       & stran(:,:,:,:), &   !(direc,nelem,ngaus,ngaus) strain by e and g
                       & lambd(:,:,:,:), &   !(direc,nelem,ngaus,ngaus) stretch by e and g
                       & thick(:,:,:), &   !(nelem,ngaus,3) thickness by e and M,A,total
                       & BounDisp(:,:), &  !(nmdof,npoin) boundary displacement
                       & Force(:,:)     !(nmdof,npoin) External Forces
!thickness
 REAL(kind=8) :: thick0, &  !thickness of the artery wall
               & ratio0     !media/adventitia ratio in thickness
END MODULE info_mod
