MODULE arrays_mod
 USE input_mod,ONLY: runend
 USE ctrl_mod,ONLY: noeq,nvfix,nmdof,npoin,ndime,ngaus,nteq
 USE info_mod,ONLY: ifpre1,ifpre2,displ,thick,press,coord
 USE esets_mod
 USE material_mod
 IMPLICIT NONE

 CONTAINS
!******************************************************************************
!**               Assembly of Stiffness Matrix                               **
!******************************************************************************
 SUBROUTINE arrays_assembly(tstep,Kaa,Kab,Kba,Kbb,Ra,Rb)
  IMPLICIT NONE
  !--Dummy arguments
  INTEGER(kind=4),INTENT(IN) :: tstep
  REAL(kind=8),INTENT(OUT) :: Kaa(noeq,noeq),kab(noeq,nvfix),kba(nvfix,noeq),kbb(nvfix,nvfix)
  REAL(kind=8),INTENT(OUT) :: Ra(noeq),Rb(nvfix)
  !--Local arguments
  INTEGER(kind=4) :: ieset,ielem,i1,i2,i3,i4,nprops
  REAL(kind=8) :: dispelem(ndime,nnode),coor(ndime,nnode),length
  REAL(kind=8) :: Kelem(nmdof,nmdof,nnode,nnode)
  REAL(kind=8) :: Relem(nmdof,nnode)
  REAL(kind=8),DIMENSION(:),ALLOCATABLE :: props
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
  ALLOCATE(props(nprops))                      !allocate properties array
  props = sect%matbas%prop                     !fill props with properties from material
  e => elset%head                              !pointer to first element in the set
  DO ielem=1,elset%nelem                       !LOOP on element set
    !LOOP for element displacements
    DO i1=1,ndime
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
    length = e%length                                  !lenght of element
    !get element stiffness
    CALL arrays_elem(tstep,e,nprops,props,coor,dispelem,length,Kelem,Relem)
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
 SUBROUTINE arrays_elem(tstep,elem,nprops,props,coor,disp,leng,Kelem,Relem)
  IMPLICIT NONE
  !--Dummy arguments
  INTEGER(kind=4),INTENT(IN) :: tstep,nprops
  REAL(kind=8),INTENT(IN) :: props(nprops),coor(ndime,nnode),disp(ndime,nnode)
  REAL(kind=8),INTENT(IN) :: leng
  REAL(kind=8),INTENT(OUT) :: Kelem(nmdof,nmdof,nnode,nnode)
  REAL(kind=8),INTENT(OUT) :: Relem(nmdof,nnode)
  TYPE(element00),POINTER :: elem
  !--Local arguments
  INTEGER(kind=4) :: igaus
  REAL(kind=8) :: gpoin(ngaus),gcoef(ngaus)
  REAL(kind=8) :: K_int(nmdof,nmdof,nnode,nnode),K_int_add(nmdof,nmdof,nnode,nnode)
  REAL(kind=8) :: R_int(nmdof,nnode),R_int_add(nmdof,nnode)
  REAL(kind=8) :: Kpres(nmdof,nmdof,nnode,nnode)
  REAL(kind=8) :: Rpres(nmdof,nnode)

  CALL quadrature(gpoin,gcoef)               !get Gauss points and coefficients
  K_int_add = 0.d0                           !initialize stiffness integration
  R_int_add = 0.d0                           !initialize reaction integration
  DO igaus=1,ngaus
    !stiffness by Gauss point
    CALL arrays_gauss(tstep,elem,igaus,gpoin(igaus),nprops,props,coor,disp,leng,K_int,R_int)
    K_int_add = gcoef(igaus)*K_int + K_int_add !Gaussian quadrature
    R_int_add = gcoef(igaus)*R_int + R_int_add !Gaussian quadrature
  END DO
  CALL faceload(coor,disp,Kpres,Rpres)           !load from pressure
  Kelem = thick*K_int_add - Kpres                !get element stiffness
  Relem = thick*R_int_add - Rpres                !get element reaction
 END SUBROUTINE arrays_elem
