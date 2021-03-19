SUBROUTINE computation()
 USE param_mod,ONLY: midn
 USE input_mod,ONLY: lures,lursn,runend
 USE ctrl_mod,ONLY: npoin,ndime,ngaus,nelem
 USE info_mod,ONLY: coorc,coora,stres,stran,lambd,nodelem,displ,BounDisp,Force
 USE history_mod,ONLY: sigma,sigma_h!,xi0,damage
 USE step_mod!,ONLY: time_set,tmhead,no_time_set
 USE nsets_mod
 USE quadrature_mod
 IMPLICIT NONE
 !--Local arguments
 INTEGER(kind=4) :: nsteps
 INTEGER(kind=4) :: iset,tstep,kstep
 INTEGER(kind=4) :: ipoin,ielem,igaus,jgaus
 REAL(kind=8) :: time(2),dtime,x(ngaus),coef(ngaus)
 REAL(kind=8) :: stress(2,npoin),strain(3,npoin),lambda(3,npoin)
 REAL(kind=8) :: stresl(2,nelem,ngaus),stranl(3,nelem,ngaus),lambdl(3,nelem,ngaus)
 TYPE(time_set),POINTER :: timestep
 TYPE(node),POINTER :: nodes          ! nodal data

!******************************************************************************
!**                 LOOP over time sets                                      **
!******************************************************************************
 WRITE(*,"(15X,'*** STARTING CALCULATION ***')")
 WRITE(lures,"(/,16X,'*** STARTING CALCULATION ***',/)")
 nsteps = 0
 timestep => tmhead
 DO iset=1,no_time_set
   !solution computation for this(those) step(s)
   CALL initial_comp_t(timestep%fxhead,timestep%nfix)   !initialization of boundary condition for this step
