!******************************************************************************
!**                 MANAGER OF GROWTH AND REMODELING                         **
!******************************************************************************
MODULE history_mod         !replace gandr_mod module
 IMPLICIT NONE
 REAL(kind=8) :: gnr(4)
 REAL(kind=8),POINTER :: density(:,:,:,:), &    !(nelem,lgaus,tgaus,6) density by component
                       & sigma(:,:,:,:), &      !(nelem,lgaus,tgaus,7) stress by component
                       & sigma_h(:,:,:,:), &    !(nelem,lgaus,tgaus,7) homeos-stress by component
                       & remodeling(:,:,:,:), & !(nelem,lgaus,tgaus,5) stretch remodeling by com !1
                       & growth(:,:,:), &       !(nelem,lgaus,tgaus) total stretch growth        !1
                       & jacobian(:,:,:), &     !(nelem,lgaus,tgaus) determinant                 !1
                       & damage(:,:,:,:), &     !(nelem,lgaus,tgaus,12) damage and equiv energy
                       & xi0(:,:,:,:)           !(nelem,lgaus,tgaus,6) initial damage threshold
 REAL(kind=8),POINTER :: history(:,:,:,:)       !(nelem,lgaus,tgaus,30) historical array
 REAL(kind=8),POINTER :: contact(:,:) !(npoin,2)
END MODULE history_mod
