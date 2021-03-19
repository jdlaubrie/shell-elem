MODULE model_mod      !replace constitutive subroutine
 USE param_mod,ONLY: midn
 USE history_mod      !call historical variables
 IMPLICIT NONE
 INTEGER(kind=4),PARAMETER :: ncomp=6

 CONTAINS
!******************************************************************************
!**                          CONSTITUTIVE RELATIONS                          **
!******************************************************************************
SUBROUTINE constitutive(NSTEP,time,dtime,LAYER,noel,igaus,jgaus,nprops,&
                &props,nden,den,ndep,dep,ndamg,damg,ifdam,coords,lambda,stress,&
                &ddsdde)
 IMPLICIT NONE
 !Dummy variables
 INTEGER(kind=4),INTENT(IN) :: noel,igaus,jgaus,nprops,nden,ndep,ndamg
 INTEGER(kind=4),INTENT(IN) :: ifdam(6)
 REAL(kind=8),INTENT(IN) :: props(nprops),den(nden),dep(ndep),damg(ndamg)
 REAL(kind=8),INTENT(IN) :: lambda(2),coords(2),time(2),dtime
 CHARACTER(len=midn),INTENT(IN) :: NSTEP,LAYER
 REAL(kind=8),INTENT(OUT) :: stress(2),ddsdde(2,2)
 !Local variables
 real(kind=8),parameter :: zero=0.d0,half=0.5d0,one=1.d0,two=2.d0,three=3.d0
 real(kind=8),parameter :: four=4.d0,six=6.d0
 integer :: i1
 real(8) :: pi,den0_tot,den_tot,jota,Fg,stiffness,frac
 !incompresible part
 real(8) :: svol(2),lvol(2,2)
 !elastin properties
 real(8) :: c10,den_e,den0_e,frac_e
 real(8) :: s_e(2),l_e(2,2),gz,gt,gr
 real(8) :: den_dot_e,T_e,D_max,t_dam,L_dam
 real(8) :: psi0_e,xi0_e
 !collagen properties
 real(8) :: c1c(4),c2c,den_c(4),den0_c(4),frac_c(4),alpha_c(4)
 real(8) :: sci(2),lci(2,2),s_c(2),l_c(2,2)
 real(8) :: I4c,gc,ks_c,T_c,den_dot_c
 real(8) :: lambda_c,lambdae_c,lambdar_c
 real(8) :: psi0_ci,xi0_c(4),sci_mag
 !smc properties
 real(8) :: c1m,c2m,den_m,den0_m,frac_m,alpha_m
 real(8) :: s_m(2),l_m(2,2),l_m_pas(2,2),l_m_act(2,2)
 real(8) :: I4m,gm,ks_m,T_m,den_dot_m
 real(8) :: lambda_m,lambdae_m,lambdar_m
 real(8) :: s_act,lambdaM,lambda0,lambdaA
 real(8) :: psi0_m,xi0_m,s_m_mag
 !routine
 pi = four*atan(one)
 !Select layer and put initial densities
 SELECT CASE (TRIM(LAYER))     !Select layer and put material properties
 CASE ('MEDIA')
   den0_e = den(1)*1050.d0          !elastin density
   den0_m = den(2)*1050.d0          !SMC density
   den0_c(1) = den(3)*1050.d0       !collagen density (0)
   den0_c(2) = den(4)*1050.d0       !collagen density (45)
   den0_c(3) = den(5)*1050.d0       !collagen density (-45)
   den0_c(4) = den(6)*1050.d0       !collagen density (90)
 CASE ('ADVEN')
   den0_e = den(7)*1050.d0          !elastin density
   den0_m = den(8)*1050.d0          !SMC density
   den0_c(1) = den(9)*1050.d0       !collagen density (0)
   den0_c(2) = den(10)*1050.d0      !collagen density (45)
   den0_c(3) = den(11)*1050.d0      !collagen density (-45)
   den0_c(4) = den(12)*1050.d0      !collagen density (90)
 END SELECT
 den0_tot = den0_e+den0_m+den0_c(1)+den0_c(2)+den0_c(3)+den0_c(4)
 !density history
 IF ('HOMEO'.EQ.TRIM(NSTEP)) THEN
   den_e = den0_e
   den_m = den0_m
   do i1=1,4
     den_c(i1) = den0_c(i1)
   end do
   density(noel,igaus,jgaus,1) = den0_e
   density(noel,igaus,jgaus,2) = den0_m
   do i1=1,4
     density(noel,igaus,jgaus,i1+2) = den0_c(i1)
   end do
   den_tot = den0_tot
   jota = 1.d0
   Fg = 1.d0
   remodeling(noel,igaus,jgaus,:) = 1.d0
   growth(noel,igaus,jgaus) = 1.d0
   jacobian(noel,igaus,jgaus) = 1.d0
 ELSE
   den_e = density(noel,igaus,jgaus,1)
   den_m = density(noel,igaus,jgaus,2)
   do i1=1,4
     den_c(i1) = density(noel,igaus,jgaus,i1+2)
   end do
   den_tot = den_e + den_c(1) + den_c(2) + den_c(3) + den_c(4) + den_m
   jota = den_tot/den0_tot
   jacobian(noel,igaus,jgaus) = jota
   Fg = growth(noel,igaus,jgaus)
 END IF
 !put material properties
 c10 = props(1)*den_e                !hooke property
 c1m = props(2)*den_m                !holzapfel k1 for SMC
 c2m = props(3)                      !holzapfel k2 for SMC
 do i1=1,4
   c1c(i1) = props(4)*den_c(i1)      !holzapfel k1 for collagen fibers
 end do
 c2c = props(5)                      !holzapfel k2 for collagen fibers
 !deposition stretch block
 gz = one + time(2)*(dep(1)-one)
 gt = one + time(2)*(dep(2)-one)
 gr = one + time(2)*(one/(gz*gt)-one)
 gm = one + time(2)*(dep(3)-one)
 gc = one + time(2)*(dep(4)-one)