!******************************************************************************
!**         Operation to get stiffness by Gauss point                        **
!******************************************************************************
 SUBROUTINE arrays_gauss(tstep,elem,igaus,xi,nprops,props,coor,disp,leng,K_int,R_int)
  IMPLICIT NONE
  !--Dummy arguments
  INTEGER(kind=4),INTENT(IN) :: tstep,igaus,nprops
  REAL(kind=8),INTENT(IN) :: props(nprops),coor(ndime,nnode),disp(ndime,nnode)
  REAL(kind=8),INTENT(IN) :: leng,xi
  REAL(kind=8),INTENT(OUT) :: K_int(nmdof,nmdof,nnode,nnode)
  REAL(kind=8),INTENT(OUT) :: R_int(nmdof,nnode)
  TYPE(element00),POINTER :: elem
  !--Local arguments
  INTEGER(kind=4) :: i1,i2,i3,i4,i5
  REAL(kind=8) :: coords(2),lambda(2)
  REAL(kind=8) :: b_matrix(2,2,2)
  REAL(kind=8) :: g1_matrix(2,2,2,2),g2_matrix(2,2,2,2),g1_aux(2,2,2,2),g2_aux(2,2,2,2)
  REAL(kind=8) :: stress(2),ddsdde(2,2)
  REAL(kind=8) :: K_aux1(2,2,2),K_aux2(2,2,2,2)

  CALL stretch(coor,disp,leng,xi,coords,lambda)
  CALL bmatrix(disp,leng,coords,xi,b_matrix)
  CALL g1matrix(leng,g1_matrix)
  CALL g2matrix(coords,xi,g2_matrix)
  CALL constitutive(tstep,nprops,props,coords,lambda,stress,ddsdde)

  K_aux1 = 0.d0
  DO i1=1,2   !loop on nodes of element (node i)
    DO i3=1,2
      DO i4=1,2
        DO i5=1,2
          K_aux1(i3,i4,i1) = b_matrix(i5,i3,i1)*ddsdde(i5,i4) + K_aux1(i3,i4,i1)
        END DO
      END DO
    END DO
  END DO
  K_aux2 = 0.d0
  DO i1=1,2   !loop on nodes of element (node i)
    DO i2=1,2   !loop on nodes of element (node j)
      DO i3=1,2
        DO i4=1,2
          DO i5=1,2
            K_aux2(i3,i4,i1,i2) = K_aux1(i3,i5,i1)*b_matrix(i5,i4,i2) + K_aux2(i3,i4,i1,i2)
          END DO
        END DO
      END DO
    END DO
  END DO
  g1_aux = stress(1)*g1_matrix
  g2_aux = stress(2)*g2_matrix

  K_int = K_aux2 + g1_aux + g2_aux
  K_int = K_int*coords(2)*leng/2.d0

  R_int = 0.d0
  DO i1=1,2
    DO i3=1,2
      DO i4=1,2
        R_int(i3,i1) = b_matrix(i4,i3,i1)*stress(i4) + R_int(i3,i1)
      END DO
    END DO
  END DO
  R_int = R_int*coords(2)*leng/2.d0
 
  !CAUCHY STRESS
  elem%stress(1,igaus) = stress(1)*lambda(1)**2
  elem%stress(2,igaus) = stress(2)*lambda(2)**2

 END SUBROUTINE arrays_gauss
