MODULE shell3d_mod
 USE param_mod,ONLY: midn
 USE input_mod,ONLY: runend
 USE ctrl_mod,ONLY: nmdof,ndime,ngaus,penal
 USE info_mod,ONLY: thick,stres,stran,lambd
 USE esets_mod,ONLY: nnode
 USE model_mod
 USE history_mod,ONLY: growth
 USE shape_mod
 USE quadrature_mod
 IMPLICIT NONE
 REAL(kind=8) :: u3B=0.d0

 CONTAINS
!******************************************************************************
!**         Elemental Stiffness Matrix from internal energy                  **
!******************************************************************************
 SUBROUTINE shell2d_elem(NSTEP,time,dtime,nprops,props,nden,den,ndep,dep,ndamg,&
   & damg,ifdam,coor,disp,leng,cosd,h0,hM0,hA0,noel,K_elem,R_elem)
  IMPLICIT NONE
  !--Dummy arguments
  INTEGER(kind=4),INTENT(IN) :: nprops,nden,ndep,ndamg,noel,ifdam(6)
  REAL(kind=8),INTENT(IN) :: props(nprops),den(nden),dep(ndep),damg(ndamg)
  REAL(kind=8),INTENT(IN) :: coor(ndime,nnode),disp(nmdof,nnode)
  REAL(kind=8),INTENT(IN) :: time(2),dtime,leng,cosd(2)
  REAL(kind=8),INTENT(IN) :: h0,hM0,hA0
  CHARACTER(len=midn),INTENT(IN) :: NSTEP
  REAL(kind=8),INTENT(OUT) :: K_elem(nmdof,nmdof,nnode,nnode)
  REAL(kind=8),INTENT(OUT) :: R_elem(nmdof,nnode)
  !--Local arguments
  INTEGER(kind=4) :: igaus,jgaus,jgaux,i1,i2,i3,i4
  REAL(kind=8) :: gpoin(ngaus),gcoef(ngaus)
  REAL(kind=8) :: K_gauss(nmdof,nmdof,nnode,nnode),K_elem_add(nmdof,nmdof,nnode,nnode)
  REAL(kind=8) :: R_gauss(nmdof,nnode),R_elem_add(nmdof,nnode)
  REAL(kind=8) :: gstre(2),gstra(3),glamb(3)
  REAL(kind=8) :: stretchRM,stretchRA,growthM,growthA

  IF (nmdof.NE.3) CALL runend('SHELL2D: Wrong number of degrees of freedom')
  CALL gauscheb(ngaus,gpoin,gcoef)   !get Gauss points and coefficients
  K_elem = 0.d0                      !initialize stiffness integration
  R_elem = 0.d0                      !initialize reaction integration
  DO igaus=1,ngaus                      !Gauss integration along element
    !Gauss integration along thickness MEDIA/ADVENTITIA
    DO jgaus=1,2*ngaus
      IF (jgaus>ngaus) THEN
        jgaux = jgaus - ngaus
      ELSE
        jgaux = jgaus
      END IF
      CALL shell2d_gauss(NSTEP,time,dtime,noel,igaus,jgaus,gpoin(igaus),&
      & gpoin(jgaux),nprops,props,nden,den,ndep,dep,ndamg,damg,ifdam,coor,&
      & disp,leng,cosd,h0,hM0,hA0,K_gauss,R_gauss,glamb,gstra,gstre)
      K_elem = gcoef(igaus)*gcoef(jgaux)*K_gauss + K_elem !Gaussian quadrature
      R_elem = gcoef(igaus)*gcoef(jgaux)*R_gauss + R_elem !Gaussian quadrature
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
      stran(3,noel,igaus,jgaus) = gstra(3)      !ZR strain
    END DO         !along thickness MADIA/ADVENTITIA
    ! MEDIA thickness
    stretchRM = (lambd(3,noel,igaus,1) + lambd(3,noel,igaus,2))/2.d0
    growthM = (growth(noel,igaus,1) + growth(noel,igaus,2))/2.d0
    thick(noel,igaus,1) = hM0*stretchRM*growthM        !thickness media
    ! ADVENTITIA thickness
    stretchRA = (lambd(3,noel,igaus,3) + lambd(3,noel,igaus,4))/2.d0
    growthA = (growth(noel,igaus,3) + growth(noel,igaus,4))/2.d0
    thick(noel,igaus,2) = hA0*stretchRA*growthA        !thickness adven
    ! TOTAL thickness
    thick(noel,igaus,3) = thick(noel,igaus,1) + thick(noel,igaus,2)  !thickness total
  END DO         !along element
