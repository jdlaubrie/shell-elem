MODULE step_mod
  USE input_mod,ONLY: listen,param,exists,runend,getint,getrea,get_name,lures,ludat
  USE param_mod,ONLY: midn,mnam
  USE ctrl_mod,ONLY: nmdof
  USE esets_mod,ONLY: add_name
  IMPLICIT NONE
!****BOUNDARY CONDITIONS****
!--Derived type for fixities information
  TYPE fix_node
   INTEGER(kind=4) :: label         !label of fixed node
   INTEGER(kind=4) :: iffix(3)      !Degrees Of Freedom
   REAL(kind=8) :: disp(3)          !value of displacement/rotation
   TYPE(fix_node),POINTER :: next   !auxiliar for list
  END TYPE fix_node
!******LOAD DATA*********
!--Derived type for load pressure
  TYPE press_load
   REAL(kind=8) :: pload              !load magnitud (pressure)
   REAL(kind=8) :: thres1,thres2      !define zone for pressure
  END TYPE press_load
!--Derived type for load contact (stent)
  TYPE contc_load
   REAL(kind=8) :: cnor,ctan       !norm and tang elastic coeff
   REAL(kind=8) :: radiu              !radius of stent-graft
   REAL(kind=8) :: erfun              !factor for error function
   REAL(kind=8) :: thres1,thres2      !define zone for contact
   REAL(kind=8) :: dz,dr      !force direction
   REAL(kind=8) :: friction   !friction coefficient
  END TYPE contc_load
!--List of elements in a load set
  TYPE setload
   CHARACTER(len=mnam) :: sname              !load set name
   !pressure load
   TYPE(press_load) :: press         !pointer to pressure
   !contact load (stent)
   TYPE(contc_load) :: contc         !pointer to stent-graft
   TYPE(setload),POINTER :: next
  END TYPE setload
!******TIME STEP MANAGE*******
!--Derived type for time steps
  TYPE time_set
   !general info for step
   CHARACTER(len=midn) :: tname         !time steps name
   INTEGER(kind=4) :: steps             !number of steps in this set
   INTEGER(kind=4) :: frames            !number of frames per step
   INTEGER(kind=4) :: mxiter            !maximum number of iteration
   REAL(kind=8) :: toler                !convergence tolerance
   !boundary conditions for step
   INTEGER(kind=4) :: nfix              !number of fixed nodes
   TYPE(fix_node),POINTER :: fxhead,fxtail  !pointer to first and last fix
   !load for step
   INTEGER(kind=4) :: nsload           !number of load sets
   TYPE(setload),POINTER :: ldhead,ldtail  !first and last sets
   !pointer to next step in the list
   TYPE(time_set),POINTER :: next
  END TYPE time_set

  INTEGER(kind=4) :: no_time_set = 0          !number of time sets
  INTEGER(kind=4) :: no_steps = 0             !total number of time steps
  TYPE(time_set),POINTER :: tmhead,tmtail     !first and last time step


CONTAINS
!******************************************************************************
!**                 Initialization of time set (timestep)                       **
!******************************************************************************
 SUBROUTINE ini_time_set(set)
  TYPE(time_set),POINTER :: set
   ALLOCATE(set)
   NULLIFY(set%fxhead,set%fxtail,set%ldhead,set%ldtail)
   set%nfix = 0
   set%nsload = 0
   set%tname = ''
   set%steps = 0
   set%frames = 0
   set%mxiter = 0
   set%toler = 0.d0
 END SUBROUTINE ini_time_set
!******************************************************************************
!**               Add a node to the end of general node list                 **
!******************************************************************************
SUBROUTINE add_time_set(new)
 TYPE(time_set),POINTER :: new
  IF (no_time_set==0) THEN
    tmhead => new
    tmtail => new
    nullify(tmtail%next)
  ELSE
    tmtail%next => new
    nullify(new%next)
    tmtail => new
  END IF
  no_time_set = no_time_set + 1
  no_steps = no_steps + new%steps
END SUBROUTINE add_time_set
!******************************************************************************
!**                Add a fix to the end of fix list                          **
!******************************************************************************
SUBROUTINE add_fix_to_list(head,tail,n,new)
 INTEGER(kind=4),INTENT(INOUT) :: n
 TYPE(fix_node),POINTER :: head,tail
 TYPE(fix_node),POINTER :: new
  IF (n==0) THEN
    head => new
    tail => new
    nullify(tail%next)
  ELSE
    tail%next => new
    nullify(new%next)
    tail => new
  END IF
  n = n + 1
END SUBROUTINE add_fix_to_list
!******************************************************************************
!**               Add load set to the end of loadlist                        **
!******************************************************************************
 SUBROUTINE add_ldset_to_list(head,tail,n,new)
  INTEGER(kind=4),INTENT(INOUT) :: n
  TYPE(setload),POINTER :: head,tail
  TYPE(setload),POINTER :: new
   IF (n==0) THEN
     head => new
     tail => new
     nullify(tail%next)
   ELSE
     tail%next => new
     nullify(new%next)
     tail => new
   END IF
   n = n + 1
 END SUBROUTINE add_ldset_to_list
