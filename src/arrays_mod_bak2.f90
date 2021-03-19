MODULE arrays_mod
 USE input_mod,ONLY: runend
 USE ctrl_mod,ONLY: noeq,nvfix,nmdof,npoin,ndime,ngaus,nteq,penal
 USE info_mod,ONLY: ifpre1,ifpre2,displ,thick,press,coord,stres,stran,lambd,nodelem
 USE esets_mod
 USE material_mod
 USE model_mod
 IMPLICIT NONE

 CONTAINS
!******************************************************************************
!**               Assembly of Stiffness Matrix                               **
!******************************************************************************
 SUBROUTINE arrays_assembly(NSTEP,tstep,dtime,Kaa,Kab,Kba,Kbb,Ra,Rb)
  IMPLICIT NONE
  !--Dummy arguments
  INTEGER(kind=4),INTENT(IN) :: tstep
  REAL(kind=8),INTENT(IN) :: dtime
  CHARACTER(len=5),INTENT(IN) :: NSTEP
  REAL(kind=8),INTENT(OUT) :: Kaa(noeq,noeq),Kab(noeq,nvfix),Kba(nvfix,noeq),Kbb(nvfix,nvfix)
  REAL(kind=8),INTENT(OUT) :: Ra(noeq),Rb(nvfix)
  !--Local arguments
  INTEGER(kind=4) :: ieset,ielem,i1,i2,i3,i4,nprops,nden,ndep,ndamg,noelem
  INTEGER(kind=4) :: ifdam(6)
  REAL(kind=8) :: dispelem(nmdof,nnode),coor(ndime,nnode),length,cosdir(2)
  REAL(kind=8) :: Kelem(nmdof,nmdof,nnode,nnode)
  REAL(kind=8) :: Relem(nmdof,nnode)
  REAL(kind=8),DIMENSION(:),ALLOCATABLE :: props,den,dep,damg
  LOGICAL :: found
  TYPE(element00),POINTER :: e
  TYPE(setelem00),POINTER :: elset
  TYPE(secti),POINTER :: sect

  Kaa = 0.d0                               !initializes global stiffness matrix
  Kab = 0.d0                               !initializes global stiffness matrix
  Kba = 0.d0                               !initializes global stiffness matrix
  Kbb = 0.d0                               !initializes global stiffness matrix
  Ra = 0.d0                                !initializes global reaction vector
  Rb = 0.d0                                !initializes global reaction vector
  elset => elsetlist%head                      !pointer to first elment set
  DO ieset=1,elsetlist%noelset                 !LOOP on elset list
  CALL search_section(elset%sname,found,sect)  !get section for this elset
  IF (found) THEN                              !Hhave elset a material?
  nprops = sect%matbas%nprop                   !number of material properties
  nden = sect%matbas%ndens                     !number of material densities
  ndep = sect%matbas%ndeps                     !number deposition stretches
  ndamg = sect%matbas%ndamg                    !number deposition stretches
  ALLOCATE(props(nprops),den(nden),dep(ndep),damg(ndamg))  !allocate properties array
  props = sect%matbas%prop                     !fill props with properties from material
  den = sect%matbas%dens                       !fill den with densities from material
  dep = sect%matbas%deps                       !fill dep with deposition stretch from material
  damg = sect%matbas%damg                      !fill dep with deposition stretch from material
  ifdam = sect%matbas%ifdam                    !fill ifdam with active damage
  e => elset%head                              !pointer to first element in the set
  DO ielem=1,elset%nelem                       !LOOP on element set
    !LOOP for element displacements
    DO i1=1,nmdof
      DO i2=1,nnode
        dispelem(i1,i2) = displ(i1,e%nodelem(i2))  !fill element displacements
      END DO
    END DO
    !LOOP for element coordinates
    DO i1=1,ndime
      DO i2=1,nnode
        coor(i1,i2) = coord(i1,e%nodelem(i2))     !fill element coordinates
      END DO
    END DO
    noelem = e%numelem                      !label of element
    length = e%length                       !lenght of element
    cosdir = e%cosdir
    !LOOP to make conectivity
    DO i1=1,nnode
      nodelem(noelem,i1) = e%nodelem(i1)
    END DO
    !get element stiffness
    CALL arrays_elem(NSTEP,tstep,dtime,nprops,props,nden,den,ndep,dep,ndamg,damg,ifdam,coor,&
            dispelem,length,cosdir,noelem,Kelem,Relem)
    !assembly in global stiffness matrix
    DO i1=1,nmdof
      DO i2=1,nmdof
        DO i3=1,nnode
          DO i4=1,nnode
            IF (ifpre1(i1,e%nodelem(i3))>0.AND.ifpre1(i2,e%nodelem(i4))>0) THEN
              Kaa(ifpre1(i1,e%nodelem(i3)),ifpre1(i2,e%nodelem(i4))) = &
              & Kelem(i1,i2,i3,i4) + Kaa(ifpre1(i1,e%nodelem(i3)),ifpre1(i2,e%nodelem(i4)))
            ELSE IF (ifpre1(i1,e%nodelem(i3))>0.AND.ifpre1(i2,e%nodelem(i4))<0) THEN
              Kab(ifpre1(i1,e%nodelem(i3)),-ifpre1(i2,e%nodelem(i4))) = &
              & Kelem(i1,i2,i3,i4) + Kab(ifpre1(i1,e%nodelem(i3)),-ifpre1(i2,e%nodelem(i4)))
            ELSE IF (ifpre1(i1,e%nodelem(i3))<0.AND.ifpre1(i2,e%nodelem(i4))>0) THEN
              Kba(-ifpre1(i1,e%nodelem(i3)),ifpre1(i2,e%nodelem(i4))) = &
              & Kelem(i1,i2,i3,i4) + Kba(-ifpre1(i1,e%nodelem(i3)),ifpre1(i2,e%nodelem(i4)))
            ELSE IF (ifpre1(i1,e%nodelem(i3))<0.AND.ifpre1(i2,e%nodelem(i4))<0) THEN
              Kbb(-ifpre1(i1,e%nodelem(i3)),-ifpre1(i2,e%nodelem(i4))) = &
              & Kelem(i1,i2,i3,i4) + Kbb(-ifpre1(i1,e%nodelem(i3)),-ifpre1(i2,e%nodelem(i4)))
            END IF
          END DO
        END DO
      END DO
    END DO
    !assembly in global reaction vector
    DO i1=1,nmdof
      DO i3=1,nnode
        IF (ifpre1(i1,e%nodelem(i3))>0) THEN
          Ra(ifpre1(i1,e%nodelem(i3))) = Relem(i1,i3) + Ra(ifpre1(i1,e%nodelem(i3)))
        ELSE IF (ifpre1(i1,e%nodelem(i3))<0) THEN
          Rb(-ifpre1(i1,e%nodelem(i3))) = Relem(i1,i3) + Rb(-ifpre1(i1,e%nodelem(i3)))
        END IF
      END DO
    END DO
    e => e%next                                  !pointer to next element
  END DO                                         !LOOP on element set
  ELSE
    CALL runend('ARRAYS: ELSET has not a Section')
  END IF
    elset => elset%next                          !pointer to next elset
  END DO                                         !LOOP on elset list

 END SUBROUTINE arrays_assembly
