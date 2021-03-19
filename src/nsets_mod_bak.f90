MODULE nsets_mod
!******************************************************************************
!**                     Module to handle SETs of nodes,                      **
!**                         and iformation of nodes                          **
!******************************************************************************
 USE param_mod,ONLY: mnam,mset,midn
 USE input_mod,ONLY: runend,lures
 IMPLICIT NONE
 INTEGER,PARAMETER :: ndime=2  !Number of dimension
 ! Derived type for nodal information
 TYPE ndata                      ! Nodal DATA
  INTEGER(kind=4) :: label       ! Node label
  REAL(kind=8) :: coord(ndime)   ! initial coordinates
 END TYPE ndata
 ! list nodes with full information
 TYPE node                           !Nodal information (full)
  TYPE(ndata) :: data
  TYPE(node),POINTER :: next
 END TYPE node
 ! list nodes just with labels
 TYPE node0                          !Nodal information (label only)
  INTEGER :: label                   !ID number of node
  TYPE(node0),POINTER :: next
 END TYPE node0
 ! list of nodes
 TYPE list_ndata                    !LIST of Nodal DATA
  INTEGER :: length                 !number of nodes in the list
  TYPE(node),POINTER :: head,tail   !pointer to first and last node
  TYPE(node),POINTER :: posic,anter !auxiliars pointers
 END TYPE list_ndata
 ! nodal set
 TYPE nset                         !list of nodes in a set
  CHARACTER(len=mnam) :: name      !set name
  INTEGER :: length                !number of nodes in the set
  TYPE(node0),POINTER :: head,tail  !pointer to first and last node
  TYPE(node0),POINTER :: posic,anter
  TYPE(nset),POINTER :: next
 END TYPE nset
 ! nodal set database
 TYPE nset_db                          !LIST of nodal sets
  INTEGER :: nsets                     !number of nodal sets
  TYPE(nset),POINTER :: head,tail      !pointer to first and last nodal set
  TYPE(nset),POINTER :: posic,anter
 END TYPE nset_db

 TYPE(nset_db),SAVE :: nsdb                !List of nodal sets

 CONTAINS
!******************************************************************************
!**                initializes list of nodal data                            **
!******************************************************************************
  SUBROUTINE ln_ini(ll)
  !Dummy arguments
  TYPE (list_ndata),INTENT(INOUT) :: ll
   NULLIFY(ll%head,ll%tail,ll%posic,ll%anter)
   ll%length = 0
  END SUBROUTINE ln_ini
!******************************************************************************
!**               initialization of nodal sets database                      **
!******************************************************************************
  SUBROUTINE nsdb_ini()
   NULLIFY(nsdb%head,nsdb%tail,nsdb%posic,nsdb%anter)
   nsdb%nsets = 0
  END SUBROUTINE nsdb_ini
!******************************************************************************
!**                    Initializes a list of nodes                           **
!******************************************************************************
  SUBROUTINE ns_ini(ns)
  !Dummy arguments
  TYPE(nset),POINTER :: ns
   ALLOCATE(ns)               !get memory
   NULLIFY(ns%head,ns%tail,ns%posic,ns%anter,ns%next)   !initializes pointers
   ns%length = 0              !no nodes yet
   ns%name   = ''             !no name
  END SUBROUTINE ns_ini
!******************************************************************************
!**            insert a list of node at the end of the list                  **
!******************************************************************************
  SUBROUTINE add_ns_at_end(new)
  !Dummy arguments
  TYPE(nset),POINTER :: new      !pointer to new list of nodes
   IF (nsdb%nsets==0) THEN       !if no previous list
     nsdb%head => new            !initializes database
   ELSE
     nsdb%anter => nsdb%tail     !point anter to present tail
     nsdb%anter%next => new      !updates pointer to next
   END IF
   nsdb%tail => new              !last list is new
   nsdb%nsets = nsdb%nsets + 1   !updates number of lists of nodes
   nsdb%posic => new             !point present list to new
  END SUBROUTINE add_ns_at_end