!******************************************************************************
!**                 Initialization of load set (ldset)                       **
!******************************************************************************
 SUBROUTINE ini_load_set(set)
  TYPE(setload),POINTER :: set
   ALLOCATE(set)
   set%sname = ''
   CALL new_pressure(set%press)
   CALL new_contact(set%contc)
   NULLIFY(set%next)
 END SUBROUTINE ini_load_set
!******************************************************************************
!**                 Initialization of pressure load                          **
!******************************************************************************
 SUBROUTINE new_pressure(new)
  TYPE(press_load),INTENT(INOUT) :: new
   new%pload = 0.d0        !initialize pressure
   new%thres1 = 0.d0       !first point for pressure zone
   new%thres2 = 0.d0       !second point for pressure zone
 END SUBROUTINE new_pressure
!******************************************************************************
!**                 Initialization of contact load                           **
!******************************************************************************
 SUBROUTINE new_contact(new)
  TYPE(contc_load),INTENT(INOUT) :: new
   new%cnor = 0.d0        !normal elastic coefficient
   new%radiu = 0.d0        !initialize radius of stent
   new%erfun = 0.d0        !initialize factor for error function
   new%thres1 = 0.d0       !first point for stent zone
   new%thres2 = 0.d0       !second point for stent zone
   new%dz = 0.d0       !force in z direction
   new%dr = 0.d0       !force in r direction
   new%friction = 0.d0  !friction coefficient
   new%ctan = 0.d0      !tangential elastic coefficient
 END SUBROUTINE new_contact
!******************************************************************************
!**          Routine to read the time_step_data bloc                         **
!******************************************************************************
SUBROUTINE tmstep()
 IMPLICIT NONE
 INTEGER(kind=4) :: k
 INTEGER(kind=4) :: miter,steps,frames
 REAL(kind=8) :: tol
 CHARACTER(len=mnam) :: NSTEP
 TYPE(time_set),POINTER :: timestep          !pointer to time set

 CALL listen('TMSTEP')
 IF (.not.exists('TMSTEP')) CALL runend('TMSTEP: TMSTEP BLOCK EXPECTED')
 WRITE (lures,&
 & "(/,8X,' = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ')",&
 & ERR=999)
 WRITE (lures,&
 & "(8X,' = = = = = = = = = T M S T E P   D A T A = = = = = = = = = ')",&
 & ERR=999)
 WRITE (lures,&
 & "(8X,' = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ',/)",&
 & ERR=999)
 !read TMSTEP block
 DO
   CALL listen('TMSTEP')
   IF (exists('ENDTMS')) EXIT
   !read STEP set
   IF (exists('STEPSET',k)) THEN
     NSTEP=get_name(posin=k)
     WRITE(lures,"(/,5X,' = = = = = R E A D I N G   S T E P : ',A,' = = = = = ',/)"&
           &,ERR=999) TRIM(NSTEP)
     WRITE(*,"(' R E A D I N G   S T E P : ',A)") TRIM(NSTEP)
     !read control line of STEP
     CALL listen('TMSTEP')
     steps=getint('STEPS',1,' Times to Use This Step ...')
     frames=getint('FRAME',1,' Number of Load Division ...')
     miter=getint('MITER',5,' Maximum number of Iteration by Step ...')
     tol=getrea('TOLER',0.001d0,' Convergence Tolerance ...')
     !store time step info in a type
     CALL ini_time_set(timestep)
     timestep%tname = TRIM(NSTEP)
     timestep%steps = steps
     timestep%frames = frames
     timestep%mxiter = miter
     timestep%toler = tol
     !boundary conditions
     CALL boundary(timestep%fxhead,timestep%fxtail,timestep%nfix)
     !load data
     CALL load(timestep%ldhead,timestep%ldtail,timestep%nsload)
     CALL add_time_set(timestep)
   END IF
 END DO

 WRITE(lures,"(/,2X,'--->',' Total Steps to solve: ',I4,/)",ERR=999) no_steps
 WRITE(*,"(2X,'--->',' Total Steps to solve: ',I4,/)",ERR=999) no_steps

 RETURN
 999 CALL runend('FULL MEMORY')
END SUBROUTINE tmstep
!******************************************************************************
!**          READ boundary conditions                                        **
!******************************************************************************
SUBROUTINE boundary(fxhead,fxtail,nfix)
 IMPLICIT NONE
 !---Dummy arguments
 INTEGER(kind=4),INTENT(INOUT) :: nfix
 TYPE(fix_node),POINTER :: fxhead,fxtail
 !---Local variables
 TYPE(fix_node),POINTER :: fix

 !read initial control card  and print header
 CALL listen('BOUNDARY')          !read a card
 !control card expected before node information
 IF (.not.exists('BOUNDARY')) CALL runend('BOUNDARY: BOUNDARY BLOCK EXPECTED')
 WRITE (lures,"(/,' BOUNDARY CONDITIONS ',/)",ERR=999)