!******************************************************************************
!**               Elemental Stiffness Matrix                                 **
!******************************************************************************
 SUBROUTINE arrays_elem(NSTEP,tstep,dtime,nprops,props,nden,den,ndep,dep,ndamg,damg,ifdam,coor,&
                 disp,leng,cosd,noel,Kelem,Relem)
  IMPLICIT NONE
  !--Dummy arguments
  INTEGER(kind=4),INTENT(IN) :: tstep,nprops,nden,ndep,ndamg,noel,ifdam(6)
  REAL(kind=8),INTENT(IN) :: props(nprops),den(nden),dep(ndep),damg(ndamg)
  REAL(kind=8),INTENT(IN) :: coor(ndime,nnode),disp(nmdof,nnode)
  REAL(kind=8),INTENT(IN) :: dtime,leng,cosd(2)
  CHARACTER(len=5),INTENT(IN) :: NSTEP
  REAL(kind=8),INTENT(OUT) :: Kelem(nmdof,nmdof,nnode,nnode)
  REAL(kind=8),INTENT(OUT) :: Relem(nmdof,nnode)
  !--Local arguments
  INTEGER(kind=4) :: igaus,jgaus,i1,i2,i3,i4
  REAL(kind=8) :: gpoin(ngaus),gcoef(ngaus)
  REAL(kind=8) :: K_int(nmdof,nmdof,nnode,nnode),K_int_add(nmdof,nmdof,nnode,nnode)
  REAL(kind=8) :: R_int(nmdof,nnode),R_int_add(nmdof,nnode)
  REAL(kind=8) :: Kpres(ndime,ndime,nnode,nnode)
  REAL(kind=8) :: Rpres(ndime,nnode)
  REAL(kind=8) :: gstre(2),gstra(3),glamb(2)
  REAL(kind=8) :: stress(2),strain(3),lambda(2)
  REAL(kind=8) :: pressure

  CALL quadrature(gpoin,gcoef)          !get Gauss points and coefficients
  K_int_add = 0.d0                      !initialize stiffness integration
  R_int_add = 0.d0                      !initialize reaction integration
  DO igaus=1,ngaus                      !Gauss integration along element
    lambda = 0.d0
    stress = 0.d0
    strain = 0.d0
    DO jgaus=1,ngaus                       !Gauss integration along thickness
      CALL arrays_gauss(NSTEP,tstep,dtime,noel,igaus,jgaus,gpoin(igaus),gpoin(jgaus),nprops,props,&
              &nden,den,ndep,dep,ndamg,damg,ifdam,coor,disp,leng,cosd,K_int,R_int,glamb,gstra,gstre)
      K_int_add = gcoef(igaus)*gcoef(jgaus)*K_int + K_int_add !Gaussian quadrature
      R_int_add = gcoef(igaus)*gcoef(jgaus)*R_int + R_int_add !Gaussian quadrature
      !Stretch at iGauss
      lambda(1) = glamb(1) + lambda(1)
      lambda(2) = glamb(2) + lambda(2)
      !Cauchy Stress at iGauss
      stress(1) = gstre(1) + stress(1)
      stress(2) = gstre(2) + stress(2)
      !Configuration Strain at iGauss
      strain(1) = gstra(1) + strain(1)
      strain(2) = gstra(2) + strain(2)
      strain(3) = gstra(3) + strain(3)
    END DO         !along thickness
    !STRETCH
    lambd(1,noel,igaus) = lambda(1)/REAL(ngaus)
    lambd(2,noel,igaus) = lambda(2)/REAL(ngaus)
    !CAUCHY STRESS
    stres(1,noel,igaus) = stress(1)/REAL(ngaus)
    stres(2,noel,igaus) = stress(2)/REAL(ngaus)
    !CONFIGURATION STRAIN
    stran(1,noel,igaus) = strain(1)/REAL(ngaus)
    stran(2,noel,igaus) = strain(2)/REAL(ngaus)
    stran(3,noel,igaus) = strain(3)/REAL(ngaus)
  END DO         !along element
  K_int = K_int_add     !(3,3,2,2)
  R_int = R_int_add     !(3,2)
  IF ('HOMEO'.EQ.NSTEP) THEN
    pressure = press*dtime
  ELSE
    pressure = press
  END IF
  IF ('STENT'.EQ.NSTEP) THEN
    stiffness = stent_stiff
  ELSE
    stiffness = 0.d0
  END IF
  CALL pressure_load(pressure,coor,cosd,disp,Kpres,Rpres)         !load from pressure
  CALL stent_load(stiffness,radius,coor,cosd,disp,Kstent,Rstent)  !load from stent
  !get element stiffness
  DO i1=1,2
    DO i2=1,2
      DO i3=1,2
        DO i4=1,2
          Kelem(i1,i2,i3,i4) = Kelem(i1,i2,i3,i4) - Kpres(i1,i2,i3,i4) - Kstent(i1,i2,i3,i4)
        END DO
      END DO
    END DO
  END DO
  !get element reaction
  DO i1=1,2
    DO i2=1,2
      Relem(i1,i2) = Relem(i1,i2) - Rpres(i1,i2) - Rstent(i1,i2)
    END DO
  END DO
 END SUBROUTINE arrays_elem
