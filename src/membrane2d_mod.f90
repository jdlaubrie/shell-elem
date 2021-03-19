MODULE membrane2d_mod
 USE param_mod,ONLY: midn
 USE input_mod,ONLY: runend
 USE ctrl_mod,ONLY: nmdof,ndime,ngaus,penal
 USE info_mod,ONLY: thick,stres,stran,lambd
 USE esets_mod,ONLY: nnode
 USE model_mod
 USE history_mod,ONLY: growth
 IMPLICIT NONE

 CONTAINS
!******************************************************************************
!**         Elemental Stiffness Matrix from internal energy                  **
!******************************************************************************
 SUBROUTINE membrane2d_elem(NSTEP,time,dtime,nprops,props,nden,den,ndep,dep,&
   &ndamg,damg,ifdam,coor,disp,leng,cosd,h0,hM0,hA0,noel,Kint,Rint)
  IMPLICIT NONE
  !--Dummy arguments
  INTEGER(kind=4),INTENT(IN) :: nprops,nden,ndep,ndamg,noel,ifdam(6)
  REAL(kind=8),INTENT(IN) :: props(nprops),den(nden),dep(ndep),damg(ndamg)
  REAL(kind=8),INTENT(IN) :: coor(ndime,nnode),disp(nmdof,nnode)
  REAL(kind=8),INTENT(IN) :: time(2),dtime,leng,cosd(2)
  REAL(kind=8),INTENT(IN) :: h0,hM0,hA0
  CHARACTER(len=midn),INTENT(IN) :: NSTEP
  REAL(kind=8),INTENT(OUT) :: Kint(nmdof,nmdof,nnode,nnode)
  REAL(kind=8),INTENT(OUT) :: Rint(nmdof,nnode)
  !--Local arguments
  INTEGER(kind=4) :: igaus,jgaus,i1,i2,i3,i4
  REAL(kind=8) :: gpoin(ngaus),gcoef(ngaus)
  REAL(kind=8) :: K_int(nmdof,nmdof,nnode,nnode),K_int_add(nmdof,nmdof,nnode,nnode)
  REAL(kind=8) :: R_int(nmdof,nnode),R_int_add(nmdof,nnode)
  REAL(kind=8) :: gstre(2),gstra(2),glamb(3)
  REAL(kind=8) :: stretchRM,stretchRA,growthM,growthA

  IF (nmdof.NE.2) CALL rundend('MEMBRANE2D: Wrong number of degrees of freedom')
  CALL quadrature(gpoin,gcoef)          !get Gauss points and coefficients
  K_int_add = 0.d0                      !initialize stiffness integration
  R_int_add = 0.d0                      !initialize reaction integration
  DO igaus=1,ngaus                      !Gauss integration along element
    !Gauss integration along thickness MEDIA/ADVENTITIA
    DO jgaus=1,2
      CALL mem2d_gauss(NSTEP,time,dtime,noel,igaus,jgaus,gpoin(igaus),&
      & nprops,props,nden,den,ndep,dep,ndamg,damg,ifdam,coor,disp,leng,&
      & cosd,h0,hM0,hA0,K_int,R_int,glamb,gstra,gstre)
      K_int_add = gcoef(igaus)*K_int + K_int_add !Gaussian quadrature
      R_int_add = gcoef(igaus)*R_int + R_int_add !Gaussian quadrature
      !Stretch at iGauss
      lambd(1,noel,igaus,jgaus) = glamb(1)      !Z stretch
      lambd(2,noel,igaus,jgaus) = glamb(2)      !Q stretch
      lambd(3,noel,igaus,jgaus) = glamb(3)      !R stretch
      !Cauchy Stress at iGauss
      stres(1,noel,igaus,jgaus) = gstre(1)      !Z stress
      stres(2,noel,igaus,jgaus) = gstre(2)      !Q stress
      !Configuration Strain at iGauss
      stran(1,noel,igaus,jgaus) = gstra(1)      !Z strain
      stran(2,noel,igaus,jgaus) = gstra(2)      !Q strain
    END DO         !along thickness MADIA/ADVENTITIA
    ! MEDIA thickness
    stretchRM = lambd(3,noel,igaus,1)
    growthM = growth(noel,igaus,1)
    thick(noel,igaus,1) = hM0*stretchRM*growthM        !thickness media
    ! ADVENTITIA thickness
    stretchRA = lambd(3,noel,igaus,2)
    growthA = growth(noel,igaus,2)
    thick(noel,igaus,2) = hA0*stretchRA*growthA        !thickness adven
    ! TOTAL thickness
    thick(noel,igaus,3) = thick(noel,igaus,1) + thick(noel,igaus,2)
  END DO         !along element
  !stiffness and reaction from internal energy
  Kint = K_int_add     !(3,3,2,2)
  Rint = R_int_add     !(3,2)
