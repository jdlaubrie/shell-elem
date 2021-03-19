MODULE esets_mod
!******************************************************************************
!**     Module to handle SETs of elements, and iformation of elements        **
!******************************************************************************
 USE param_mod,ONLY: mnam,mset,midn
 USE input_mod,ONLY: runend,lures
 IMPLICIT NONE
 INTEGER,PARAMETER :: nnode=2  !Number of nodes per element
 INTEGER :: nelms !Number of elements sets
 ! Derived type for axisimetric shell element
 TYPE elem00
  INTEGER(kind=4) :: numel        ! Element label
  INTEGER(kind=4) :: lnods(nnode) ! Conectivities
  TYPE(elem00),POINTER :: next    !pointer to next element
 END TYPE elem00
 ! element set
 TYPE elset00                        !list of nodes in a set
  CHARACTER(len=mnam) :: sname       !set name
  INTEGER(kind=4) :: nelem           !number of elements in the set
  TYPE(elem00),POINTER :: head,tail  !pointer to first and last element
  TYPE(elset00),POINTER :: next
 END TYPE elset00
 ! derived type for a set name list
 TYPE set_label
  CHARACTER(len=mnam) :: sname    !set name
  INTEGER(kind=4) :: stype        !set type
  TYPE(set_label),POINTER :: next
 END TYPE set_label

 CHARACTER(len=mset),PARAMETER :: snames(3)=(/ 'node set   ', & !(1)
                                           &   'element set', & !(2)
                                           &   'load set   ' /) !(3)
 INTEGER(kind=4) :: n_names=0              !number of set names
 TYPE(set_label),POINTER :: snhead,sntail  !first and last names
 TYPE(elset00),POINTER :: head,tail

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
!**                initialize a list of ELE02 sets                           **
!******************************************************************************
  SUBROUTINE ini_elem00(head,tail)
  TYPE (elset00),POINTER :: head,tail
   NULLIFY(head,tail)
  END SUBROUTINE ini_elem00
!******************************************************************************
!**       This subroutine adds data to the end of the list                   **
!******************************************************************************
  SUBROUTINE add_elem00(new,head,tail)
  !Dummy arguments
  TYPE(elset00),POINTER :: new,head,tail
  !Check if a list is empty
   IF (.NOT.ASSOCIATED(head)) THEN
     !list is empty, start it
     head => new
     tail => new
     NULLIFY(tail%next)
   ELSE
     !add a segment to the list
     tail%next => new
     NULLIFY(new%next)
     tail => new
   END IF
  END SUBROUTINE add_elem00
!******************************************************************************
!**                initialize a list of ELEM0 elements                        **
!******************************************************************************
  SUBROUTINE ini_elem00e(elset)
  TYPE(elset00),POINTER :: elset
   ALLOCATE(elset)                   !reserve memory for set
   NULLIFY(elset%head,elset%tail)    !initializes pointers
   elset%nelem = 0                   !no elements yet
   elset%sname = ''                  !no name

  END SUBROUTINE ini_elem00e
!******************************************************************************
!**         This subroutine adds data to the end of the list                 **
!******************************************************************************
  SUBROUTINE add_elem00e(new,head,tail)
  !Dummy arguments
  TYPE(elem00),POINTER :: new,head,tail
   !Check if a list is empty
   IF (.NOT.ASSOCIATED(head)) THEN       !list is empty, start it
     head => new                         !first element
     tail => new                         !last element
     NULLIFY(tail%next)                  !last element to nothing
   ELSE                                  !add a segment to the list
     tail%next => new                    !point to the new element
     NULLIFY(new%next)                   !nothing beyond the last
     tail => new                         !new last element
   END IF
  END SUBROUTINE add_elem00e

END MODULE esets_mod