!-----------INCOMPRESIBLE PART---------------
 !SECOND PIOLA-KIRCHOFF STRESS
 svol(1) = zero !-press*jota/lambda(1)**two
 svol(2) = zero !-press*jota/lambda(2)**two
 !MATERIAL TANGENT MATRIX
 lvol(1,1) = zero !two*press*jota/lambda(1)**four
 lvol(1,2) = zero
 lvol(2,1) = zero
 lvol(2,2) = zero !two*press*jota/lambda(2)**four
!-----------ELASTIN COMPONENTS---------------
 !STRAIN ENERGY FUNCTION
 psi0_e = half*c10*((gz*lambda(1))**two+(gt*lambda(2))**two &
         & + (gr/(lambda(1)*lambda(2)))**two-3.d0)
 !SECOND PIOLA-KIRCHOFF STRESS
 s_e(1) = c10*(gz**two-gr**two/(lambda(1)**four*lambda(2)**two))
 s_e(2) = c10*(gt**two-gr**two/(lambda(1)**two*lambda(2)**four))
 !directional stress
 sigma(noel,igaus,jgaus,1) = (s_e(1) + svol(1))*lambda(1)**two/jota
 sigma(noel,igaus,jgaus,2) = (s_e(2) + svol(2))*lambda(2)**two/jota
 !MATERIAL TANGENT MATRIX
 l_e(1,1) = four*c10*gr**two/(lambda(1)**six*lambda(2)**two)
 l_e(1,2) = two*c10*gr**two/(lambda(1)**four*lambda(2)**four)
 l_e(2,1) = two*c10*gr**two/(lambda(1)**four*lambda(2)**four)
 l_e(2,2) = four*c10*gr**two/(lambda(1)**two*lambda(2)**six)
 !GROWTH AND REMODELING
 IF ('GANDR'.EQ.NSTEP(1:5)) THEN
   !density
   D_max = 0.5d0
   t_dam = 40.d0/30.d0
   L_dam = 0.010
   T_e = 101.d0*12.d0
   IF ('A'.EQ.NSTEP(6:6)) THEN
     den_dot_e = -den_e/T_e - D_max/t_dam*exp(-half*(coords(1)/L_dam)**two)&
             &*EXP(-(time(1)+time(2))/t_dam)*den0_e
   ELSE IF ('B'.EQ.NSTEP(6:6)) THEN
     den_dot_e = -den_e/T_e
   ELSE
     den_dot_e = 0.d0
   END IF
   den_e = den_e + den_dot_e*dtime
   !remodeling
   !growth
 END IF
 !DAMAGE
 IF ('HOMEO'.NE.TRIM(NSTEP).AND.ifdam(1)==1) THEN
   CALL damage_model(ndamg,damg,noel,igaus,jgaus,1,den_e,psi0_e,s_e,l_e)
 END IF
 density(noel,igaus,jgaus,1) = den_e
