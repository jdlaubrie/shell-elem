MODULE nsets_mod
!******************************************************************************
!**                     Module to handle SETs of nodes,                      **
!**                         and iformation of nodes                          **
!******************************************************************************
! USE param_mod,ONLY: mnam,mset,midn
! USE input_mod,ONLY: runend,lures
 USE ctrl_mod,ONLY: ndime
 IMPLICIT NONE
 ! Derived type for nodal information
 TYPE node                       ! Nodal DATA
  INTEGER(kind=4) :: label       ! Node label
  REAL(kind=8) :: coord(3)       ! initial coordinates
  REAL(kind=8) :: coorc(3)       ! current coordinates
  REAL(kind=8) :: stress(3)      ! stresses
  REAL(kind=8) :: strain(3)      ! strains
  TYPE(node),POINTER :: next
 END TYPE node
 ! list of nodes
 TYPE list_nodes                    !LIST of Nodal DATA
  INTEGER :: length                 !number of nodes in the list
  TYPE(node),POINTER :: head,tail   !pointer to first and last node
 END TYPE list_nodes

 TYPE(list_nodes) :: nodelist    ! nodal information, temporary database

 CONTAINS
!******************************************************************************
!**                     Initialization of list of nodes                      **
!******************************************************************************
 SUBROUTINE ini_list_nodes(list)
  TYPE(list_nodes),INTENT(INOUT) :: list
   NULLIFY(list%head,list%tail)
   list%length = 0
 END SUBROUTINE ini_list_nodes
!******************************************************************************
!**               Add a node to the end of general node list                 **
!******************************************************************************
 SUBROUTINE add_node_to_list(list,new)
  TYPE(list_nodes),INTENT(INOUT) :: list
  TYPE(node),POINTER :: new
   IF (list%length==0) THEN
     list%head => new
     list%tail => new
     nullify(list%tail%next)
   ELSE
     list%tail%next => new
     nullify(new%next)
     list%tail => new
   END IF
   list%length = list%length + 1
 END SUBROUTINE add_node_to_list

END MODULE nsets_mod