!******************************************************************************
!**         Operation to get stiffness by Gauss point                        **
!******************************************************************************
 SUBROUTINE arrays_gauss(NSTEP,tstep,dtime,noel,igaus,jgaus,xi,zeta,nprops,props,nden,den,ndep,dep,&
                 &ndamg,damg,ifdam,coor,disp,leng,cosd,K_int,R_int,glamb,gstra,gstre)
  IMPLICIT NONE
  !--Dummy arguments
  INTEGER(kind=4),INTENT(IN) :: tstep,noel,igaus,jgaus,nprops,nden,ndep,ndamg,ifdam(6)
  REAL(kind=8),INTENT(IN) :: props(nprops),den(nden),dep(ndep),damg(ndamg)
  REAL(kind=8),INTENT(IN) :: coor(ndime,nnode),disp(nmdof,nnode)
  REAL(kind=8),INTENT(IN) :: dtime,leng,cosd(2),xi,zeta
  CHARACTER(len=5),INTENT(IN) :: NSTEP
  REAL(kind=8),INTENT(OUT) :: K_int(nmdof,nmdof,nnode,nnode)
  REAL(kind=8),INTENT(OUT) :: R_int(nmdof,nnode)
  REAL(kind=8),INTENT(OUT) :: glamb(2),gstra(3),gstre(2)
  !--Local arguments
  INTEGER(kind=4) :: i1,i2,i3,i4,i5
  REAL(kind=8) :: u(3),du(3),coords(2),et,zet
  REAL(kind=8) :: Nfunc(2),dNds(2)
  REAL(kind=8) :: b_mb(2,3,2),b_pen(3,2)
  REAL(kind=8) :: g1_mb(3,3,2,2),g2_mb(3,3,2,2),g_pen(3,3,2,2)
  REAL(kind=8) :: lambda(2),strain(3),stress(2),ddsdde(2,2)
  REAL(kind=8) :: K_aux1(3,2,2),K_aux2(3,3,2,2)
  REAL(kind=8) :: g1_aux(3,3,2,2),g2_aux(3,3,2,2),g_aux(3,3,2,2)
  REAL(kind=8) :: pressure
  CHARACTER(len=5) :: LAYER

  !Select layer
  IF (IFLAYER) THEN
    IF (zeta<0) THEN
      LAYER = 'MEDIA'
    ELSE
      LAYER = 'ADVEN'
    END IF
  ELSE
    LAYER = 'WALLA'
  END IF
  !variable along the thickness
  zet = zeta*thick/2.d0
  !shape function
  Nfunc(1) = 0.5d0*(1.d0-xi)       !linear shape function
  Nfunc(2) = 0.5d0*(1.d0+xi)
  dNds(1) = -1.d0/leng             !derivative of function
  dNds(2) = 1.d0/leng
  !degrees of freedom
  u(1) = Nfunc(1)*disp(1,1)+Nfunc(2)*disp(1,2) !displacement s at gauss point
  u(2) = Nfunc(1)*disp(2,1)+Nfunc(2)*disp(2,2) !displacement n at gauss point
  u(3) = Nfunc(1)*disp(3,1)+Nfunc(2)*disp(3,2) !rotation at gauss point
  !derivative of dofs
  du(1) = dNds(1)*disp(1,1)+dNds(2)*disp(1,2) !displacement s at gauss point
  du(2) = dNds(1)*disp(2,1)+dNds(2)*disp(2,2) !displacement n at gauss point
  du(3) = dNds(1)*disp(3,1)+dNds(2)*disp(3,2) !rotation at gauss point
  !coordinates at gauss point
  coords(1) = Nfunc(1)*coor(1,1)+Nfunc(2)*coor(1,2)! - zet*cosd(1) !z
  coords(2) = Nfunc(1)*coor(2,1)+Nfunc(2)*coor(2,2)! + zet*cosd(2) !r