!---------SMC COMPONENTS-------------------------
 frac = den_m/1050.d0
 alpha_m = pi/two
 lambda0 = 0.8
 lambdaM = 1.4
 lambdaA = 1.0
 s_act = 54000.0d0*den_m
 !STRETCH elastic and remodeling
 lambdar_m = remodeling(noel,igaus,jgaus,1)
 lambda_m = gm*sqrt((lambda(1)*cos(alpha_m))**two+(lambda(2)*sin(alpha_m))**two)
 lambdae_m = lambda_m/lambdar_m
 I4m = lambdae_m**two
 !STRAIN ENERGY FUNCTION
 psi0_m = c1m/(four*c2m)*(exp(c2m*(I4m-one)**two)-one) &
         & + s_act/den0_tot*(lambdaA + (lambdaM-lambdaA)**three&
         &/(lambdaM-lambda0)**two/three)
 !SECOND PIOLA-KIRCHOFF STRESS
 !pasive + active
 s_m_mag = c1m*(I4m-one)*gm**two*exp(c2m*(I4m-one)**two)/lambdar_m**two &
    & + s_act/den0_tot*(one-(lambdaM-lambdaA)**two/(lambdaM-lambda0)**two)*(gm/lambda_m)**two
 s_m(1) = s_m_mag*(cos(alpha_m))**two
 s_m(2) = s_m_mag*(sin(alpha_m))**two
 !directional stress
 sigma(noel,igaus,jgaus,3) = (s_m(1)*(lambda(1)*cos(alpha_m))**two &
         & + s_m(2)*(lambda(2)*sin(alpha_m))**two &
         & + s_m_mag*two*lambda(1)*lambda(2)*(cos(alpha_m)*sin(alpha_m))**two)/frac
 !MATERIAL TANGENT MATRIX
 !pasive
 l_m_pas(1,1) = (one+two*(I4m-one)**two*c2m)*two*c1m*exp(c2m*(I4m-one)**two) &
        & *gm**four*(cos(alpha_m))**four/lambdar_m**four
 l_m_pas(1,2) = (one+two*(I4m-one)**two*c2m)*two*c1m*exp(c2m*(I4m-one)**two) &
        & *gm**four*(sin(alpha_m)*cos(alpha_m))**two/lambdar_m**four
 l_m_pas(2,1) = (one+two*(I4m-one)**two*c2m)*two*c1m*exp(c2m*(I4m-one)**two) &
        & *gm**four*(sin(alpha_m)*cos(alpha_m))**two/lambdar_m**four
 l_m_pas(2,2) = (one+two*(I4m-one)**two*c2m)*two*c1m*exp(c2m*(I4m-one)**two) &
        & *gm**four*(sin(alpha_m))**four/lambdar_m**four
 !active
 l_m_act(1,1) = two*s_act/den0_tot*((lambdaM-lambdaA)**two&
         &/(lambdaM-lambda0)**two-one)*(gm*cos(alpha_m)/lambda_m)**four
 l_m_act(1,2) = two*s_act/den0_tot*((lambdaM-lambdaA)**two&
         &/(lambdaM-lambda0)**two-one)*(gm/lambda_m)**four&
         &*(sin(alpha_m)*cos(alpha_m))**two
 l_m_act(2,1) = two*s_act/den0_tot*((lambdaM-lambdaA)**two&
         &/(lambdaM-lambda0)**two-one)*(gm/lambda_m)**four&
         &*(sin(alpha_m)*cos(alpha_m))**two
 l_m_act(2,2) = two*s_act/den0_tot*((lambdaM-lambdaA)**two&
         &/(lambdaM-lambda0)**two-one)*(gm*sin(alpha_m)/lambda_m)**four
 !TOTAL ELASTICITY
 l_m = l_m_pas + l_m_act
 !GROWTH AND REMODELING
 IF ('GANDR'.EQ.NSTEP(1:5)) THEN
   T_m = gnr(3)/30.d0
   !remodeling
   SELECT CASE (TRIM(LAYER))      !Select layer
   CASE ('MEDIA')
     ks_m = gnr(1)/T_m
     CALL density_model(dtime,ks_m,sigma(noel,igaus,jgaus,3),&
             &sigma_h(noel,igaus,jgaus,3),den_m,den_dot_m)
     CALL remodeling_model(dtime,c1m,c2m,I4m,lambda_m,lambdae_m,T_m,&
             &sigma(noel,igaus,jgaus,3),sigma_h(noel,igaus,jgaus,3),&
             &frac,den_m,den_dot_m,lambdar_m)
   CASE ('ADVEN')
     ks_m = gnr(1)/T_m
     CALL density_model(dtime,ks_m,sigma(noel,igaus,jgaus,3),&
             &sigma_h(noel,igaus,jgaus,3),den_m,den_dot_m)
     CALL remodeling_model(dtime,c1m,c2m,I4m,lambda_m,lambdae_m,T_m,&
             &sigma(noel,igaus,jgaus,3),sigma_h(noel,igaus,jgaus,3),&
             &frac,den_m,den_dot_m,lambdar_m)
   END SELECT
   !growth
 END IF
 !DAMAGE
 IF ('HOMEO'.NE.TRIM(NSTEP).AND.ifdam(2)==1) THEN
   CALL damage_model(ndamg,damg,noel,igaus,jgaus,2,den_m,psi0_m,s_m,l_m)
 END IF
 density(noel,igaus,jgaus,2) = den_m
 remodeling(noel,igaus,jgaus,1) = lambdar_m
