!******************************************************************************
!**               Assembly of Stiffness Matrix                               **
!******************************************************************************
 SUBROUTINE assembler(NSTEP,ldhead,nsload,time,dtime,Kaa,Kab,Kba,Kbb,Ra,Rb,Fa,Fb)
  USE param_mod,ONLY: midn
  USE input_mod,ONLY: runend
  USE ctrl_mod,ONLY: noeq,nvfix,nmdof,ndime
  USE info_mod,ONLY: ifpre1,displ,thick0,ratio0,coord,coora,nodelem
  USE esets_mod
  USE material_mod
  USE step_mod,ONLY: setload
  USE shell2d_mod,ONLY: shell2d_elem
  USE load_mod,ONLY: loads_elem
  IMPLICIT NONE
  !--Dummy arguments
  INTEGER(kind=4),INTENT(IN) :: nsload
  REAL(kind=8),INTENT(IN) :: time(2),dtime
  CHARACTER(len=midn),INTENT(IN) :: NSTEP
  TYPE(setload),TARGET :: ldhead
  REAL(kind=8),INTENT(OUT) :: Kaa(noeq,noeq),Kab(noeq,nvfix),Kba(nvfix,noeq),Kbb(nvfix,nvfix)
  REAL(kind=8),INTENT(OUT) :: Ra(noeq),Rb(nvfix),Fa(noeq),Fb(nvfix)
  !--Local arguments
  INTEGER(kind=4) :: ieset,ielem,i1,i2,i3,i4,nprops,nden,ndep,ndamg,noelem
  INTEGER(kind=4) :: ifdam(6),nodes(nnode)
  REAL(kind=8) :: dispelem(nmdof,nnode),coor(ndime,nnode),corp(ndime,nnode)
  REAL(kind=8) :: length,cosdir(2)
  REAL(kind=8) :: h0,hM0,hA0
  REAL(kind=8) :: K_elem(nmdof,nmdof,nnode,nnode),K_elem_in(nmdof,nmdof,nnode,nnode)
  REAL(kind=8) :: K_elem_ex(nmdof,nmdof,nnode,nnode)
  REAL(kind=8) :: R_elem(nmdof,nnode),Felem(nmdof,nnode)
  REAL(kind=8) :: R_elem_ex(nmdof,nnode),R_elem_in(nmdof,nnode)
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
  Fa = 0.d0                                !initializes global force vector
  Fb = 0.d0                                !initializes global force vector
  elset => elsetlist%head                      !pointer to first element set
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
        coor(i1,i2) = coord(i1,e%nodelem(i2))  !element  material coordinates
        corp(i1,i2) = coora(i1,e%nodelem(i2))  !element previous coordinates
      END DO
    END DO
    DO i1=1,nnode
      nodes(i1) = e%nodelem(i1)     !for external loads
    END DO
    noelem = e%numelem             !label of element
    length = e%length              !lenght of element
    cosdir = e%cosdir              !direction of element
    h0 = thick0                    !initial element thickness
    hM0 = ratio0*thick0            !initial element MEDIA thickness
    hA0 = (1.d0-ratio0)*thick0     !initial element ADVENTITIA thickness
    !LOOP to make conectivity
    DO i1=1,nnode
      nodelem(noelem,i1) = e%nodelem(i1)
    END DO
    !get element stiffness from internal energy
    CALL shell2d_elem(NSTEP,time,dtime,nprops,props,nden,den,ndep,dep,&
    & ndamg,damg,ifdam,coor,dispelem,length,cosdir,h0,hM0,hA0,noelem,&
    & K_elem_in,R_elem_in)
    !get element stiffness from loads
    CALL loads_elem(ldhead,nsload,time,coor,corp,cosdir,dispelem,nodes,K_elem_ex,R_elem_ex)
    !add element stiffnes (internal + loads)
    K_elem = K_elem_in - time(2)*K_elem_ex
    R_elem = R_elem_in - time(2)*R_elem_ex
    Felem = time(2)*R_elem_ex
    !assembly in global stiffness matrix
    DO i1=1,nmdof
      DO i2=1,nmdof
        DO i3=1,nnode
          DO i4=1,nnode
            IF (ifpre1(i1,e%nodelem(i3))>0.AND.ifpre1(i2,e%nodelem(i4))>0) THEN
              Kaa(ifpre1(i1,e%nodelem(i3)),ifpre1(i2,e%nodelem(i4))) = &
              & K_elem(i1,i2,i3,i4) + Kaa(ifpre1(i1,e%nodelem(i3)),ifpre1(i2,e%nodelem(i4)))
            ELSE IF (ifpre1(i1,e%nodelem(i3))>0.AND.ifpre1(i2,e%nodelem(i4))<0) THEN
              Kab(ifpre1(i1,e%nodelem(i3)),-ifpre1(i2,e%nodelem(i4))) = &
              & K_elem(i1,i2,i3,i4) + Kab(ifpre1(i1,e%nodelem(i3)),-ifpre1(i2,e%nodelem(i4)))
            ELSE IF (ifpre1(i1,e%nodelem(i3))<0.AND.ifpre1(i2,e%nodelem(i4))>0) THEN
              Kba(-ifpre1(i1,e%nodelem(i3)),ifpre1(i2,e%nodelem(i4))) = &
              & K_elem(i1,i2,i3,i4) + Kba(-ifpre1(i1,e%nodelem(i3)),ifpre1(i2,e%nodelem(i4)))
            ELSE IF (ifpre1(i1,e%nodelem(i3))<0.AND.ifpre1(i2,e%nodelem(i4))<0) THEN
              Kbb(-ifpre1(i1,e%nodelem(i3)),-ifpre1(i2,e%nodelem(i4))) = &
              & K_elem(i1,i2,i3,i4) + Kbb(-ifpre1(i1,e%nodelem(i3)),-ifpre1(i2,e%nodelem(i4)))
            END IF
          END DO
        END DO
      END DO
    END DO
    !assembly in global reaction vector
    DO i1=1,nmdof
      DO i3=1,nnode
        IF (ifpre1(i1,e%nodelem(i3))>0) THEN
          Ra(ifpre1(i1,e%nodelem(i3))) = R_elem(i1,i3) + Ra(ifpre1(i1,e%nodelem(i3)))
          Fa(ifpre1(i1,e%nodelem(i3))) = Felem(i1,i3) + Fa(ifpre1(i1,e%nodelem(i3)))
       ! ELSE IF (ifpre1(i1,e%nodelem(i3))<0) THEN
       !   Rb(-ifpre1(i1,e%nodelem(i3))) = Relem(i1,i3) + Rb(-ifpre1(i1,e%nodelem(i3)))
       !   Fb(-ifpre1(i1,e%nodelem(i3))) = Felem(i1,i3) + Fb(-ifpre1(i1,e%nodelem(i3)))
        END IF
      END DO
    END DO
    e => e%next                                  !pointer to next element
  END DO                                         !LOOP on element set
  ELSE
    CALL runend('ASSEMBLER: ELSET has not a Section')
  END IF
    elset => elset%next                          !pointer to next elset
  END DO                                         !LOOP on elset list

END SUBROUTINE assembler