!******************************************************************************
!**                 LOOP over time steps                                     **
!******************************************************************************
   CALL gauscheb(ngaus,x,coef)
   DO tstep=1,timestep%steps      !times to repeat this tmstep   !sacarlo desde el puntero del time set
     DO kstep=1,timestep%frames   !time to divide load          !sacarlo desde el puntero del time set
       !time managing
       time(1) = REAL(tstep-1)            !time in problem
       time(2) = REAL(kstep)/REAL(timestep%frames)  !time in step
       dtime = 1.d0/REAL(timestep%frames)           !dtime in step
       !put displacements
       displ = displ + BounDisp*dtime
       Force = 0.d0
       WRITE(lures,"(5X,&
         & '===========================================================',/)",&
        & ERR=999)
       !solve equation system
       CALL iteration(timestep%tname,timestep%mxiter,timestep%toler,&
                      &timestep%ldhead,timestep%nsload,time,dtime)
       !output
       stresl = 0.d0
       stranl = 0.d0
       lambdl = 0.d0
       DO ielem=1,nelem
         DO igaus=1,ngaus
           DO jgaus=1,2*ngaus
             !STRESS along element
             stresl(1,ielem,igaus) = stres(1,ielem,igaus,jgaus) + stresl(1,ielem,igaus)
             stresl(2,ielem,igaus) = stres(2,ielem,igaus,jgaus) + stresl(2,ielem,igaus)
             !STRAIN along eleme,ipoinnt
             stranl(1,ielem,igaus) = stran(1,ielem,igaus,jgaus) + stranl(1,ielem,igaus)
             stranl(2,ielem,igaus) = stran(2,ielem,igaus,jgaus) + stranl(2,ielem,igaus)
             stranl(3,ielem,igaus) = stran(3,ielem,igaus,jgaus) + stranl(3,ielem,igaus)
             !LAMBDA along element
             lambdl(1,ielem,igaus) = lambd(1,ielem,igaus,jgaus) + lambdl(1,ielem,igaus)
             lambdl(2,ielem,igaus) = lambd(2,ielem,igaus,jgaus) + lambdl(2,ielem,igaus)
             lambdl(3,ielem,igaus) = lambd(3,ielem,igaus,jgaus) + lambdl(3,ielem,igaus)
           END DO
           !STRESS along element
           stresl(1,ielem,igaus) = stresl(1,ielem,igaus)/REAL(2*ngaus)
           stresl(2,ielem,igaus) = stresl(2,ielem,igaus)/REAL(2*ngaus)
           !STRAIN along element
           stranl(1,ielem,igaus) = stranl(1,ielem,igaus)/REAL(2*ngaus)
           stranl(2,ielem,igaus) = stranl(2,ielem,igaus)/REAL(2*ngaus)
           stranl(3,ielem,igaus) = stranl(3,ielem,igaus)/REAL(2*ngaus)
           !LAMBDA along element
           lambdl(1,ielem,igaus) = lambdl(1,ielem,igaus)/REAL(2*ngaus)
           lambdl(2,ielem,igaus) = lambdl(2,ielem,igaus)/REAL(2*ngaus)
           lambdl(3,ielem,igaus) = lambdl(3,ielem,igaus)/REAL(2*ngaus)
         END DO
       END DO
       !properties from gauss point to nodes
       CALL gauss_to_nodes(stresl,stranl,lambdl,stress,strain,lambda)

       WRITE(lures,"(/,3X,'***New Coordinates and Stresses at Nodes:')",ERR=999)
       WRITE(lures,"(3X,'***Node Z-direction N-direction Z-stress Q-stress StrainZR')",&
               &ERR=999)
       WRITE(lursn,"(2X,'TIME: ',A,2X,'STEP: ',F9.3,2X,'FRAME: ',F6.3)") &
             & timestep%tname,time(1)+time(2),time(2)
       !store arrays in node type, see geometry routine. And print solution
       nodes => nodelist%head             !go to top of the list of nodes
       DO ipoin=1,npoin            !for each node in the list
         nodes%coorc(1:ndime) = coorc(1:ndime,nodes%label)       !current coordinates
         nodes%stress(1:ndime) = stress(1:ndime,nodes%label)     !stress 2D
         nodes%strain(1:ndime+1) = strain(1:ndime+1,nodes%label) !strain 2D+shear
         !result file
         WRITE(lures,"(I4,2F14.9,2F10.1,F14.9)",ERR=999) &
           &nodes%label,nodes%coorc(1:ndime),nodes%stress(1:ndime),nodes%strain(3)
         !reduced result file for plotting
         WRITE(lursn,"(2I4,2F14.9,2F10.1,F14.9)",ERR=999) nsteps,&
           &nodes%label,nodes%coorc(1:ndime),nodes%stress(1:ndime),nodes%strain(3)
         nodes => nodes%next              !next node in the list
       END DO
       coora = coorc        !store current coordinates in previous for next step
       CALL output(timestep%tname,tstep,kstep,x)
     END DO                 !time to divide load (frame)

     IF ('HOMEO'.EQ.timestep%tname) THEN
       sigma_h = sigma
     END IF
     !IF (tstep>1) nsteps = nsteps + 1
     CALL to_paraview(nsteps,x)
     nsteps = nsteps + 1
   END DO             !real time  (step)
!---LOOP over time sets
   !nsteps = nsteps + 1
   timestep => timestep%next
 END DO

 RETURN
 999 CALL runend('')
END SUBROUTINE computation

!******************************************************************************
!**          Properties from gauss points to nodes                           **
!******************************************************************************
SUBROUTINE gauss_to_nodes(stresl,stranl,lambdl,stress,strain,lambda)
  USE input_mod,ONLY: inname,lures,lursn,runend
  USE ctrl_mod,ONLY: npoin,ngaus,nelem
  USE info_mod,ONLY: coorc,nodelem
  USE quadrature_mod

  IMPLICIT NONE
  !--Dummy arguments
  REAL(kind=8),INTENT(IN) :: stresl(2,nelem,ngaus),stranl(3,nelem,ngaus),lambdl(3,nelem,ngaus)
  REAL(kind=8),INTENT(OUT) :: stress(2,npoin),strain(3,npoin),lambda(3,npoin)
  !--Local arguments
  INTEGER(kind=4) :: i1,ipoin,ielem,igaus,elem1,elem2
  REAL(kind=8) :: x(ngaus),coef(ngaus)
  REAL(kind=8) :: stresg(2,2),strang(3,2),lambdg(3,2)
  REAL(kind=8) :: coorg(2,nelem,ngaus),z(npoin)

  stress = 0.d0
  strain = 0.d0
  lambda = 0.d0
  CALL gauscheb(ngaus,x,coef)
