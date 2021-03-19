SUBROUTINE geometry()
!-----------------------------------------------------------------------
!     READ nodal coordinates & nodal systems
!-----------------------------------------------------------------------
 USE param_mod,ONLY: mnam
 USE info_mod,ONLY: coord,coorc,coora,thick0,ratio0
 USE input_mod,ONLY: listen,exists,words,runend,getrea,get_name,param!,lures
 USE ctrl_mod,ONLY: npoin,nelem,ndime,ngaus
 USE nsets_mod
 USE esets_mod
 IMPLICIT NONE
 !--- Local variables
 INTEGER(kind=4) :: n,k
   !for nodes
 INTEGER(kind=4) :: nn
 CHARACTER(len=mnam) :: nsname
 TYPE(node),POINTER :: nodes          ! nodal data
   !for elements
 CHARACTER(len=mnam) :: elsnam
 TYPE(element00),POINTER :: elem
 TYPE(setelem00),POINTER :: elset

 !read initial geometry card and print header
 CALL listen('GEOMETRY')          !read a card
 !geometry card expected before node information
 IF (.not.exists('GEOMETRY')) CALL runend('GEOMETRY: GEOMETRY BLOCK EXPECTED')
 WRITE (lures,"(/,' G E O M E T R Y   D A T A ',/)",ERR=999)
 !****read geometry block
 CALL listen('GEOMETRY')          !read a card
 IF (exists('THICK')) THEN
   thick0=getrea('THICK',0.001d0,' Wall Thickness ...')
   ratio0=getrea('RATIO',0.5d0,' Media/Thickness Ratio ...')
 ELSE
   CALL runend('GEOMETRY: THICK VALUE EXPECTED')
 END IF
 !initialize values for a new problem
 CALL ini_list_nodes(nodelist)       !initialize ndi(nodal info) Data_Base
 CALL ini_elset_list(elsetlist)
 nelem = 0

 DO                                     !GLOBAL LOOP
   CALL listen('GEOMETRY')              !read a card
   IF (exists('ENDGEOME')) EXIT         !check if end control card read
   !*** Input of Nodal data SETs
   IF (exists('NODESET',k)) THEN        !check if set control card read
     nsname = get_name(posin=k,stype='NSET')        !set name
     !CALL add_name(nsname,1)           !add to names list
     ! *** READ nadal coordinates
     WRITE(lures,"(5X,'=============  nodes in set ',A,' =============')", &
             & ERR=999) TRIM(nsname)
     DO
       CALL listen('GEOMETRY')            !read a card
       IF (exists('ENDNODESET')) EXIT     !end of set read(to global loop)
       nn = INT(param(1))                 !node label
       IF (nn<=0) CALL runend('NODE label must be positive integer')
       ALLOCATE(nodes)                      !initialize the node
       nodes%label = nn                          !assign read data to the list
       nodes%coord(1:ndime) = param(2:ndime+1)   !orig. coord (ndime=2)
       nodes%coorc(1:ndime) = param(2:ndime+1)   !orig. coord (ndime=2)
       nodes%stress = 0.d0                       !stresses at node
       nodes%strain = 0.d0                       !strains at node
       WRITE(lures,"(i10,2f10.5)",ERR=999) nodes%label,nodes%coord(1:ndime)
       CALL add_node_to_list(nodelist,nodes) !add node to list of nodes
     END DO  !loop to read nodes in a set
   !*** Input of Elements data SETs
   ELSE IF (exists('ELEMSET',k)) THEN
     elsnam = get_name(posin=k,stype='ELSET')        !set name
     WRITE(lures,"(/' Element set named: ',A,' will be read')",ERR=999) TRIM(elsnam)
     CALL ini_element_set(elset)       !initializes a list of elements
     elset%sname = elsnam              !assign a name to set
     CALL add_name(elsnam,2)           !add names to list
     ! *** READ the element nodal connections
     WRITE(lures,"(/4x,'element        node numbers')",ERR=999)
     DO
       CALL listen('GEOMETRY')                  !read a card
       IF (exists('ENDELEMSET')) EXIT           !if key word END_ELEMENT read, exit loop
       ALLOCATE(elem)                           !reserve memory for data
       elem%numelem = INT(param(1))             !element label
       elem%nodelem(1:nnode) = INT(param(2:nnode+1))      !connectivities   !ATTENTION
       WRITE(lures,"(3x,i8,2i10)",ERR=999) elem%numelem,elem%nodelem
       nelem = nelem + 1
       CALL add_elem00_to_set(elset,elem) !add element to list
     END DO  !loop to read elements in a set
     CALL add_elset_to_list(elsetlist,elset)  !add set to the list
   ELSE                            !error in data input
     CALL runend('GEOMETRY: SET card for nodes or elements expected')
   END IF
 END DO  !loop to read sets of nodes and elements

!----- Initialize some nodes vairables and data base of nodes
 npoin = nodelist%length                !new number of nodes
 ALLOCATE(coord(ndime,npoin),coorc(ndime,npoin),coora(ndime,npoin))  !get memory for NPO_DB
 coord = 0.d0
 !nodes type to arrays
 nodes => nodelist%head             !go to top of the list of nodes
 DO n=1,npoin                       !for each node in the list
   coord(1:ndime,nodes%label) = nodes%coord(1:ndime)   !material coordinates
   coorc(1:ndime,nodes%label) = nodes%coorc(1:ndime)   !current coordinates
   nodes => nodes%next              !next node in the list
 END DO
 coora = coord               ! some auxiliar for previous coordinates

 !CALL dalloc_list_ndata(ndi)  ! deallocate all the temporary database

 RETURN
 999 CALL runend('')
 END SUBROUTINE geometry