!-----------COLLAGEN COMPONENTS--------------
 alpha_c(1) = zero
 alpha_c(2) = pi/four
 alpha_c(3) = -pi/four
 alpha_c(4) = pi/two
 !DEPOSITION STRETCH
 s_c = zero
 l_c = zero
 do i1=1,4 !collagen fibers
   frac = den_c(i1)/1050.d0
   lambdar_c = remodeling(noel,igaus,jgaus,i1+1)
   lambda_c = gc*sqrt((lambda(1)*cos(alpha_c(i1)))**two&
           &+(lambda(2)*sin(alpha_c(i1)))**two)
   lambdae_c = lambda_c/lambdar_c
   I4c = lambdae_c**two
 !STRAIN ENERGY FUNCTION
   psi0_ci = c1c(i1)/(four*c2c)*(exp(c2c*(I4c-one)**two)-one)
 !SECOND PIOLA-KIRCHOFF STRESS
   sci_mag = c1c(i1)*(I4c-one)*gc**two*exp(c2c*(I4c-one)**two)/lambdar_c**two
   sci(1) = sci_mag*(cos(alpha_c(i1)))**two
   sci(2) = sci_mag*(sin(alpha_c(i1)))**two
   !directional stress
   sigma(noel,igaus,jgaus,3+i1) = (sci(1)*(lambda(1)*cos(alpha_c(i1)))**two &
           & + sci(2)*(lambda(2)*sin(alpha_c(i1)))**two &
           & + sci_mag*two*lambda(1)*lambda(2)*(cos(alpha_c(i1))*sin(alpha_c(i1)))**two)/frac
 !MATERIAL TANGENT MATRIX
   lci(1,1) = (one+two*(I4c-one)**two*c2c)*two*c1c(i1)*exp(c2c*(I4c-one)**two) &
          & *gc**four*(cos(alpha_c(i1)))**four/lambdar_c**four
   lci(1,2) = (one+two*(I4c-one)**two*c2c)*two*c1c(i1)*exp(c2c*(I4c-one)**two) &
          & *gc**four*(sin(alpha_c(i1))*cos(alpha_c(i1)))**two/lambdar_c**four
   lci(2,1) = (one+two*(I4c-one)**two*c2c)*two*c1c(i1)*exp(c2c*(I4c-one)**two) &
          & *gc**four*(sin(alpha_c(i1))*cos(alpha_c(i1)))**two/lambdar_c**four
   lci(2,2) = (one+two*(I4c-one)**two*c2c)*two*c1c(i1)*exp(c2c*(I4c-one)**two) &
          & *gc**four*(sin(alpha_c(i1)))**four/lambdar_c**four
 !GROWTH AND REMODELING
   IF ('GANDR'.EQ.NSTEP(1:5)) THEN
     !density
     T_c = gnr(4)/30.d0
     !remodeling
     SELECT CASE (TRIM(LAYER))  !select layer
     CASE ('MEDIA')
       ks_c = gnr(2)/T_c
       CALL density_model(dtime,ks_c,sigma(noel,igaus,jgaus,3),&
               &sigma_h(noel,igaus,jgaus,3),den_c(i1),den_dot_c)
       CALL remodeling_model(dtime,c1c(i1),c2c,I4c,lambda_c,lambdae_c,T_c,&
               &sigma(noel,igaus,jgaus,i1+3),sigma_h(noel,igaus,jgaus,i1+3),&
               &frac,den_c(i1),den_dot_c,lambdar_c)
     CASE ('ADVEN')
       ks_c = gnr(2)/T_c