END SUBROUTINE shell2d_elem
!******************************************************************************
!**         Operation to get stiffness by Gauss point                        **
!******************************************************************************
 SUBROUTINE shell2d_gauss(NSTEP,time,dtime,noel,igaus,jgaus,xi,zeta,nprops,&
   & props,nden,den,ndep,dep,ndamg,damg,ifdam,coor,disp,leng,cosd,h0,hM0,hA0,&
   & K_gauss,R_gauss,glamb,gstra,gstre)
  IMPLICIT NONE
  !--Dummy arguments
  INTEGER(kind=4),INTENT(IN) :: noel,igaus,jgaus,nprops,nden,ndep,ndamg,ifdam(6)
  REAL(kind=8),INTENT(IN) :: props(nprops),den(nden),dep(ndep),damg(ndamg)
  REAL(kind=8),INTENT(IN) :: coor(ndime,nnode),disp(nmdof,nnode)
  REAL(kind=8),INTENT(IN) :: time(2),dtime,leng,cosd(2),xi,zeta
  REAL(kind=8),INTENT(IN) :: h0,hM0,hA0
  CHARACTER(len=midn),INTENT(IN) :: NSTEP
  REAL(kind=8),INTENT(OUT) :: K_gauss(nmdof,nmdof,nnode,nnode)
  REAL(kind=8),INTENT(OUT) :: R_gauss(nmdof,nnode)
  REAL(kind=8),INTENT(OUT) :: glamb(3),gstra(3),gstre(2)
  !--Local arguments
  INTEGER(kind=4) :: i1,i2,i3,i4,i5
  REAL(kind=8) :: u(3),du(3),coords(2),et,zet
  REAL(kind=8) :: Nfunc(nnode),dNds(nnode)
  REAL(kind=8) :: b_mb(2,3,nnode),b_pen(3,nnode)
  REAL(kind=8) :: g1_mb(3,3,nnode,nnode)
  REAL(kind=8) :: g2_mb(3,3,nnode,nnode)
  REAL(kind=8) :: g_pen(3,3,nnode,nnode)
  REAL(kind=8) :: lambda(2),strain(3),stress(2),ddsdde(2,2)
  REAL(kind=8) :: K_aux1(3,2,nnode),K_aux2(3,3,nnode,nnode)
  REAL(kind=8) :: g1_aux(3,3,nnode,nnode)
  REAL(kind=8) :: g2_aux(3,3,nnode,nnode)
  REAL(kind=8) :: g_aux(3,3,nnode,nnode)
  REAL(kind=8) :: Dthick
  CHARACTER(len=midn) :: LAYER

  !Select layer
  IF (jgaus>ngaus) THEN
    LAYER = 'ADVEN'
    zet = (hA0/2.d0)*(zeta+h0/hA0-1.d0)  !thickness variable along ADVENTITIA
    Dthick = hA0/2.d0
  ELSE
    LAYER = 'MEDIA'
    zet = (hM0/2.d0)*(zeta-h0/hM0+1.d0)  !thickness variable along MEDIA
    Dthick = hM0/2.d0
  END IF
  !shape function
  CALL linear_shape_1d(xi,Nfunc,dNds)
  u3B = 0.5d0*disp(3,1)+0.5d0*disp(3,2) !rotation at mid-point
  dNds = dNds*2.d0/leng             !derivative of function
  !calculate variables from shape functions
  coords = 0.d0       !coordinates at gauss point
  u = 0.d0            !displacement along element
  du = 0.d0           !derivative of dofs
  DO i1=1,nnode
    !coordinates at gauss point
    coords(1) = Nfunc(i1)*coor(1,i1) + coords(1)  !z
    coords(2) = Nfunc(i1)*coor(2,i1) + coords(2)  !r
    !displacement along element
    u(1) = Nfunc(i1)*disp(1,i1) + u(1) !displacement s at gauss point
    u(2) = Nfunc(i1)*disp(2,i1) + u(2) !displacement n at gauss point
    u(3) = Nfunc(i1)*disp(3,i1) + u(3) !rotation at gauss point
    !derivative of dofs
    du(1) = dNds(i1)*disp(1,i1) + du(1) !displacement s at gauss point
    du(2) = dNds(i1)*disp(2,i1) + du(2) !displacement n at gauss point
    du(3) = dNds(i1)*disp(3,i1) + du(3) !rotation at gauss point
  END DO
  !auxiliar variable for stretch on n direction
  et = (u(1)*cosd(1) + u(2)*cosd(2))/coords(2)

  CALL shell2d_stretch(u,du,coords,et,cosd,zet,lambda,strain)
  CALL shell2d_bmatrix(Nfunc,dNds,u,du,coords,et,cosd,zet,b_mb,b_pen)
  CALL shell2d_gmatrix(Nfunc,dNds,u,du,cosd,coords,et,zet,g1_mb,g2_mb,g_pen)
  !apply constitutive models
  CALL constitutive(NSTEP,time,dtime,LAYER,noel,igaus,jgaus,nprops,props,&
  & nden,den,ndep,dep,ndamg,damg,ifdam,coords,lambda,stress,ddsdde)

  K_aux1 = 0.d0
  DO i1=1,nnode     !loop on nodes of element (node i)
    DO i3=1,3             !loop on dofs
      DO i4=1,2           !loop on stress components
        DO i5=1,2         !loop on stress components
          K_aux1(i3,i4,i1) = b_mb(i5,i3,i1)*ddsdde(i5,i4) + K_aux1(i3,i4,i1)
        END DO
      END DO
    END DO
  END DO
  K_aux2 = 0.d0
  DO i1=1,nnode      !loop on nodes of element (node i)
    DO i2=1,nnode    !loop on nodes of element (node j)
      DO i3=1,3            !loop on dofs
        DO i4=1,3          !loop on dofs
          DO i5=1,2        !loop on stress components
            K_aux2(i3,i4,i1,i2) = K_aux1(i3,i5,i1)*b_mb(i5,i4,i2) &
            & + K_aux2(i3,i4,i1,i2)
          END DO
        END DO
      END DO
    END DO
  END DO
  g1_aux = stress(1)*g1_mb
  g2_aux = stress(2)*g2_mb
  g_aux = 0.d0
  DO i1=1,nnode          !loop on nodes of element (node i)
    DO i2=1,nnode        !loop on nodes of element (node j)
      DO i3=1,3                !loop on dofs
        DO i4=1,3              !loop on dofs
          g_aux(i3,i4,i1,i2) = b_pen(i3,i1)*b_pen(i4,i2) + g_aux(i3,i4,i1,i2)
        END DO
      END DO
    END DO
  END DO
  g_aux = g_aux + strain(3)*g_pen

  !internal stiffness matrix for membrane and bending
  K_gauss = K_aux2 + g1_aux + g2_aux + penal*g_aux
  K_gauss = K_gauss*coords(2)*leng*Dthick/2.d0

  R_gauss = 0.d0
  DO i1=1,nnode  !loop on nodes of element (node i)
    DO i3=1,3          !loop on dofs
      DO i4=1,2        !loop on stress components
        R_gauss(i3,i1) = b_mb(i4,i3,i1)*stress(i4) + R_gauss(i3,i1)
      END DO
    END DO
  END DO
  R_gauss = R_gauss + penal*b_pen*strain(3)
  R_gauss = R_gauss*coords(2)*leng*Dthick/2.d0

  !Cauchy Stress at this Gauss point
  gstre(1) = stress(1)*lambda(1)**2.d0
  gstre(2) = stress(2)*lambda(2)**2.d0
  !Strain at this Gauss point
  gstra(1) = strain(1)
  gstra(2) = strain(2)
  gstra(3) = strain(3)
  !Cauchy Stress at this Gauss point
  glamb(1) = lambda(1)
  glamb(2) = lambda(2)
  glamb(3) = 1.d0/(lambda(1)*lambda(2))