!******************************************************************************
!**                          COMPUTATION OF STRETCH                          **
!******************************************************************************
 SUBROUTINE stretch(coor,disp,leng,xi,coords,lambda)
  IMPLICIT NONE
  !external variables
  REAL(kind=8),INTENT(IN) :: coor(ndime,nnode),disp(ndime,nnode),xi,leng
  REAL(kind=8),INTENT(OUT) :: lambda(ndime),coords(ndime)
  !internal variables
  real(8) :: u1,w1,u2,w2
  real(8),parameter :: half=0.5d0,one=1.d0,two=2.d0
  !routine
  u1 = disp(1,1)
  w1 = disp(2,1)
  u2 = disp(1,2)
  w2 = disp(2,2)
  coords(1) = 0.5d0*((1.d0-xi)*coor(1,1)+(1.d0+xi)*coor(1,2))
  coords(2) = 0.5d0*((1.d0-xi)*coor(2,1)+(1.d0+xi)*coor(2,2))
  lambda(1) = sqrt((1.d0+(-u1+u2)/leng)**2.d0+((-w1+w2)/leng)**2.d0)
  lambda(2) = 1.d0 + 0.5d0*((1.d0-xi)*w1+(1.d0+xi)*w2)/coords(2)
 END SUBROUTINE stretch
!******************************************************************************
!**                DERIVATIVES SHAPE FUNCTION MATRIX                         **
!******************************************************************************
 SUBROUTINE bmatrix(disp,leng,coords,xi,b_matrix)
  IMPLICIT NONE
  !external variables
  REAL(kind=8),INTENT(IN) :: coords(ndime),disp(ndime,nnode),xi,leng
  REAL(kind=8),INTENT(OUT) :: b_matrix(2,2,2)
  !internal variables
  real(8) :: u1,w1,u2,w2
  real(8),parameter :: half=0.5d0,one=1.d0,two=2.d0,zero=0.d0
  !routine
  u1 = disp(1,1)
  w1 = disp(2,1)
  u2 = disp(1,2)
  w2 = disp(2,2)

  b_matrix(1,1,1) = -(one+(-u1+u2)/leng)/leng
  b_matrix(1,2,1) = -(-w1+w2)/leng**two
  b_matrix(2,1,1) = zero
  b_matrix(2,2,1) = half*(one+half*((one-xi)*w1+(one+xi)*w2)/coords(2))*(one-xi)/coords(2)

  b_matrix(1,1,2) = (one+(-u1+u2)/leng)/leng
  b_matrix(1,2,2) = (-w1+w2)/leng**two
  b_matrix(2,1,2) = zero
  b_matrix(2,2,2) = half*(one+half*((one-xi)*w1+(one+xi)*w2)/coords(2))*(one+xi)/coords(2)
 END SUBROUTINE bmatrix
!******************************************************************************
!**       G1 MATRIX FOR LINEALIZATION OF VIRTUAL STRAINS                     **
!******************************************************************************
 SUBROUTINE g1matrix(leng,g1_matrix)
  IMPLICIT NONE
  !external variables
  REAL(kind=8),INTENT(IN) :: leng
  REAL(kind=8),INTENT(OUT) :: g1_matrix(2,2,2,2)
  !internal variables
  real(8),parameter :: zero=0.d0,one=1.d0
  !routine
  g1_matrix(1,1,1,1) = one/leng**2
  g1_matrix(1,2,1,1) = zero
  g1_matrix(2,1,1,1) = zero
  g1_matrix(2,2,1,1) = one/leng**2

  g1_matrix(1,1,1,2) = -one/leng**2
  g1_matrix(1,2,1,2) = zero
  g1_matrix(2,1,1,2) = zero
  g1_matrix(2,2,1,2) = -one/leng**2

  g1_matrix(1,1,2,1) = -one/leng**2
  g1_matrix(1,2,2,1) = zero
  g1_matrix(2,1,2,1) = zero
  g1_matrix(2,2,2,1) = -one/leng**2
 
  g1_matrix(1,1,2,2) = one/leng**2
  g1_matrix(1,2,2,2) = zero
  g1_matrix(2,1,2,2) = zero
  g1_matrix(2,2,2,2) = one/leng**2
 END SUBROUTINE g1matrix