!******************************************************************************
!**               insert an node in the sorted list                          **
!******************************************************************************
  SUBROUTINE l_insert(ll,node)
  !Dummy arguments
  TYPE(list_ndata),INTENT(INOUT) :: ll
  TYPE(ndata),INTENT(IN) :: node
   CALL gter_eq(ll,node)           ! search the place of insertion
   ! the node is inserted
   IF (quasi_eol(ll,node)) THEN    ! node is not present in the list
     CALL insert_node(ll,node)
   ELSE                            ! existing node is assigned new value
     CALL put_ndata(ll,node)
   END IF
  END SUBROUTINE l_insert
!******************************************************************************
!**            sets the pointer posic on the list element => node            **
!**               posic is null if each of list elements < node              **
!******************************************************************************
  SUBROUTINE gter_eq(ll,node)
  !Dummy arguments
  TYPE(list_ndata),INTENT(INOUT) :: ll
  TYPE(ndata),INTENT(IN) :: node
  !local arguments
  TYPE(ndata) :: nodeaux
  nodeaux = get_ndata(ll)
  ! node is checked with posic
  ! node < posic search is started from the head of the list
   IF (quasi_eol(ll,node)) CALL l_head(ll)    !point to the first
   DO
     IF (eol(ll)) EXIT                   !If End Of List found exit
     IF (.NOT.(nodeaux%label<node%label)) EXIT !If ll%posic%label < node%label
     CALL l_next (ll)                    !go to next node
   END DO
  END SUBROUTINE gter_eq
!******************************************************************************
!**            sets the pointer posic on the head of the list                **
!******************************************************************************
  SUBROUTINE l_head(ll)
  !Dummy arguments
  TYPE(list_ndata),INTENT(INOUT) :: ll
   NULLIFY(ll%anter)    ! head has no preceding element
   ll%posic => ll%head  ! posic points to head also
  END SUBROUTINE l_head
!******************************************************************************
!**        moves the pointer posic on the next element of the list           **
!******************************************************************************
  SUBROUTINE l_next(ll,iostat)
  !Dummy arguments
  TYPE(list_ndata),INTENT(INOUT) :: ll
  INTEGER(kind=4),INTENT(OUT),OPTIONAL :: iostat
   IF (eol(ll)) THEN                  !if at the end
     iostat = -1                      !error
   ELSE
     ll%anter => ll%posic             !point to previous point
     ll%posic => ll%posic%next        !point to next point
     IF (PRESENT(iostat)) iostat = 0  !O.K.
   END IF
  END SUBROUTINE l_next
!******************************************************************************
!**             insert an node in the list just before posic:                **
!**     at the head or in the middle, or at the end (if posic nullified)     **
!******************************************************************************
  SUBROUTINE insert_node(ll,l_elt)
  !Dummy arguments
  TYPE(list_ndata),INTENT(INOUT) :: ll
  TYPE(ndata),INTENT(IN) :: l_elt
  ! local
  TYPE(node),POINTER :: new
   IF (eol(ll)) THEN                  ! if at the end
     CALL add_nd_at_end(ll,l_elt)     ! insert at the end
   ELSE
     IF (.NOT.ASSOCIATED(ll%anter)) THEN  !if at the beginning
       CALL insert_at_head(ll,l_elt)       !insert as first
     ELSE                               ! if in the middle of the list
       new => m_alloc(l_elt,ll%posic)   ! reserve space
       ll%anter%next => new             ! point previous pointer to present
       ll%posic => new                  ! point actual to present
       ll%length = ll%length + 1        ! increase number of nodes in list
     END IF
   END IF
  END SUBROUTINE insert_node
!******************************************************************************
!**           insert a node at the end of the list                           **
!******************************************************************************
  SUBROUTINE add_nd_at_end(ll,l_elt)
  !Dummy arguments
  TYPE(list_ndata),INTENT(INOUT) :: ll
  TYPE(ndata),INTENT(IN) :: l_elt
  ! local
  TYPE(node),POINTER :: new
   new => m_alloc(l_elt)           !reserve space
   IF ( ll%length == 0 ) THEN      !if list is empty
     ll%head => new                !initializes list
   ELSE                            !if nodes already exists
     ll%anter => ll%tail           !point to present last
     ll%tail%next => new           !point last to new node
   END IF
   ll%tail => new                  !keep position of last
   ll%length = ll%length + 1       !increase node counter
   ll%posic => new                 !point present to new
  END SUBROUTINE add_nd_at_end
