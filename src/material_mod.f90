MODULE material_mod
 USE param_mod,ONLY: mnam
 USE esets_mod,ONLY: setelem00
 IMPLICIT NONE
 ! Derived type for material
 TYPE mater
  CHARACTER(len=mnam) :: name
  INTEGER(kind=4) :: nprop           !number of material properties
  INTEGER(kind=4) :: ndens           !number of densities
  INTEGER(kind=4) :: ndeps           !number of deposition stretches
  INTEGER(kind=4) :: ndamg           !number of damage parameters
  INTEGER(kind=4) :: ifdam(6)        !vector with logical for damage
  REAL(kind=8),POINTER :: prop(:)    !vector with material properties
  REAL(kind=8),POINTER :: dens(:)    !vector with material densities
  REAL(kind=8),POINTER :: deps(:)    !vector with deposition stretches
  REAL(kind=8),POINTER :: damg(:)    !vector with damage parameters
  TYPE(mater),POINTER :: next
 END TYPE mater
 ! Derived type for list of materials
 TYPE mater_list
  INTEGER(kind=4) :: nmater
  TYPE(mater),POINTER :: head,tail
 END TYPE mater_list
 ! Derived type for material
 TYPE secti
  TYPE(mater),POINTER :: matbas
  TYPE(setelem00),POINTER :: setbas
  TYPE(secti),POINTER :: next
 END TYPE secti
 ! Derived type for list of materials
 TYPE secti_list
  INTEGER(kind=4) :: nsecti
  TYPE(secti),POINTER :: head,tail
 END TYPE secti_list

 TYPE(mater_list) :: materlist
 TYPE(secti_list) :: sectilist

! LOGICAL :: IFLAYER = .FALSE.  !dicide if there are layers or not, default NO

 CONTAINS
!******************************************************************************
!**         Initialization of list of materials                              **
!******************************************************************************
 SUBROUTINE ini_mater_list(list)
  TYPE(mater_list),INTENT(INOUT) :: list
   NULLIFY(list%head,list%tail)
   list%nmater = 0
 END SUBROUTINE ini_mater_list
!******************************************************************************
!**               Add material to the end of material list                   **
!******************************************************************************
 SUBROUTINE add_mater_to_list(list,new)
  TYPE(mater_list),INTENT(INOUT) :: list
  TYPE(mater),POINTER :: new
   IF (list%nmater==0) THEN
     list%head => new
     list%tail => new
     nullify(list%tail%next)
   ELSE
     list%tail%next => new
     nullify(new%next)
     list%tail => new
   END IF
   list%nmater = list%nmater + 1
 END SUBROUTINE add_mater_to_list
!******************************************************************************
!**            Search a material in materlist                                **
!******************************************************************************
 SUBROUTINE search_material(name,found,mat)
  CHARACTER(len=*),INTENT(IN)  :: name
  LOGICAL,INTENT(OUT) :: found
  TYPE(mater),POINTER :: mat
  ! local
  INTEGER(kind=4) :: i
  TYPE(mater),POINTER :: addr
  found = .FALSE.          !initializes
!  ALLOCATE(mat)

  addr => materlist%head                     !go to first material in list
  DO i=1,materlist%nmater                    !number of materials
    IF (TRIM(name)==TRIM(addr%name)) THEN    !label Found?
        found = .TRUE.                       !O.K.
        mat => addr                          !export found material
        EXIT                                 !
    END IF
    addr => addr%next
  END DO
 END SUBROUTINE search_material
!******************************************************************************
!**         Initialization of material                                       **
!******************************************************************************
 SUBROUTINE ini_mater(mate)
  TYPE(mater),POINTER :: mate
   ALLOCATE(mate)
   NULLIFY(mate%prop,mate%dens,mate%deps)
   mate%nprop = 0
   mate%ndens = 0
   mate%ndeps = 0
   mate%name = ''
 END SUBROUTINE ini_mater
!******************************************************************************
!**         Initialization of list of section                                **
!******************************************************************************
 SUBROUTINE ini_secti_list(list)
  TYPE(secti_list),INTENT(INOUT) :: list
   NULLIFY(list%head,list%tail)
   list%nsecti = 0
 END SUBROUTINE ini_secti_list
!******************************************************************************
!**               Add section to the end of section list                     **
!******************************************************************************
 SUBROUTINE add_secti_to_list(list,new)
  TYPE(secti_list),INTENT(INOUT) :: list
  TYPE(secti),POINTER :: new
   IF (list%nsecti==0) THEN
     list%head => new
     list%tail => new
     nullify(list%tail%next)
   ELSE
     list%tail%next => new
     nullify(new%next)
     list%tail => new
   END IF
   list%nsecti = list%nsecti + 1
 END SUBROUTINE add_secti_to_list
!******************************************************************************
!**            Search a section in sectilist                                 **
!******************************************************************************
 SUBROUTINE search_section(name,found,sect)
  CHARACTER(len=*),INTENT(IN)  :: name
  LOGICAL,INTENT(OUT) :: found
  TYPE(secti),POINTER :: sect
  ! local
  INTEGER(kind=4) :: i
  TYPE(secti),POINTER :: addr
  found = .FALSE.          !initializes
!  ALLOCATE(mat)

  addr => sectilist%head                           !go to first section in list
  DO i=1,sectilist%nsecti                          !number of sections
    IF (TRIM(name)==TRIM(addr%setbas%sname)) THEN  !label Found?
        found = .TRUE.                             !O.K.
        sect => addr                               !export found section
        EXIT                                       !
    END IF
    addr => addr%next
  END DO
 END SUBROUTINE search_section
!******************************************************************************
!**         Initialization of section                                        **
!******************************************************************************
 SUBROUTINE ini_secti(sect)
  TYPE(secti),POINTER :: sect
   ALLOCATE(sect)
   NULLIFY(sect%matbas,sect%setbas)
 END SUBROUTINE ini_secti

END MODULE material_mod