!******************************************************************************
!**       G2 MATRIX FOR LINEALIZATION OF VIRTUAL STRAINS                     **
!******************************************************************************
 SUBROUTINE g2matrix(coords,xi,g2_matrix)
  IMPLICIT NONE
  !external variables
  REAL(kind=8),INTENT(IN) :: xi,coords(2)
  REAL(kind=8),INTENT(OUT) :: g2_matrix(2,2,2,2)
  !internal variables
  real(8),parameter :: zero=0.d0,one=1.d0,two=2.d0,four=4.d0
  !routine
  g2_matrix(1,1,1,1) = zero
  g2_matrix(1,2,1,1) = zero
  g2_matrix(2,1,1,1) = zero
  g2_matrix(2,2,1,1) = (one-xi)**2/(four*coords(2)**2)
  
  g2_matrix(1,1,1,2) = zero
  g2_matrix(1,2,1,2) = zero
  g2_matrix(2,1,1,2) = zero
  g2_matrix(2,2,1,2) = (one-xi**2)/(four*coords(2)**2)

  g2_matrix(1,1,2,1) = zero
  g2_matrix(1,2,2,1) = zero
  g2_matrix(2,1,2,1) = zero
  g2_matrix(2,2,2,1) = (one-xi**2)/(four*coords(2)**2)

  g2_matrix(1,1,2,2) = zero
  g2_matrix(1,2,2,2) = zero
  g2_matrix(2,1,2,2) = zero
  g2_matrix(2,2,2,2) = (one+xi)**2/(four*coords(2)**2)
 END SUBROUTINE g2matrix
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
  CASE DEFAULT
    CALL runend('QUADRATURE: NGAUS not implemented')
  END SELECT
 END SUBROUTINE quadrature
!******************************************************************************
!**                          CONSTITUTIVE RELATIONS                          **
!******************************************************************************
SUBROUTINE constitutive(tstep,nprops,props,coords,lambda,stress,ddsdde)
 IMPLICIT NONE
 !Dummy variables
 INTEGER(kind=4),INTENT(IN) :: tstep,nprops
 REAL(kind=8),INTENT(IN) :: props(nprops),lambda(2),coords(2)
 REAL(kind=8),INTENT(OUT) :: stress(2),ddsdde(2,2)
 !Local variables
 real(8),parameter :: zero=0.d0,half=0.5d0,one=1.d0,two=2.d0,four=4.d0,eight=8.d0
 real(8) :: c10
 !routine
 c10 = props(1)
 !SECOND PIOLA-KIRCHOFF STRESS
 stress(1) = -0.5d0*press/lambda(1)**2+c10*(one-one/(lambda(1)**4*lambda(2)**2))
 stress(2) = -0.5d0*press/lambda(2)**2+c10*(one-one/(lambda(1)**2*lambda(2)**4))
 !MATERIAL TANGENT MATRIX
 ddsdde(1,1) = 4.d0*c10/(lambda(1)**6*lambda(2)**2)+press/lambda(1)**4
 ddsdde(1,2) = 2.d0*c10/(lambda(1)*lambda(2))**4
 ddsdde(2,1) = 2.d0*c10/(lambda(1)*lambda(2))**4
 ddsdde(2,2) = 4.d0*c10/(lambda(1)**2*lambda(2)**6)+press/lambda(2)**4
END SUBROUTINE constitutive
!******************************************************************************
!**                    FOLLOWING LOAD                                        **
!******************************************************************************
SUBROUTINE faceload(coor,disp,Kpres,Rpres)
 IMPLICIT NONE
 !**dummy arguments
 REAL(kind=8),INTENT(IN) :: coor(2,2),disp(2,2)
 REAL(kind=8),INTENT(OUT) :: Kpres(2,2,2,2),Rpres(2,2)
 !**local arguments
 REAL(kind=8) :: z1,z2,r1,r2

 z1 = coor(1,1) + disp(1,1)
 z2 = coor(1,2) + disp(1,2)
 r1 = coor(2,1) + disp(2,1)
 r2 = coor(2,2) + disp(2,2)
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
 Rpres = press*Rpres/6.d0
 Kpres = press*Kpres/6.d0
END SUBROUTINE faceload

END MODULE arrays_mod