!       If (((i1+3)==4).OR.((i1+3)==7)) ks_c=0.d0
       CALL density_model(dtime,ks_c,sigma(noel,igaus,jgaus,i1+3),&
               &sigma_h(noel,igaus,jgaus,i1+3),den_c(i1),den_dot_c)
       CALL remodeling_model(dtime,c1c(i1),c2c,I4c,lambda_c,lambdae_c,T_c,&
               &sigma(noel,igaus,jgaus,i1+3),sigma_h(noel,igaus,jgaus,i1+3),&
               &frac,den_c(i1),den_dot_c,lambdar_c)
     END SELECT
     !growth
   END IF
   !DAMAGE
   IF ('HOMEO'.NE.TRIM(NSTEP).AND.ifdam(2+i1)==1) THEN
    CALL damage_model(ndamg,damg,noel,igaus,jgaus,2+i1,den_c(i1),psi0_ci,sci,lci)
   END IF
   density(noel,igaus,jgaus,i1+2) = den_c(i1)
   remodeling(noel,igaus,jgaus,1+i1) = lambdar_c
 !TOTAL STRESS AND ELASTICITY
   s_c = s_c + sci
   l_c = l_c + lci
 end do !collagen fibers
!---------ADDITION OF COMPONENTS-------------------
 !SECOND PIOLA-KIRCHOFF STRESS
 stress = svol + s_e + s_c + s_m
 !MATERIAL TANGENT MATRIX
 ddsdde = lvol + l_e + l_c + l_m
 !GROWTH AND REMODELING
 IF ('HOMEO'.NE.TRIM(NSTEP)) THEN
   !growth
   den_tot = den_e + den_c(1) + den_c(2) + den_c(3) + den_c(4) + den_m
   Fg = den_tot/den0_tot
   growth(noel,igaus,jgaus) = Fg
 END IF
END SUBROUTINE constitutive
!******************************************************************************
!**                 Continuum Damage Mechanics                               **
!******************************************************************************
SUBROUTINE damage_model(ndamg,damg,noel,igaus,jgaus,icomp,den,energy0,stress,&
                &ddsdde)
 IMPLICIT NONE
 !--Dummy arguments
 INTEGER(kind=4),INTENT(IN) :: icomp,igaus,jgaus,noel,ndamg
 REAL(kind=8),INTENT(IN) :: energy0,damg(ndamg)
 REAL(kind=8),INTENT(INOUT) :: den,stress(2),ddsdde(2,2)
 !--Local arguments
 INTEGER(kind=4) :: i,j
 REAL(kind=8) :: eta(6),equiv,equiv0,hfunc,d,s0xs0(2,2)
 REAL(kind=8) :: ximin(6),ximax(6),alpha
!this damage works on total stress and elasticity, well implemented it should work
!by component
!**  1:elastin
!**  2:smooth muscle cell
!**  3:collagen 0
!**  4:collagen 45
!**  5:collagen -45
!**  6:collagen 90
!d = d + hfunc*(equiv-equiv0)                 !update damage
!**NOTE: how damage works on SMC?, Jamal-->NO damage on SMC(just on elastin and collagen)
 eta = (/damg(1),damg(2),damg(3),damg(4),damg(5),damg(6)/)
 !clean internal function
 hfunc = 0.d0
 s0xs0 = 0.d0
 !call history of damage variables
 !thres = xi0(noel,igaus,jgaus,icomp)   !Maximum Equivalent Strain Enegry on history