END SUBROUTINE membrane2d_elem
!******************************************************************************
!**         Operation to get stiffness by Gauss point                        **
!******************************************************************************
 SUBROUTINE mem2d_gauss(NSTEP,time,dtime,noel,igaus,jgaus,xi,nprops,&
   & props,nden,den,ndep,dep,ndamg,damg,ifdam,coor,disp,leng,cosd,h0,hM0,hA0,&
   & K_int,R_int,glamb,gstra,gstre)
  IMPLICIT NONE
  !--Dummy arguments
  INTEGER(kind=4),INTENT(IN) :: noel,igaus,jgaus,nprops,nden,ndep,ndamg,ifdam(6)
  REAL(kind=8),INTENT(IN) :: props(nprops),den(nden),dep(ndep),damg(ndamg)
  REAL(kind=8),INTENT(IN) :: coor(ndime,nnode),disp(nmdof,nnode)
  REAL(kind=8),INTENT(IN) :: time(2),dtime,leng,cosd(2),xi
  REAL(kind=8),INTENT(IN) :: h0,hM0,hA0
  CHARACTER(len=midn),INTENT(IN) :: NSTEP
  REAL(kind=8),INTENT(OUT) :: K_int(nmdof,nmdof,nnode,nnode)
  REAL(kind=8),INTENT(OUT) :: R_int(nmdof,nnode)
  REAL(kind=8),INTENT(OUT) :: glamb(3),gstra(2),gstre(2)
  !--Local arguments
  INTEGER(kind=4) :: i1,i2,i3,i4,i5
  REAL(kind=8) :: u(2),du(2),coords(2),et
  REAL(kind=8) :: Nfunc(2),dNds(2)
  REAL(kind=8) :: b_mb(2,2,2)
  REAL(kind=8) :: g1_mb(2,2,2,2),g2_mb(2,2,2,2)
  REAL(kind=8) :: lambda(2),strain(2),stress(2),ddsdde(2,2)
  REAL(kind=8) :: K_aux1(2,2,2),K_aux2(2,2,2,2)
  REAL(kind=8) :: g1_aux(2,2,2,2),g2_aux(2,2,2,2)
  REAL(kind=8) :: Dthick
  CHARACTER(len=midn) :: LAYER

  !Select layer
  SELECT CASE (jgaus)
  CASE (1)
    LAYER = 'MEDIA'
    Dthick = hM0/2.d0
  CASE (2)
    LAYER = 'ADVEN'
    Dthick = hA0/2.d0
  END SELECT
  !shape function
  Nfunc(1) = 0.5d0*(1.d0-xi)       !linear shape function
  Nfunc(2) = 0.5d0*(1.d0+xi)
  dNds(1) = -1.d0/leng             !derivative of function
  dNds(2) = 1.d0/leng
  !degrees of freedom
  u(1) = Nfunc(1)*disp(1,1)+Nfunc(2)*disp(1,2) !displacement s at gauss point
  u(2) = Nfunc(1)*disp(2,1)+Nfunc(2)*disp(2,2) !displacement n at gauss point
  !derivative of dofs
  du(1) = dNds(1)*disp(1,1)+dNds(2)*disp(1,2) !displacement s at gauss point
  du(2) = dNds(1)*disp(2,1)+dNds(2)*disp(2,2) !displacement n at gauss point
  !coordinates at gauss point
  coords(1) = Nfunc(1)*coor(1,1)+Nfunc(2)*coor(1,2)! - zet*cosd(1) !z
  coords(2) = Nfunc(1)*coor(2,1)+Nfunc(2)*coor(2,2)! + zet*cosd(2) !r
  !auxiliar variable for stretch on n direction
  et = (u(1)*cosd(1) + u(2)*cosd(2))/coords(2)

  CALL mem2d_stretch(u,du,coords,et,cosd,lambda,strain)
  CALL mem2d_bmatrix(Nfunc,dNds,u,du,coords,et,cosd,b_m)
  CALL mem2d_gmatrix(Nfunc,dNds,u,du,cosd,coords,et,g1_m,g2_m)
  !apply constitutive models
  CALL constitutive(NSTEP,time,dtime,LAYER,noel,igaus,jgaus,nprops,props,&
  & nden,den,ndep,dep,ndamg,damg,ifdam,coords,lambda,stress,ddsdde)

  K_aux1 = 0.d0
  DO i1=1,2   !loop on nodes of element (node i)
    DO i3=1,2   !loop on dofs
      DO i4=1,2
        DO i5=1,2
          K_aux1(i3,i4,i1) = b_m(i5,i3,i1)*ddsdde(i5,i4) + K_aux1(i3,i4,i1)
        END DO
      END DO
    END DO
  END DO
  K_aux2 = 0.d0
  DO i1=1,2   !loop on nodes of element (node i)
    DO i2=1,2   !loop on nodes of element (node j)
      DO i3=1,2   !loop on dofs
        DO i4=1,2   !loop on dofs
          DO i5=1,2
            K_aux2(i3,i4,i1,i2) = K_aux1(i3,i5,i1)*b_m(i5,i4,i2) &
            & + K_aux2(i3,i4,i1,i2)
          END DO
        END DO
      END DO
    END DO
  END DO
  g1_aux = stress(1)*g1_m
  g2_aux = stress(2)*g2_m

  !internal stiffness matrix for membrane and bending
  K_int = K_aux2 + g1_aux + g2_aux
  K_int = K_int*coords(2)*leng*Dthick/2.d0

  R_int = 0.d0
  DO i1=1,2  !loop on nodes
    DO i3=1,2  !loop on dofs
      DO i4=1,2
        R_int(i3,i1) = b_m(i4,i3,i1)*stress(i4) + R_int(i3,i1)
      END DO
    END DO
  END DO
  R_int = R_int*coords(2)*leng*Dthick/2.d0

  !Cauchy Stress at this Gauss point
  gstre(1) = stress(1)*lambda(1)**2.d0
  gstre(2) = stress(2)*lambda(2)**2.d0
  !Strain at this Gauss point
  gstra(1) = strain(1)
  gstra(2) = strain(2)
  !Cauchy Stress at this Gauss point
  glamb(1) = lambda(1)
  glamb(2) = lambda(2)
  glamb(3) = 1.d0/(lambda(1)*lambda(2))  !incombresibility