!  midradius = Nfunc(1)*coor(2,1)+Nfunc(2)*coor(2,2)               !rm
  !auxiliar variable for stretch on n direction
  et = (u(1)*cosd(1) + u(2)*cosd(2))/coords(2)
  !et = (u(1)*cosd(2) - u(2)*cosd(1))/midradius
  !define pressure for gauss point
  IF ('HOMEO'.EQ.NSTEP) THEN
    pressure = 0.d0 !press*0.5d0*dtime!*(1.d0-zeta)
  ELSE
    pressure = 0.d0 !press*0.5d0!*(1.d0-zeta)
  END IF

  CALL stretch(u,du,coords,et,cosd,zet,lambda,strain)
  CALL bmatrix(Nfunc,dNds,u,du,coords,et,cosd,zet,b_mb,b_pen)
  CALL gmatrix(Nfunc,dNds,u,du,cosd,coords,et,zet,g1_mb,g2_mb,g_pen)
  CALL constitutive(NSTEP,tstep,dtime,IFLAYER,LAYER,noel,igaus,jgaus,nprops,props,nden,den,&
          &ndep,dep,ndamg,damg,ifdam,coords,lambda,pressure,stress,ddsdde)

  K_aux1 = 0.d0
  DO i1=1,2   !loop on nodes of element (node i)
    DO i3=1,3   !loop on dofs
      DO i4=1,2
        DO i5=1,2
          K_aux1(i3,i4,i1) = b_mb(i5,i3,i1)*ddsdde(i5,i4) + K_aux1(i3,i4,i1)
        END DO
      END DO
    END DO
  END DO
  K_aux2 = 0.d0
  DO i1=1,2   !loop on nodes of element (node i)
    DO i2=1,2   !loop on nodes of element (node j)
      DO i3=1,3   !loop on dofs
        DO i4=1,3   !loop on dofs
          DO i5=1,2
            K_aux2(i3,i4,i1,i2) = K_aux1(i3,i5,i1)*b_mb(i5,i4,i2) + K_aux2(i3,i4,i1,i2)
          END DO
        END DO
      END DO
    END DO
  END DO
  g1_aux = stress(1)*g1_mb
  g2_aux = stress(2)*g2_mb
  g_aux = 0.d0
  DO i1=1,2
    DO i2=1,2
      DO i3=1,3
        DO i4=1,3
          g_aux(i3,i4,i1,i2) = b_pen(i3,i1)*b_pen(i4,i2) + g_aux(i3,i4,i1,i2)
        END DO
      END DO
    END DO
  END DO
  g_aux = g_aux + strain(3)*g_pen

  !internal stiffness matrix for membrane and bending
  K_int = K_aux2 + g1_aux + g2_aux + penal*g_aux
  K_int = K_int*coords(2)*leng*thick/4.d0

  R_int = 0.d0
  DO i1=1,2  !loop on nodes
    DO i3=1,3  !loop on dofs
      DO i4=1,2
        R_int(i3,i1) = b_mb(i4,i3,i1)*stress(i4) + R_int(i3,i1)
      END DO
    END DO
  END DO
  R_int = R_int + penal*b_pen*strain(3)
  R_int = R_int*coords(2)*leng*thick/4.d0

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

 END SUBROUTINE arrays_gauss
