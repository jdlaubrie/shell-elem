MODULE esets_mod
!******************************************************************************
!**     Module to handle SETs of elements, and iformation of elements        **
!******************************************************************************
 USE param_mod,ONLY: mnam,mset
 USE input_mod,ONLY: runend,lures
 IMPLICIT NONE
 INTEGER,PARAMETER :: nnode=2  !Number of nodes per element !ATTENTION
! INTEGER :: nelms !Number of elements sets

 ! Derived type for axisimetric shell element in 2D
 TYPE element00
  INTEGER(kind=4) :: numelem        ! Element label
  INTEGER(kind=4) :: nodelem(nnode)     ! Conectivities          !ATTENTION
  REAL(kind=8) :: length            ! Length
  REAL(kind=8) :: cosdir(2)         ! Director cosinus (cos,sin)
  TYPE(element00),POINTER :: next      ! pointer to next element
 END TYPE element00
 ! element set
 TYPE setelem00                         !list of nodes in a set
  CHARACTER(len=mnam) :: sname          !set name
  INTEGER(kind=4) :: nelem              !number of elements in the set
  TYPE(element00),POINTER :: head,tail  !pointer to first and last element
  TYPE(setelem00),POINTER :: next       !pointer to next element set
 END TYPE setelem00
 ! list of element sets
 TYPE elset_list
  INTEGER(kind=4) :: noelset              !number of element sets
  TYPE(setelem00),POINTER :: head,tail    !first and last names
 END TYPE elset_list
 ! derived type for a set name list
 TYPE set_label
  CHARACTER(len=mnam) :: sname      !set name
  INTEGER(kind=4) :: stype          !set type
  TYPE(set_label),POINTER :: next   !pointer to next set
 END TYPE set_label

 CHARACTER(len=mset),PARAMETER :: snames(3)=(/ 'node set   ', & !(1)
                                           &   'element set', & !(2)
                                           &   'load set   ' /) !(3)
 INTEGER(kind=4) :: n_names=0              !number of set names
 TYPE(set_label),POINTER :: snhead,sntail  !first and last names
 TYPE(elset_list) :: elsetlist

 CONTAINS
!******************************************************************************
!**              insert a name at the end of the list                        **
!******************************************************************************
  SUBROUTINE add_name(name,stype)
  IMPLICIT NONE
  !Dummy arguments
  CHARACTER(len=*),INTENT(IN) :: name
  INTEGER(kind=4),INTENT(IN) :: stype
  ! local
  INTEGER(kind=4) :: i
  LOGICAL :: found
  TYPE(set_label),POINTER :: new
  ! check if name was already used
   i = stype
   CALL search_name(name,found,i)
   IF (found) THEN
     WRITE(*,"(' label ',A,' already used for a ',A)") TRIM(name),&
            & TRIM(snames(stype))
     WRITE(lures,"(' label ',A,' already used for a ',A)",ERR=999) TRIM(name),&
            & TRIM(snames(stype))
     CALL runend('same name used for different objects')
   END IF
   ALLOCATE(new)                     !get memory and assign
   new%sname = name
   new%stype = stype
   IF (n_names==0) THEN           !if list is empty
     snhead => new                    !initializes list
     sntail => new                    !point to new name
     n_names = 1
   ELSE
     sntail%next => new               !point to new name
     sntail => new                    !new last name
     n_names = n_names + 1
   END IF

   RETURN
   999 CALL runend('')
  END SUBROUTINE add_name
!******************************************************************************
!**                 procedure searching a name                               **
!******************************************************************************
  SUBROUTINE search_name(name,found,stype)
  !Dummy arguments
  INTEGER(kind=4),INTENT(INOUT) :: stype
  CHARACTER(len=*),INTENT(IN)  :: name
  LOGICAL,INTENT(OUT) :: found
  ! local
  INTEGER(kind=4) :: i
  TYPE(set_label),POINTER :: addr
   found = .FALSE.          !initializes

   addr => snhead
   DO i=1,n_names
     IF (TRIM(name)==TRIM(addr%sname)) THEN   !label Found?
       IF (stype==0) THEN                     !for any set type
         found = .TRUE.                       !O.K.
         stype = addr%stype                   !note that different types
         EXIT                                 !may have the same name
       ELSE IF (stype==addr%stype) THEN       !specific type
         found = .TRUE.                       !O.K.
         EXIT                                 !
       END IF
     END IF
     addr => addr%next
   END DO
  END SUBROUTINE search_name
!******************************************************************************
!**         Initialization of elsetlist                                      **
!******************************************************************************
 SUBROUTINE ini_elset_list(list)
   TYPE(elset_list),INTENT(INOUT) :: list
   NULLIFY(list%head,list%tail)
   list%noelset = 0
 END SUBROUTINE ini_elset_list
!******************************************************************************
!**               Add element-set to the end of elsetlist                    **
!******************************************************************************
 SUBROUTINE add_elset_to_list(list,new)
  TYPE(elset_list),INTENT(INOUT) :: list
  TYPE(setelem00),POINTER :: new
   IF (list%noelset==0) THEN
     list%head => new
     list%tail => new
     nullify(list%tail%next)
   ELSE
     list%tail%next => new
     nullify(new%next)
     list%tail => new
   END IF
   list%noelset = list%noelset + 1
 END SUBROUTINE add_elset_to_list
!******************************************************************************
!**            Search a list of element in a set                             **
!******************************************************************************
 SUBROUTINE search_element_set(name,found,set)
  CHARACTER(len=*),INTENT(IN)  :: name
  LOGICAL,INTENT(OUT) :: found
  TYPE(setelem00),POINTER :: set
  ! local
  INTEGER(kind=4) :: i
  TYPE(setelem00),POINTER :: addr
  found = .FALSE.          !initializes
  ALLOCATE(set)

  addr => elsetlist%head                     !go to first set in list
  DO i=1,elsetlist%noelset                   !number of element sets
    IF (TRIM(name)==TRIM(addr%sname)) THEN   !label Found?
        found = .TRUE.                       !O.K.
        set => addr                          !export found set
        EXIT                                 !
    END IF
    addr => addr%next
  END DO
 END SUBROUTINE search_element_set
!******************************************************************************
!**         Initialization of list of element in a set                       **
!******************************************************************************
 SUBROUTINE ini_element_set(list)
  TYPE(setelem00),POINTER :: list
   ALLOCATE(list)
   NULLIFY(list%head,list%tail,list%next)
   list%nelem = 0
   list%sname = ''
 END SUBROUTINE ini_element_set
!******************************************************************************
!**               Add element to the end of element set                      **
!******************************************************************************
 SUBROUTINE add_elem00_to_set(list,new)
  TYPE(setelem00),POINTER :: list
  TYPE(element00),POINTER :: new
   IF (list%nelem==0) THEN
     list%head => new
     list%tail => new
     nullify(list%tail%next)
   ELSE
     list%tail%next => new
     nullify(new%next)
     list%tail => new
   END IF
   list%nelem = list%nelem + 1
 END SUBROUTINE add_elem00_to_set
END MODULE esets_mod