END SUBROUTINE shell2d_gauss
!******************************************************************************
!**              COMPUTATION OF STRETCH AT GAUSS POINT                       **
!******************************************************************************
 SUBROUTINE shell2d_stretch(u,du,coords,et,cosd,zeta,lambda,strain)
  IMPLICIT NONE
  !external variables
  REAL(kind=8),INTENT(IN) :: u(3),du(3),coords(2)  !u(nmdof)
  REAL(kind=8),INTENT(IN) :: et,cosd(2),zeta
  REAL(kind=8),INTENT(OUT) :: lambda(2),strain(3)
  !internal variables
  !stretch
  lambda(1) = SQRT((1.d0+du(1))**2.d0+du(2)**2.d0 &
   & -2.d0*zeta*((1.d0+du(1))*cos(u(3))+du(2)*sin(u(3)))*du(3))
  lambda(2) = SQRT((1.d0+et)**2.d0 &
          & + 2.d0*zeta*((1.d0+et)*sin(asin(cosd(2))-u(3))-cosd(2))/coords(2))
  !strains
  strain(1) = du(1)+0.5d0*(du(1)**2.d0+du(2)**2.d0) &
          & - zeta*((1.d0+du(1))*cos(u(3))+du(2)*sin(u(3)))*du(3)
  strain(2) = et + 0.5d0*et**2.d0 &
          & + zeta*((1.d0+et)*sin(asin(cosd(2))-u(3))-cosd(2))/coords(2)
  strain(3) = -(1.d0+du(1))*sin(u(3))+du(2)*cos(u(3))