!******************************************************************************
!**              COMPUTATION OF STRETCH AT GAUSS POINT                       **
!******************************************************************************
 SUBROUTINE stretch(u,du,coords,et,cosd,zeta,lambda,strain)
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
  !lambda(2) = SQRT((1.d0+et)**2.d0 &
  !        & + 2.d0*zeta*(cosd(1)-(1.d0+et)*cos(asin(cosd(2))-u(3)))/Rm)
  !strains
  strain(1) = du(1)+0.5d0*(du(1)**2.d0+du(2)**2.d0) &
          & - zeta*((1.d0+du(1))*cos(u(3))+du(2)*sin(u(3)))*du(3)
  strain(2) = et + 0.5d0*et**2.d0 &
          & + zeta*((1.d0+et)*sin(asin(cosd(2))-u(3))-cosd(2))/coords(2)
  !strain(2) = et + 0.5d0*et**2.d0 &
  !        & + zeta*(cosd(1)-(1.d0+et)*cos(asin(cosd(2))-u(3)))/Rm
  strain(3) = -(1.d0+du(1))*sin(u(3))+du(2)*cos(u(3))
 END SUBROUTINE stretch
!******************************************************************************
!**                DERIVATIVES SHAPE FUNCTION MATRIX                         **
!******************************************************************************
 SUBROUTINE bmatrix(Nfunc,dNds,u,du,coords,et,cosd,zeta,b_mb,b_pen)
  IMPLICIT NONE
  !external variables
  REAL(kind=8),INTENT(IN) :: Nfunc(2),dNds(2),u(3),du(3),coords(ndime)
  REAL(kind=8),INTENT(IN) :: et,cosd(2),zeta
  REAL(kind=8),INTENT(OUT) :: b_mb(2,3,2),b_pen(3,2)
  !internal variables
  INTEGER(kind=4) :: i1
  !routine
  !cycle for B_mb
  DO i1=1,2
    b_mb(1,1,i1) = (1.d0+du(1) - zeta*du(3)*cos(u(3)))*dNds(i1)
    b_mb(1,2,i1) = (du(2) - zeta*du(3)*sin(u(3)))*dNds(i1)
    b_mb(1,3,i1) = zeta*((1.d0+du(1))*sin(u(3))-du(2)*cos(u(3)))*du(3)*Nfunc(i1) &
          & - zeta*((1.d0+du(1))*cos(u(3))+du(2)*sin(u(3)))*dNds(i1)
    b_mb(2,1,i1) = ((1.d0+et)*cosd(1)/coords(2) &
          & + zeta*cosd(1)*sin(asin(cosd(2))-u(3))/coords(2)**2.d0)*Nfunc(i1)
    b_mb(2,2,i1) = ((1.d0+et)*cosd(2)/coords(2) &
          & + zeta*cosd(2)*sin(asin(cosd(2))-u(3))/coords(2)**2.d0)*Nfunc(i1)
    b_mb(2,3,i1) = -zeta*(1.d0+et)*cos(asin(cosd(2))-u(3))*Nfunc(i1)/coords(2)
    !b_mb(2,1,i1) = ((1.d0+et)*cosd(2)/Rm &
    !      & - zeta*cosd(2)*cos(asin(cosd(2))-u(3))/Rm**2.d0)*Nfunc(i1)
    !b_mb(2,2,i1) = (-(1.d0+et)*cosd(1)/Rm &
    !      & + zeta*cosd(1)*cos(asin(cosd(2))-u(3))/Rm**2.d0)*Nfunc(i1)
    !b_mb(2,3,i1) = zeta*(1.d0+et)*sin(asin(cosd(2))-u(3))*Nfunc(i1)/Rm
  END DO
  !cycle for B_pen
  DO i1=1,2
    b_pen(1,i1) = -sin(u(3))*dNds(i1)
    b_pen(2,i1) = cos(u(3))*dNds(i1)
    b_pen(3,i1) = -((1.d0+du(1))*cos(u(3))+du(2)*sin(u(3)))*Nfunc(i1)
  END DO

 END SUBROUTINE bmatrix