!******************************************************************************
!**           insert a node at the head of the list                          **
!******************************************************************************
  SUBROUTINE insert_at_head(ll,l_elt)
  !Dummy arguments
  TYPE(list_ndata),INTENT(INOUT) :: ll
  TYPE(ndata),INTENT(IN) :: l_elt
  ! local
  !TYPE (node), POINTER :: new
   IF (empty(ll)) THEN               ! If list is empty
     CALL add_nd_at_end(ll,l_elt)    ! insert at the end
   ELSE
     ll%head => m_alloc(l_elt, ll%head)   ! reserve space
     ll%length = ll%length + 1            ! increase number of nodes in list
     CALL l_head (ll)                     ! point to first
   END IF
  END SUBROUTINE insert_at_head
!******************************************************************************
!**           put data stored in new_value in posic                          **
!******************************************************************************
  SUBROUTINE put_ndata(ll,new_value,iostat)
  !Dummy arguments
  TYPE(list_ndata),INTENT(INOUT) :: ll
  TYPE(ndata),INTENT(IN) :: new_value
  INTEGER(kind=4),INTENT(OUT),OPTIONAL :: iostat
   IF (eol(ll)) THEN                    !if End Of the List
     IF (PRESENT(iostat)) iostat = -1   !errpr
   ELSE
     ll%posic%data = new_value          !assign
     IF (PRESENT(iostat)) iostat = 0    !O.K.
   END IF
  END SUBROUTINE put_ndata
!******************************************************************************
!**              insert a node at the end of the list                        **
!******************************************************************************
  SUBROUTINE add_at_end(ns,ns_elt)
  !Dummy arguments
  TYPE(nset),INTENT(INOUT) :: ns
  INTEGER(kind=4),INTENT(IN) :: ns_elt
  ! local
  TYPE(node0),POINTER :: new
   new => n_alloc(ns_elt)             !get memory and assign
   IF (ns%length==0) THEN             !if list is empty
     ns%head => new                   !initializes list
   ELSE
     ns%anter => ns%tail              !keep pointer to previous last node
     ns%tail%next => new              !new last node
   END IF
   ns%tail => new                     !updates pointer to last node
   ns%length = ns%length + 1          !updates number of nodes in the list
   ns%posic => new                    !updates pointer to current node
  END SUBROUTINE add_at_end
!******************************************************************************
!**      deallocates all the list - deleting element from end to head        **
!******************************************************************************
  SUBROUTINE dalloc_list_ndata(ll)
  !Dummy arguments
  TYPE(list_ndata),INTENT(INOUT) :: ll
   ! local
   INTEGER(kind=4) :: i,iostat,length
   length = ll%length
   CALL l_head(ll)          !let's use head
   DO i = 1,length
     !ll%posic => ll%tail   !instead of tail
     CALL delete_nd(ll,iostat)
     IF (iostat==-1) EXIT
   END DO
  END SUBROUTINE dalloc_list_ndata
!******************************************************************************
!**               deletes the node pointed with posic                        **
!**     posic is redirected on the succeeding node, or nullified if eol      **
!******************************************************************************
  SUBROUTINE delete_nd(ll,iostat)
  !Dummy arguments
  TYPE(list_ndata),INTENT(INOUT) :: ll
  INTEGER (kind=4),INTENT(OUT),OPTIONAL :: iostat
  ! local
  TYPE(node),POINTER :: addr,addr_next
   IF (eol(ll)) THEN       ! IF at the End Of the List
     iostat = -1             ! error
   ELSE
     addr => ll%posic        ! point to present node
     addr_next => addr%next  ! point to next node in the list
     IF (.NOT.ASSOCIATED(ll%anter)) THEN   !if no previous node ==> head
       ll%head => addr_next  ! head  of the list point to posic%next
     ELSE
       ll%anter%next => addr_next  !points to next node of the deleted
     END IF
     ll%posic => addr_next     ! posic redirected on the succeeding node
     IF (.NOT.ASSOCIATED(addr_next)) THEN
       ll%tail => ll%anter     !last node in the list deleted
       ll%posic => ll%head     !point to first node
       NULLIFY(ll%anter)
     END IF
     ll%length = ll%length - 1 ! update nodes counter
     CALL m_free(addr)         ! release memory of deleted node
     IF (PRESENT(iostat)) iostat = 0
   END IF
  END SUBROUTINE delete_nd