! ximin = (/258.143,131.769,48.328,72.618,72.618,48.328/)
 ximin = (/damg(7),damg(8),damg(9),damg(10),damg(11),damg(12)/)
 ximax = (/damg(13),damg(14),damg(15),damg(16),damg(17),damg(18)/)
! ximax = (/260.350,132.349,63.849,85.271,85.271,63.849/)
 d = damage(noel,igaus,jgaus,icomp)              !damage
 equiv0 = damage(noel,igaus,jgaus,ncomp+icomp)   !Maximum Equivalent Strain Enegry on history
 equiv = SQRT(2.d0*energy0)                      !equivalent strain energy
 if (equiv>equiv0) then          !damage criterion
   if (equiv.LE.ximin(icomp)) then
     alpha = 0.d0
     d = 0.d0
   else if (equiv>ximin(icomp).AND.equiv<ximax(icomp)) then
     alpha = (equiv-ximin(icomp))/(ximax(icomp)-ximin(icomp))
     d = alpha**2.d0*(1.d0-eta(icomp)*(alpha**2.d0-1.d0))
   else
     alpha = 1.d0
     d = 1.d0
   end if
   hfunc = 2.d0*(1.d0+eta(icomp)-2.d0*eta(icomp)*alpha**2.d0)*alpha&
           &/(ximax(icomp)-ximin(icomp))
   do i=1,2                                      !update damage elasticity tensor
     do j=1,2
       s0xs0(i,j) = hfunc*stress(i)*stress(j)
     end do
   end do
   equiv0 = equiv                       !update MESE on history
 end if
 !damage on Stress and Elasticity
 den = (1.d0 - d)*den
 stress = (1.d0 - d)*stress
 ddsdde = (1.d0 - d)*ddsdde - s0xs0
 !save damage variables in historical arrays
 damage(noel,igaus,jgaus,icomp) = d
 damage(noel,igaus,jgaus,ncomp+icomp) = equiv0
END SUBROUTINE damage_model
!******************************************************************************
!**                     Mass Production                                      **
!******************************************************************************
SUBROUTINE density_model(dtime,ks,sigma,sigma_h,den,den_dot)
 IMPLICIT NONE
 !--Dummy arguments
 REAL(kind=8),INTENT(IN) :: dtime,ks,sigma,sigma_h
 REAL(kind=8),INTENT(INOUT) :: den
 REAL(kind=8),INTENT(OUT) :: den_dot

 IF (den==0.0) RETURN  !check if there is component in this layer
 den_dot = 0.d0
 !mass production
 den_dot = den*ks*(sigma-sigma_h)/sigma_h
 den = den + den_dot*dtime
END SUBROUTINE density_model
!******************************************************************************
!**                          Remodeling                                      **
!******************************************************************************
SUBROUTINE remodeling_model(dtime,c1,c2,I4,lambda,lambdae,T,sigma,sigma_h,&
                &frac,den,den_dot,lambdar)
 IMPLICIT NONE
 !--Dummy arguments
 REAL(kind=8),INTENT(IN) :: dtime,c1,c2,I4,lambda,lambdae,T,sigma,sigma_h
 REAL(kind=8),INTENT(IN) :: frac,den,den_dot
 REAL(kind=8),INTENT(INOUT) :: lambdar
 !--Local arguments
 REAL(kind=8) :: stiffness,lambdar_dot

 IF (den==0.0) RETURN  !check if there is component in this layer
 !remodeling
 stiffness = (4.d0*c2*I4*(I4-1.d0)**2.d0+4.d0*I4-2.d0)*c1*lambdae&
         &*EXP(c2*(I4-1.d0)**2.d0)/frac
 lambdar_dot = (den_dot/den+1.d0/T)*(sigma-sigma_h)*lambda/(I4*stiffness)
! lambdar_dot = 0.d0
 lambdar = lambdar + lambdar_dot*dtime
END SUBROUTINE remodeling_model

END MODULE model_mod