END SUBROUTINE mem2d_gauss
!******************************************************************************
!**              COMPUTATION OF STRETCH AT GAUSS POINT                       **
!******************************************************************************
 SUBROUTINE mem2d_stretch(u,du,coords,et,cosd,lambda,strain)
  IMPLICIT NONE
  !external variables
  REAL(kind=8),INTENT(IN) :: u(2),du(2),coords(2)  !u(nmdof)
  REAL(kind=8),INTENT(IN) :: et,cosd(2)
  REAL(kind=8),INTENT(OUT) :: lambda(2),strain(2)
  !internal variables
  !stretch
  lambda(1) = SQRT((1.d0+du(1))**2.d0+du(2)**2.d0)
  lambda(2) = 1.d0+et
  !strains
  strain(1) = du(1)+0.5d0*(du(1)**2.d0+du(2)**2.d0)
  strain(2) = et + 0.5d0*et**2.d0
END SUBROUTINE mem2d_stretch
!******************************************************************************
!**                DERIVATIVES SHAPE FUNCTION MATRIX                         **
!******************************************************************************
 SUBROUTINE mem2d_bmatrix(Nfunc,dNds,u,du,coords,et,cosd,b_m)
  IMPLICIT NONE
  !external variables
  REAL(kind=8),INTENT(IN) :: Nfunc(2),dNds(2),u(2),du(2),coords(ndime)
  REAL(kind=8),INTENT(IN) :: et,cosd(2)
  REAL(kind=8),INTENT(OUT) :: b_m(2,2,2)
  !internal variables
  INTEGER(kind=4) :: i1
  !routine
  !cycle for B_mb
  DO i1=1,2
    b_m(1,1,i1) = (1.d0+du(1))*dNds(i1)
    b_m(1,2,i1) = du(2)*dNds(i1)
    b_m(2,1,i1) = ((1.d0+et)*cosd(1)/coords(2))*Nfunc(i1)
    b_m(2,2,i1) = ((1.d0+et)*cosd(2)/coords(2))*Nfunc(i1)
  END DO

END SUBROUTINE mem2d_bmatrix
!******************************************************************************
!**       G1 MATRIX FOR LINEALIZATION OF VIRTUAL STRAINS                     **
!******************************************************************************
 SUBROUTINE mem2d_gmatrix(Nfunc,dNds,u,du,cosd,coords,et,g1_m,g2_m)
  IMPLICIT NONE
  !external variables
  REAL(kind=8),INTENT(IN) :: Nfunc(2),dNds(2),u(2),du(2),cosd(2),coords(2)
  REAL(kind=8),INTENT(IN) :: et
  REAL(kind=8),INTENT(OUT) :: g1_m(2,2,2,2),g2_m(2,2,2,2)
  !internal variables
  INTEGER(kind=4) :: i1,i2
  !routine
  !cycle for G1_ij
  DO i1=1,2
    DO i2=1,2
      g1_m(1,1,i1,i2) = dNds(i1)*dNds(i2)
      g1_m(1,2,i1,i2) = 0.d0
      g1_m(2,1,i1,i2) = 0.d0
      g1_m(2,2,i1,i2) = dNds(i1)*dNds(i2)
    END DO
  END DO
  !cycle for G2_ij
  DO i1=1,2
    DO i2=1,2
      g2_m(1,1,i1,i2) = Nfunc(i1)*Nfunc(i2)*cosd(1)**2.d0/coords(2)**2.d0
      g2_m(1,2,i1,i2) = Nfunc(i1)*Nfunc(i2)*cosd(1)*cosd(2)/coords(2)**2.d0
      g2_m(2,1,i1,i2) = Nfunc(i1)*Nfunc(i2)*cosd(1)*cosd(2)/coords(2)**2.d0
      g2_m(2,2,i1,i2) = Nfunc(i1)*Nfunc(i2)*cosd(2)**2.d0/coords(2)**2.d0
    END DO
  END DO

END SUBROUTINE mem2d_gmatrix

END MODULE membrane2d_mod