!******************************************************************************
!**            frees memory - deallocates on element of the list             **
!** simplified with respect to "Structures de donnes..." - pile is not used  **
!******************************************************************************
  SUBROUTINE m_free(adr)
  !Dummy arguments
  TYPE(node),POINTER :: adr
   DEALLOCATE (adr)
  END SUBROUTINE m_free
!******************************************************************************
!**              to distinguish the end and middle of the list               **
!**        when the posic pointer of the list points "just after" node       **
!******************************************************************************
  LOGICAL FUNCTION quasi_eol(ll,node)
  !Dummy arguments
  TYPE(list_ndata),INTENT(INOUT) :: ll
  TYPE(ndata),INTENT(IN) :: node
  !local arguments
  TYPE(ndata) :: nodeaux
  nodeaux = get_ndata(ll)
  ! this Function assumes that labels are sorted (FF)
  IF (eol(ll)) THEN          !if the last element
    quasi_eol = .TRUE.       !obviously true
  ELSE
    quasi_eol = node%label<nodeaux%label    ! get_ndata(list) pointed with posic
  END IF
  END FUNCTION quasi_eol
!******************************************************************************
!**                  test End of List for posic                              **
!******************************************************************************
  LOGICAL FUNCTION eol(ll)
  !Dummy arguments
  TYPE(list_ndata),INTENT(INOUT) :: ll
   eol = .NOT.ASSOCIATED(ll%posic)
  END FUNCTION eol
!******************************************************************************
!**                 gets data stored in posic                                **
!******************************************************************************
  TYPE(ndata) FUNCTION get_ndata(ll,iostat)
  !Dummy arguments
  TYPE(list_ndata),INTENT(INOUT) :: ll
  INTEGER(kind=4),INTENT(OUT),OPTIONAL :: iostat
   IF (eol(ll)) THEN
     IF (PRESENT(iostat)) iostat = -1
   ELSE
     get_ndata = ll%posic%data
     IF (PRESENT(iostat)) iostat = 0
   END IF
  END FUNCTION get_ndata
!******************************************************************************
!**             allocates an element of the list                             **
!******************************************************************************
  FUNCTION m_alloc(val,adr)
  !Dummy arguments
  TYPE(node),POINTER :: m_alloc
  TYPE(ndata),INTENT(IN) :: val
  TYPE(node),POINTER,OPTIONAL :: adr
   ALLOCATE(m_alloc)                !get memory
   m_alloc%data = val               !store values
   IF (PRESENT(adr)) THEN
     m_alloc%next => adr            !point to address
   ELSE
     NULLIFY(m_alloc%next)          !point to nothing
   END IF
  END FUNCTION m_alloc
!******************************************************************************
!**             allocates a node and assign value                            **
!******************************************************************************
  FUNCTION n_alloc(val)
  !Dummy arguments
  TYPE(node0),POINTER :: n_alloc
  INTEGER(kind=4),INTENT(IN) :: val
   ALLOCATE(n_alloc)            ! gets memory
   n_alloc%label = val           ! assign value
   NULLIFY(n_alloc%next)
  END FUNCTION n_alloc
!******************************************************************************
!**              test if List is empty                                       **
!******************************************************************************
  LOGICAL FUNCTION empty(ll)
  !Dummy arguments
  TYPE(list_ndata),INTENT(IN) :: ll
   empty = ll%length == 0
  END FUNCTION empty
END MODULE nsets_mod
