SUBROUTINE material()
!-----------------------------------------------------------------------
!     READ nodal coordinates & nodal systems
!-----------------------------------------------------------------------
 USE input_mod,ONLY: listen,exists,words,runend,getint,get_name,param,getrea,lures
 USE param_mod,ONLY: midn
 USE esets_mod
 USE material_mod
 USE history_mod,ONLY: gnr
 IMPLICIT NONE
 !--- Local variables
 INTEGER(kind=4) :: k,n,nprop,ndens,ndeps,ndamg
 CHARACTER(len=mnam) :: matnam,auxchar,setaux,mataux
 CHARACTER(len=20) :: string1,string2,num
 LOGICAL :: found
 TYPE(secti),POINTER :: sect
 TYPE(mater),POINTER :: mate
 TYPE(setelem00),POINTER :: elset

 !read initial material card and print header
 CALL listen('MATERIAL')
 !material card expected before node information
 IF (.not.exists('MATERIAL')) CALL runend('MATERIAL: MATERIAL BLOCK EXPECTED')
 WRITE (lures,"(/,' M A T E R I A L   P R O P E R T I E S ',/)",ERR=999)
 CALL ini_mater_list(materlist)               !initializes list of materials

 !***read material block
 DO
   CALL listen('MATERIAL')                    !read a line
   IF (exists('ENDMATER')) EXIT               !end of data => exit
   IF (exists('NAME',k)) THEN                   !chek if material card read
     matnam = get_name(posin=k,stype='MATER')
     WRITE(lures,"(/' Material name: ',A,' will be read')",ERR=999) TRIM(matnam)
     nprop = getint('NPROP',1,' Number of Constants ...')
     ndens = getint('NDENS',0,' Number of Densities ...')
     ndeps = getint('NDEPS',0,' Number of Deposition Stretch ...')
     ndamg = getint('NDAMG',0,' Number of Damage Parameters ...')
!     IF (exists('LAYER')) IFLAYER = .TRUE.
     CALL ini_mater(mate)
     mate%name = matnam          !material name
     mate%nprop = nprop          !number of material properties
     mate%ndens = ndens          !number of densities
     mate%ndeps = ndeps          !number of depositions stretches
     mate%ndamg = ndamg          !number of damage properties
     ALLOCATE(mate%prop(nprop),mate%dens(ndens),mate%deps(ndeps),mate%damg(ndamg))
     !block to read material properties
     CALL listen('MATERIAL')
     DO n=1,nprop
       SELECT CASE (n)
       CASE (1:9)
         write(num,"(i1.1)") n
       CASE (10:99)
         write(num,"(i2.2)") n
       CASE DEFAULT
         CALL runend('Wrong number of properties')
       END SELECT
       string1 = 'PROP'//TRIM(num)
       string2 = ' Property '//TRIM(num)//' ...'
       mate%prop(n) = getrea(TRIM(string1),0.d0,TRIM(string2))
     END DO
     !block to read material densities
     CALL listen('MATERIAL')
     DO n=1,ndens
       SELECT CASE (n)
       CASE (1:9)
         write(num,"(i1.1)") n
       CASE (10:99)
         write(num,"(i2.2)") n
       CASE DEFAULT
         CALL runend('Wrong number of densities')
       END SELECT
       string1 = 'DEN'//TRIM(num)
       string2 = ' Density '//TRIM(num)//' ...'
       mate%dens(n) = getrea(TRIM(string1),1.d0,TRIM(string2))
     END DO
     !block to read deposition stretches
     CALL listen('MATERIAL')
     DO n=1,ndeps
       SELECT CASE (n)
       CASE (1:9)
         write(num,"(i1.1)") n
       CASE (10:99)
         write(num,"(i2.2)") n
       CASE DEFAULT
         CALL runend('Wrong number of depostion stretches')
       END SELECT
       string1 = 'DEP'//TRIM(num)
       string2 = ' Deposition Stretch '//TRIM(num)//' ...'
       mate%deps(n) = getrea(TRIM(string1),1.d0,TRIM(string2))
     END DO
     !block to read growth and remodeling parameters
     CALL listen('MATERIAL')
     DO n=1,4
       SELECT CASE (n)
       CASE (1:9)
         write(num,"(i1.1)") n
       CASE (10:99)
         write(num,"(i2.2)") n
       CASE DEFAULT
         CALL runend('Wrong number of Growth and Remodeling variables')
       END SELECT
       string1 = 'GNR'//TRIM(num)
       string2 = ' GandR variable '//TRIM(num)//' ...'
       gnr(n) = getrea(TRIM(string1),0.1d0,TRIM(string2))
     END DO
     !block to read damage parameters
     CALL listen('MATERIAL')
     mate%ifdam(1) = getint('DAMGE',0,' Active Damage in Elastin ...')
     mate%ifdam(2) = getint('DAMGM',0,' Active Damage in Smooth Muscle Cell ...')
     mate%ifdam(3) = getint('DAMGC1',0,' Active Damage in Collagen 1 ...')
     mate%ifdam(4) = getint('DAMGC2',0,' Active Damage in Collagen 2 ...')
     mate%ifdam(5) = getint('DAMGC3',0,' Active Damage in Collagen 3 ...')
     mate%ifdam(6) = getint('DAMGC4',0,' Active Damage in Collagen 4 ...')
     CALL listen('MATERIAL')
     DO n=1,ndamg
       SELECT CASE (n)
       CASE (1:9)
         write(num,"(i1.1)") n
       CASE (10:99)
         write(num,"(i2.2)") n
       CASE DEFAULT
         CALL runend('Wrong number of Damage parameters')
       END SELECT
       string1 = 'DAMG'//TRIM(num)
       string2 = ' Damage parameter '//TRIM(num)//' ...'
       mate%damg(n) = getrea(TRIM(string1),0.0d0,TRIM(string2))
     END DO
     CALL add_mater_to_list(materlist,mate)
   END IF
 END DO

 !read initial material card and print header
 CALL listen('SECTION')
 !material card expected before node information
 IF (.not.exists('SECTION')) CALL runend('SECTION: SECTION BLOCK EXPECTED')
 WRITE (lures,"(/,' S E C T I O N   D E F I N I T I O N ',/)",ERR=999)
 CALL ini_secti_list(sectilist)               !initializes list of sections

 DO
   CALL listen('SECTION')                    !read a line
   IF (exists('ENDSECT')) EXIT               !end of data => exit
   CALL ini_secti(sect)                            !initializes section
   IF (exists('ELSET',k)) THEN                     !look for element set name
     setaux=words(k+1)(1:midn)        !get name
     CALL search_element_set(setaux,found,elset)   !search in element set list
     IF (found) THEN
       sect%setbas => elset                       !assing set to section
     ELSE
       CALL runend('SECTION: ELSET name does not exist')
     END IF
   ELSE
     CALL runend('There is not element set')
   END IF
   IF (exists('MATER',k)) THEN                   !look for material name
     mataux=words(k+1)(1:midn)      !get name
     CALL search_material(mataux,found,mate)     !search in material list
     IF (found) THEN
       sect%matbas => mate                      !assign material to section
     ELSE
       CALL runend('SECTION: MATER name does not exist')
     END IF
   ELSE
     CALL runend('There is not material')
   END IF
   WRITE(lures,"(/' Section defined by: ElementSet=',A,' and Material=',A)",ERR=999) &
           & TRIM(elset%sname),TRIM(mate%name)
   CALL add_secti_to_list(sectilist,sect)
 END DO

 RETURN
 999 CALL runend('FULL MEMORY')
END SUBROUTINE material