! CALL ini_list_fix(fixlist)
! IF (ASSOCIATED(fix)) DEALLOCATE(fix)
 !LOOP to read data in boundary
 WRITE(lures,"('     Node    X Y R')",ERR=999)
 DO
   CALL listen('BOUNDARY')            !read a line
   IF (exists('ENDBOUND')) EXIT       !end of data => exit
   ALLOCATE(fix)                      !get memory
   fix%label = INT(param(1))       !store node label
   fix%iffix(1:nmdof) = INT(param(2:nmdof+1))   !store fixities
   fix%disp(1:nmdof) = param(nmdof+2:2*nmdof+1)   !store fixities
   WRITE(lures,'(i9,3x,3i2,3f9.6)',ERR=999) fix%label,fix%iffix(1:nmdof),fix%disp(1:nmdof)  !echo
   CALL add_fix_to_list(fxhead,fxtail,nfix,fix)  !add node to the fixity list
 END DO !end of boundary LOOP

 RETURN
 999 CALL runend('FULL MEMORY')
END SUBROUTINE boundary
!******************************************************************************
!**          READ load on the system                                         **
!******************************************************************************
SUBROUTINE load(ldhead,ldtail,nsload)
 IMPLICIT NONE
 !---Dummy arguments
 INTEGER(kind=4),INTENT(INOUT) :: nsload
 TYPE(setload),POINTER :: ldhead,ldtail
 !--- Local variables
 INTEGER(kind=4) :: k
    !for load set
 CHARACTER(len=mnam) :: lsname
 TYPE(setload),POINTER :: ldset
    !for pressure
 REAL(kind=8) :: pressure,Zp1,Zp2
 TYPE(press_load) :: press
    !for stent
 REAL(kind=8) :: stiffness,radius,erfunc,Zc1,Zc2,Dz,Dr
 REAL(kind=8) :: friction,tancoef
 TYPE(contc_load) :: stent

 !read initial control card  and print header
 CALL listen('LOAD')          !read a card
 !control card expected before node information
 IF (.not.exists('LOAD')) CALL runend('LOAD: LOAD BLOCK EXPECTED')
 WRITE (lures,"(/,' LOAD DATA ',/)",ERR=999)
 !initialize values for a new time step problem
 !CALL ini_list_load(loadlist)

 !*** read a new load set
 DO
   CALL listen('LOAD')          !read a card
   IF (exists('ENDLOAD')) EXIT  !end of data => exit
   !*** Input of Load data Sets
   IF (exists('LOADSET',k)) THEN
     lsname = get_name(posin=k,stype='LDSET')!get name
     WRITE(lures,"(/' Load set named: ',A,' will be read')",ERR=999) TRIM(lsname)
     CALL ini_load_set(ldset)          !reserve memory for load set
     ldset%sname = lsname              !put name to load set
     CALL add_name(lsname,3)           !add name to list
     !*** Look for kind of load (read inside the load set)
     DO
       CALL listen('LOAD')
       IF (exists('ENDSET')) EXIT
       ! ***  Get loads from pressure
       IF (exists('PRESSLO')) THEN
         pressure=getrea('PLOAD',0.d0,' Internal Pressure ...')
         Zp1=getrea('ZINI',0.d0,' Pressure from...')
         Zp2=getrea('ZEND',0.d0,' Pressure to ...')
         CALL new_pressure(press)      !reserve memory for pressure load
         press%pload = pressure
         press%thres1 = Zp1
         press%thres2 = Zp2
         ldset%press = press !add pressure to load set
       ! ***  Get loads from contact (stent)
       ELSE IF (exists('CONTCLO')) THEN
         stiffness=getrea('STIFF',0.d0,' Stent Stiffness ...')
         radius=getrea('RADIUS',0.d0,' Stent Radius ...')
         erfunc=getrea('ERFUNC',1.d0,' Factor Error Function ...')
         Zc1=getrea('ZINI',0.d0,' Stent from...')
         Zc2=getrea('ZEND',0.d0,' Stent to ...')
         Dz=getrea('DZ',0.d0,' Z-Force ...')
         Dr=getrea('DR',0.d0,' R-Force ...')
         tancoef=getrea('COEFT',0.d0,' Tangential Coefficient ...')
         friction=getrea('MU',0.d0,' Friction Coefficient ...')
         CALL new_contact(stent)         !reserve memory for contact load (stent)
         stent%cnor = stiffness
         stent%radiu = radius
         stent%erfun = erfunc
         stent%thres1 = Zc1
         stent%thres2 = Zc2
         stent%dz = Dz
         stent%dr = Dr
         stent%ctan = tancoef
         stent%friction = friction
         ldset%contc = stent            !add contact to load set
       END IF
     END DO
     CALL add_ldset_to_list(ldhead,ldtail,nsload,ldset) !add load set to the list
   ELSE
     CALL runend('LOAD: SET card for loads expected')
   END IF
 END DO

 RETURN
 999 CALL runend('FULL MEMORY')
END SUBROUTINE load

END MODULE step_mod