END SUBROUTINE shell2d_stretch
!******************************************************************************
!**                DERIVATIVES SHAPE FUNCTION MATRIX                         **
!******************************************************************************
 SUBROUTINE shell2d_bmatrix(Nfunc,dNds,u,du,coords,et,cosd,zeta,b_mb,b_pen)
  IMPLICIT NONE
  !external variables
  REAL(kind=8),INTENT(IN) :: Nfunc(nnode),dNds(nnode)
  REAL(kind=8),INTENT(IN) :: u(3),du(3),coords(ndime),et,cosd(2),zeta
  REAL(kind=8),INTENT(OUT) :: b_mb(2,3,nnode),b_pen(3,nnode)
  !internal variables
  INTEGER(kind=4) :: i1
  !routine
  !cycle for B_mb
  DO i1=1,nnode
    b_mb(1,1,i1) = (1.d0+du(1) - zeta*du(3)*cos(u(3)))*dNds(i1)
    b_mb(1,2,i1) = (du(2) - zeta*du(3)*sin(u(3)))*dNds(i1)
    b_mb(1,3,i1) = zeta*((1.d0+du(1))*sin(u(3))-du(2)*cos(u(3)))*du(3)*Nfunc(i1) &
          & - zeta*((1.d0+du(1))*cos(u(3))+du(2)*sin(u(3)))*dNds(i1)
    b_mb(2,1,i1) = ((1.d0+et)*cosd(1)/coords(2) &
          & + zeta*cosd(1)*sin(asin(cosd(2))-u(3))/coords(2)**2.d0)*Nfunc(i1)
    b_mb(2,2,i1) = ((1.d0+et)*cosd(2)/coords(2) &
          & + zeta*cosd(2)*sin(asin(cosd(2))-u(3))/coords(2)**2.d0)*Nfunc(i1)
    b_mb(2,3,i1) = -zeta*(1.d0+et)*cos(asin(cosd(2))-u(3))*Nfunc(i1)/coords(2)
  END DO
  !cycle for B_pen
  DO i1=1,nnode
    b_pen(1,i1) = -sin(u(3))*dNds(i1)
    b_pen(2,i1) = cos(u(3))*dNds(i1)
    b_pen(3,i1) = -((1.d0+du(1))*cos(u(3))+du(2)*sin(u(3)))*Nfunc(i1)
  END DO