!******************************************************************************
!**       G1 MATRIX FOR LINEALIZATION OF VIRTUAL STRAINS                     **
!******************************************************************************
 SUBROUTINE gmatrix(Nfunc,dNds,u,du,cosd,coords,et,zeta,g1_mb,g2_mb,g_pen)
  IMPLICIT NONE
  !external variables
  REAL(kind=8),INTENT(IN) :: Nfunc(2),dNds(2),u(3),du(3),cosd(2),coords(2)
  REAL(kind=8),INTENT(IN) :: et,zeta
  REAL(kind=8),INTENT(OUT) :: g1_mb(3,3,2,2),g2_mb(3,3,2,2),g_pen(3,3,2,2)
  !internal variables
  INTEGER(kind=4) :: i1,i2
  !routine
  !cycle for G1_ij
  DO i1=1,2
    DO i2=1,2
      g1_mb(1,1,i1,i2) = dNds(i1)*dNds(i2)
      g1_mb(1,2,i1,i2) = 0.d0
      g1_mb(1,3,i1,i2) = zeta*(du(3)*sin(u(3))*Nfunc(i2)-cos(u(3))*dNds(i2))*dNds(i1)
      g1_mb(2,1,i1,i2) = 0.d0
      g1_mb(2,2,i1,i2) = dNds(i1)*dNds(i2)
      g1_mb(2,3,i1,i2) = -zeta*(du(3)*cos(u(3))*Nfunc(i2)+sin(u(3))*dNds(i2))*dNds(i1)
      g1_mb(3,1,i1,i2) = zeta*(du(3)*sin(u(3))*Nfunc(i1)-cos(u(3))*dNds(i1))*dNds(i2)
      g1_mb(3,2,i1,i2) = -zeta*(du(3)*cos(u(3))*Nfunc(i1)+sin(u(3))*dNds(i1))*dNds(i2)
      g1_mb(3,3,i1,i2) = zeta*((1.d0+du(1))*du(3)*cos(u(3))*Nfunc(i1)*Nfunc(i2) &
              & + du(2)*du(3)*sin(u(3))*Nfunc(i1)*Nfunc(i2) &
              & + (1.d0+du(1))*sin(u(3))*Nfunc(i1)*dNds(i2) &
              & - du(2)*cos(u(3))*Nfunc(i1)*dNds(i2) &
              & + (1.d0+du(1))*sin(u(3))*dNds(i1)*Nfunc(i2) &
              & - du(2)*cos(u(3))*dNds(i1)*Nfunc(i2))
    END DO
  END DO
  !cycle for G2_ij
  DO i1=1,2
    DO i2=1,2
      g2_mb(1,1,i1,i2) = Nfunc(i1)*Nfunc(i2)*cosd(1)**2.d0/coords(2)**2.d0
      g2_mb(1,2,i1,i2) = Nfunc(i1)*Nfunc(i2)*cosd(1)*cosd(2)/coords(2)**2.d0
      g2_mb(1,3,i1,i2) = -zeta*cosd(1)*cos(asin(cosd(2))-u(3))*Nfunc(i1)*Nfunc(i2)/coords(2)**2.d0
      g2_mb(2,1,i1,i2) = Nfunc(i1)*Nfunc(i2)*cosd(1)*cosd(2)/coords(2)**2.d0
      g2_mb(2,2,i1,i2) = Nfunc(i1)*Nfunc(i2)*cosd(2)**2.d0/coords(2)**2.d0
      g2_mb(2,3,i1,i2) = -zeta*cosd(2)*cos(asin(cosd(2))-u(3))*Nfunc(i1)*Nfunc(i2)/coords(2)**2.d0
      g2_mb(3,1,i1,i2) = -zeta*cosd(1)*cos(asin(cosd(2))-u(3))*Nfunc(i1)*Nfunc(i2)/coords(2)**2.d0
      g2_mb(3,2,i1,i2) = -zeta*cosd(2)*cos(asin(cosd(2))-u(3))*Nfunc(i1)*Nfunc(i2)/coords(2)**2.d0
      g2_mb(3,3,i1,i2) = -zeta*(1.d0+et)*sin(asin(cosd(2))-u(3))*Nfunc(i1)*Nfunc(i2)/coords(2)
      !g2_mb(1,1,i1,i2) = Nfunc(i1)*Nfunc(i2)*cosd(2)**2.d0/Rm**2.d0
      !g2_mb(1,2,i1,i2) = -Nfunc(i1)*Nfunc(i2)*cosd(1)*cosd(2)/Rm**2.d0
      !g2_mb(1,3,i1,i2) = zeta*cosd(2)*sin(asin(cosd(2))-u(3))*Nfunc(i1)*Nfunc(i2)/Rm**2.d0
      !g2_mb(2,1,i1,i2) = -Nfunc(i1)*Nfunc(i2)*cosd(1)*cosd(2)/Rm**2.d0
      !g2_mb(2,2,i1,i2) = Nfunc(i1)*Nfunc(i2)*cosd(2)**2.d0/Rm**2.d0
      !g2_mb(2,3,i1,i2) = -zeta*cosd(1)*sin(asin(cosd(2))-u(3))*Nfunc(i1)*Nfunc(i2)/Rm**2.d0
      !g2_mb(3,1,i1,i2) = zeta*cosd(2)*sin(asin(cosd(2))-u(3))*Nfunc(i1)*Nfunc(i2)/Rm**2.d0
      !g2_mb(3,2,i1,i2) = -zeta*cosd(1)*sin(asin(cosd(2))-u(3))*Nfunc(i1)*Nfunc(i2)/Rm**2.d0
      !g2_mb(3,3,i1,i2) = zeta*(1.d0+et)*cos(asin(cosd(2))-u(3))*Nfunc(i1)*Nfunc(i2)/Rm
    END DO
  END DO
  !cycle for Gpen_ij
  DO i1=1,2
    DO i2=1,2
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

 END SUBROUTINE gmatrix