!**          Coordinates in Gauss points                                     **
  coorg = 0.d0
  DO ielem=1,nelem
    DO igaus=1,ngaus
      coorg(:,ielem,igaus)=0.5d0*(x(igaus)+1.d0)*(coorc(:,nodelem(ielem,2))&
                  &-coorc(:,nodelem(ielem,1)))+coorc(:,nodelem(ielem,1))
    END DO
  END DO
!**          LOOP to get properties by nodes from gauss properties           **
  DO ipoin=1,npoin
    z(ipoin) = coorc(1,ipoin)
    elem1 = 0
    elem2 = 0
    stresg = 0.d0
    strang = 0.d0
    lambdg = 0.d0
    DO ielem=1,nelem
      IF (ipoin==nodelem(ielem,1)) THEN
        stresg(:,1) = stresl(:,ielem,1)
        strang(:,1) = stranl(:,ielem,1)
        lambdg(:,1) = lambdl(:,ielem,1)
        !control
        elem1 = ielem
        EXIT
      END IF
    END DO
    DO ielem=1,nelem
      IF (ipoin==nodelem(ielem,2)) THEN
        stresg(:,2) = stresl(:,ielem,2)
        strang(:,2) = stranl(:,ielem,2)
        lambdg(:,2) = lambdl(:,ielem,2)
        !control
        elem2 = ielem
        EXIT
      END IF
    END DO
    IF (elem1==0) THEN
      stresg(:,1) = stresl(:,elem2,1)
      strang(:,1) = stranl(:,elem2,1)
      lambdg(:,1) = lambdl(:,elem2,1)
      !nodes values
      stress(:,ipoin) = (stresg(:,1)-stresg(:,2))/(coorg(1,elem2,1)-coorg(1,elem2,2))&
             &*(z(ipoin)-coorg(1,elem2,2))+stresg(:,2)
      strain(:,ipoin) = (strang(:,1)-strang(:,2))/(coorg(1,elem2,1)-coorg(1,elem2,2))&
             &*(z(ipoin)-coorg(1,elem2,2))+strang(:,2)
      lambda(:,ipoin) = (lambdg(:,1)-lambdg(:,2))/(coorg(1,elem2,1)-coorg(1,elem2,2))&
                 &*(z(ipoin)-coorg(1,elem2,2))+lambdg(:,2)
    ELSE IF (elem2==0) THEN
      stresg(:,2) = stresl(:,elem1,2)
      strang(:,2) = stranl(:,elem1,2)
      lambdg(:,2) = lambdl(:,elem1,2)
      !nodes values
      stress(:,ipoin) = (stresg(:,1)-stresg(:,2))/(coorg(1,elem1,1)-coorg(1,elem1,2))&
             &*(z(ipoin)-coorg(1,elem1,2))+stresg(:,2)
      strain(:,ipoin) = (strang(:,1)-strang(:,2))/(coorg(1,elem1,1)-coorg(1,elem1,2))&
             &*(z(ipoin)-coorg(1,elem1,2))+strang(:,2)
    ELSE
      !nodes values
      stress(:,ipoin) = (stresg(:,1)-stresg(:,2))/(coorg(1,elem1,1)-coorg(1,elem2,2))&
             &*(z(ipoin)-coorg(1,elem2,2))+stresg(:,2)
      strain(:,ipoin) = (strang(:,1)-strang(:,2))/(coorg(1,elem1,1)-coorg(1,elem2,2))&
             &*(z(ipoin)-coorg(1,elem2,2))+strang(:,2)
    END IF
  END DO

END SUBROUTINE gauss_to_nodes