END SUBROUTINE shell2d_bmatrix
!******************************************************************************
!**       G1 MATRIX FOR LINEALIZATION OF VIRTUAL STRAINS                     **
!******************************************************************************
 SUBROUTINE shell2d_gmatrix(Nfunc,dNds,u,du,cosd,coords,et,zeta,g1_mb,g2_mb,g_pen)
  IMPLICIT NONE
  !external variables
  REAL(kind=8),INTENT(IN) :: Nfunc(nnode),dNds(nnode)
  REAL(kind=8),INTENT(IN) :: u(3),du(3),cosd(2),coords(2),et,zeta
  REAL(kind=8),INTENT(OUT) :: g1_mb(3,3,nnode,nnode)
  REAL(kind=8),INTENT(OUT) :: g2_mb(3,3,nnode,nnode)
  REAL(kind=8),INTENT(OUT) :: g_pen(3,3,nnode,nnode)
  !internal variables
  INTEGER(kind=4) :: i1,i2
  !routine
  !cycle for G1_ij
  DO i1=1,nnode
    DO i2=1,nnode
      g1_mb(1,1,i1,i2) = dNds(i1)*dNds(i2)
      g1_mb(1,2,i1,i2) = 0.d0
      g1_mb(1,3,i1,i2) = zeta*(du(3)*sin(u(3))*Nfunc(i2) &
      & - cos(u(3))*dNds(i2))*dNds(i1)
      g1_mb(2,1,i1,i2) = 0.d0
      g1_mb(2,2,i1,i2) = dNds(i1)*dNds(i2)
      g1_mb(2,3,i1,i2) = -zeta*(du(3)*cos(u(3))*Nfunc(i2) &
      & + sin(u(3))*dNds(i2))*dNds(i1)
      g1_mb(3,1,i1,i2) = zeta*(du(3)*sin(u(3))*Nfunc(i1) &
      & - cos(u(3))*dNds(i1))*dNds(i2)
      g1_mb(3,2,i1,i2) = -zeta*(du(3)*cos(u(3))*Nfunc(i1) &
      & + sin(u(3))*dNds(i1))*dNds(i2)
      g1_mb(3,3,i1,i2) = zeta*((1.d0+du(1))*du(3)*cos(u(3))*Nfunc(i1)*Nfunc(i2) &
              & + du(2)*du(3)*sin(u(3))*Nfunc(i1)*Nfunc(i2) &
              & + (1.d0+du(1))*sin(u(3))*Nfunc(i1)*dNds(i2) &
              & - du(2)*cos(u(3))*Nfunc(i1)*dNds(i2) &
              & + (1.d0+du(1))*sin(u(3))*dNds(i1)*Nfunc(i2) &
              & - du(2)*cos(u(3))*dNds(i1)*Nfunc(i2))
  !cycle for G2_ij
      g2_mb(1,1,i1,i2) = Nfunc(i1)*Nfunc(i2)*cosd(1)**2.d0/coords(2)**2.d0
      g2_mb(1,2,i1,i2) = Nfunc(i1)*Nfunc(i2)*cosd(1)*cosd(2)/coords(2)**2.d0
      g2_mb(1,3,i1,i2) = -zeta*cosd(1)*cos(asin(cosd(2)) &
      & - u(3))*Nfunc(i1)*Nfunc(i2)/coords(2)**2.d0
      g2_mb(2,1,i1,i2) = Nfunc(i1)*Nfunc(i2)*cosd(1)*cosd(2)/coords(2)**2.d0
      g2_mb(2,2,i1,i2) = Nfunc(i1)*Nfunc(i2)*cosd(2)**2.d0/coords(2)**2.d0
      g2_mb(2,3,i1,i2) = -zeta*cosd(2)*cos(asin(cosd(2)) &
      & - u(3))*Nfunc(i1)*Nfunc(i2)/coords(2)**2.d0
      g2_mb(3,1,i1,i2) = -zeta*cosd(1)*cos(asin(cosd(2)) &
      & - u(3))*Nfunc(i1)*Nfunc(i2)/coords(2)**2.d0
      g2_mb(3,2,i1,i2) = -zeta*cosd(2)*cos(asin(cosd(2)) &
      & - u(3))*Nfunc(i1)*Nfunc(i2)/coords(2)**2.d0
      g2_mb(3,3,i1,i2) = -zeta*(1.d0+et)*sin(asin(cosd(2)) &
      & - u(3))*Nfunc(i1)*Nfunc(i2)/coords(2)
    END DO
  END DO
  !cycle for Gpen_ij
  IF (nnode.GT.2) THEN
  !geometric stiffnes for non linear shape functions
    DO i1=1,nnode
      DO i2=1,nnode
        g_pen(1,1,i1,i2) = 0.d0
        g_pen(1,2,i1,i2) = 0.d0
        g_pen(1,3,i1,i2) = -cos(u(3))*dNds(i1)*Nfunc(i2)
        g_pen(2,1,i1,i2) = 0.d0
        g_pen(2,2,i1,i2) = 0.d0
        g_pen(2,3,i1,i2) = -sin(u(3))*dNds(i1)*Nfunc(i2)
        g_pen(3,1,i1,i2) = -cos(u(3))*dNds(i2)*Nfunc(i1)
        g_pen(3,2,i1,i2) = -sin(u(3))*dNds(i2)*Nfunc(i1)
        g_pen(3,3,i1,i2) = (1.d0+du(1))*sin(u(3))*Nfunc(i1)*Nfunc(i2) &
              & - du(2)*cos(u(3))*Nfunc(i1)*Nfunc(i2)
      END DO
    END DO
  ELSE
  !geometric stiffness for linear shape function with midpoint (Zienkiewics)
    DO i1=1,2             !nnode=2 in this case
      DO i2=1,2
        g_pen(1,1,i1,i2) = 0.d0
        g_pen(1,2,i1,i2) = 0.d0
        g_pen(1,3,i1,i2) = sin(asin(cosd(2))-u3B)
        g_pen(2,1,i1,i2) = 0.d0
        g_pen(2,2,i1,i2) = 0.d0
        g_pen(2,3,i1,i2) = cos(asin(cosd(2))-u3B)
        g_pen(3,1,i1,i2) = sin(asin(cosd(2))-u3B)
        g_pen(3,2,i1,i2) = cos(asin(cosd(2))-u3B)
        g_pen(3,3,i1,i2) = (1.d0+du(1))*sin(u3B) - du(2)*cos(u3B)
      END DO
    END DO
  END IF

END SUBROUTINE shell2d_gmatrix

END MODULE shell3d_mod