!******************************************************************************
!**              Gaussian Quadrature (Point and coefficients                 **
!******************************************************************************
 SUBROUTINE quadrature(gpoin,gcoef)
  IMPLICIT NONE
  !--Dummy arguments
  REAL(kind=8),INTENT(OUT) :: gpoin(ngaus),gcoef(ngaus)

  SELECT CASE (ngaus)
  CASE (2)
    gpoin=(/-0.5773502,0.5773502/)
    gcoef=(/1.d0,1.d0/)
!  CASE (4)
!    gpoin=reshape((/-0.5773502,-0.5773502,0.5773502,0.5773502, &
!            & -0.5773502,0.5773502,0.5773502,-0.5773502/),(/4,2/))
!    gcoef=(/1.d0,1.d0,1.d0,1.d0/)
  CASE DEFAULT                         !
    CALL runend('QUADRATURE: NGAUS not implemented')
  END SELECT
 END SUBROUTINE quadrature
!******************************************************************************
!**                    FOLLOWING LOAD (PRESSURE)                             **
!******************************************************************************
SUBROUTINE pressure_load(pressure,coor,cosd,disp,Kpres,Rpres)
 IMPLICIT NONE
 !**dummy arguments
 REAL(kind=8),INTENT(IN) :: pressure,coor(2,2),cosd(2),disp(3,2)
 REAL(kind=8),INTENT(OUT) :: Kpres(2,2,2,2),Rpres(2,2)
 !**local arguments
 REAL(kind=8) :: z1,z2,r1,r2

 z1 = coor(1,1) + disp(1,1)*cosd(2) - disp(2,1)*cosd(1)! + 0.5d0*thick*cos(asin(cosd(2))-disp(3,1))
 z2 = coor(1,2) + disp(1,2)*cosd(2) - disp(2,2)*cosd(1)! + 0.5d0*thick*cos(asin(cosd(2))-disp(3,2))
 r1 = coor(2,1) + disp(1,1)*cosd(1) + disp(2,1)*cosd(2)! - 0.5d0*thick*sin(asin(cosd(2))-disp(3,1))
 r2 = coor(2,2) + disp(1,2)*cosd(1) + disp(2,2)*cosd(2)! - 0.5d0*thick*sin(asin(cosd(2))-disp(3,2))
 !Stiffness matrix for face-load
 Kpres(1,1,1,1) = 0.d0
 Kpres(1,2,1,1) = 2.d0*(r1-r2)+(2.d0*r1+r2)
 Kpres(2,1,1,1) = -(2.d0*r1+r2)
 Kpres(2,2,1,1) = 2.d0*(z2-z1)

 Kpres(1,1,1,2) = 0.d0
 Kpres(1,2,1,2) = (r1-r2)-(2.d0*r1+r2)
 Kpres(2,1,1,2) = 2.d0*r1+r2
 Kpres(2,2,1,2) = z2-z1

 Kpres(1,1,2,1) = 0.d0
 Kpres(1,2,2,1) = (r1-r2)+(r1+2.d0*r2)
 Kpres(2,1,2,1) = -(r1+2.d0*r2)
 Kpres(2,2,2,1) = z2-z1

 Kpres(1,1,2,2) = 0.d0
 Kpres(1,2,2,2) = 2.d0*(r1-r2)-(r1+2.d0*r2)
 Kpres(2,1,2,2) = r1+2.d0*r2
 Kpres(2,2,2,2) = 2.d0*(z2-z1)

 !Force vector for face-load
 Rpres(1,1) = (r1-r2)*(2.d0*r1+r2)
 Rpres(2,1) = (z2-z1)*(2.d0*r1+r2)
 Rpres(1,2) = (r1-r2)*(r1+2.d0*r2)
 Rpres(2,2) = (z2-z1)*(r1+2.d0*r2)

 !set pressure to vector and matrix
 Rpres = pressure*Rpres/6.d0
 Kpres = pressure*Kpres/6.d0
END SUBROUTINE pressure_load
!******************************************************************************
!**               FOLLOWING LOAD (STENT PSEUDO-CONTACT)                      **
!******************************************************************************
SUBROUTINE stent_load(stiff,radius,coor,cosd,disp,Kstent,Rstent)
 IMPLICIT NONE
 !**dummy arguments
 REAL(kind=8),INTENT(IN) :: stiff,radius,coor(2,2),cosd(2),disp(3,2)
 REAL(kind=8),INTENT(OUT) :: Kstent(2,2,2,2),Rstent(2,2)
 !**local arguments
 REAL(kind=8) :: z1,z2,r1,r2

 z1 = coor(1,1) + disp(1,1)*cosd(2) - disp(2,1)*cosd(1)! + 0.5d0*thick*cos(asin(cosd(2))-disp(3,1))
 z2 = coor(1,2) + disp(1,2)*cosd(2) - disp(2,2)*cosd(1)! + 0.5d0*thick*cos(asin(cosd(2))-disp(3,2))
 r1 = coor(2,1) + disp(1,1)*cosd(1) + disp(2,1)*cosd(2)! - 0.5d0*thick*sin(asin(cosd(2))-disp(3,1))
 r2 = coor(2,2) + disp(1,2)*cosd(1) + disp(2,2)*cosd(2)! - 0.5d0*thick*sin(asin(cosd(2))-disp(3,2))
 !Stiffness matrix for face-load
 Kpres(1,1,1,1) = 0.d0
 Kpres(1,2,1,1) = 2.d0*(r1-r2)+(2.d0*r1+r2)
 Kpres(2,1,1,1) = -(2.d0*r1+r2)
 Kpres(2,2,1,1) = 2.d0*(z2-z1)

 Kpres(1,1,1,2) = 0.d0
 Kpres(1,2,1,2) = (r1-r2)-(2.d0*r1+r2)
 Kpres(2,1,1,2) = 2.d0*r1+r2
 Kpres(2,2,1,2) = z2-z1

 Kpres(1,1,2,1) = 0.d0
 Kpres(1,2,2,1) = (r1-r2)+(r1+2.d0*r2)
 Kpres(2,1,2,1) = -(r1+2.d0*r2)
 Kpres(2,2,2,1) = z2-z1

 Kpres(1,1,2,2) = 0.d0
 Kpres(1,2,2,2) = 2.d0*(r1-r2)-(r1+2.d0*r2)
 Kpres(2,1,2,2) = r1+2.d0*r2
 Kpres(2,2,2,2) = 2.d0*(z2-z1)

 !Force vector for face-load
 Rpres(1,1) = (r1-r2)*(2.d0*r1+r2)
 Rpres(2,1) = (z2-z1)*(2.d0*r1+r2)
 Rpres(1,2) = (r1-r2)*(r1+2.d0*r2)
 Rpres(2,2) = (z2-z1)*(r1+2.d0*r2)

 !set pressure to vector and matrix
 Rpres = stiff*radius*Rpres/6.d0
 Kpres = stiff*radius*Kpres/6.d0
END SUBROUTINE stent_load

END MODULE arrays_mod
