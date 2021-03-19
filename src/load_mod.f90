MODULE load_mod
 USE param_mod,ONLY: mnam
 USE ctrl_mod,ONLY: nmdof
 USE esets_mod,ONLY: nnode,snames,add_name,search_name!snhead,sntail,n_names
 USE history_mod,ONLY: contact
 USE step_mod,ONLY: setload,press_load,contc_load
! USE shape_mod
! USE quadrature_mod
 IMPLICIT NONE

 CONTAINS
!******************************************************************************
!**               Elemental Stiffnes matrix from loads                       **
!******************************************************************************
 SUBROUTINE loads_elem(ldhead,nsload,time,coor,corp,cosd,disp,nodes,K_load,R_load)
  IMPLICIT NONE
  !--Dummy arguments
  INTEGER(kind=4),INTENT(IN) :: nsload,nodes(nnode)
  REAL(kind=8),INTENT(IN) :: time(2),coor(2,nnode),corp(2,nnode),cosd(2),disp(3,nnode)
  REAL(kind=8),INTENT(OUT) :: K_load(3,3,nnode,nnode),R_load(3,nnode)
  TYPE(setload),TARGET :: ldhead
  !--Local arguments
  INTEGER(kind=4) :: isload,i1,i2,i3,i4
  REAL(kind=8) :: pressure,Cn,radius,delta,oversiz,factor,Ct,mu
  REAL(kind=8) :: pthres1,pthres2,cthres1,cthres2
  REAL(kind=8) :: pressp1,pressp2,VariLoadp
  REAL(kind=8) :: pressc1,pressc2,VariLoadc,direction(2)
  REAL(kind=8) :: tang1,tang2,VariTang1(2),VariTang2(2)
  REAL(kind=8) :: K_pres(2,2,nnode,nnode),R_pres(2,nnode)
  REAL(kind=8) :: K_cntc(2,2,nnode,nnode),R_cntc(2,nnode)
  REAL(kind=8) :: K_tang(2,2,nnode,nnode),R_tang(2,nnode)
  REAL(kind=8) :: coorc(2,nnode) !coorc(dof,node)
  REAL(kind=8) :: z1,z2,r1,r2,l,coseno,seno,z1p,z2p,r1p,r2p
  REAL(kind=8) :: delta_sliding(2)
  REAL(kind=8) :: time_thres
  TYPE(press_load) :: press
  TYPE(contc_load) :: stent
  TYPE(setload),POINTER :: ldset

!COORDINATES DEFINITION
  coorc(1,1) = coor(1,1) + disp(1,1)*cosd(2) - disp(2,1)*cosd(1)
  coorc(1,2) = coor(1,2) + disp(1,2)*cosd(2) - disp(2,2)*cosd(1)
  coorc(2,1) = coor(2,1) + disp(1,1)*cosd(1) + disp(2,1)*cosd(2)
  coorc(2,2) = coor(2,2) + disp(1,2)*cosd(1) + disp(2,2)*cosd(2)
  !current coordinates by node
  z1 = coorc(1,1)
  z2 = coorc(1,2)
  r1 = coorc(2,1)
  r2 = coorc(2,2)
  l = SQRT((r2-r1)**2.d0+(z2-z1)**2.d0)
  coseno = (z2-z1)/l
  seno = (r2-r1)/l

  !initialize matrices and vectors
  K_load = 0.d0
  R_load = 0.d0
  K_pres = 0.d0
  R_pres = 0.d0
  K_cntc = 0.d0
  R_cntc = 0.d0
  K_tang = 0.d0
  R_tang = 0.d0
  pressp1 = 0.d0
  pressp2 = 0.d0
  pressc1 = 0.d0
  pressc2 = 0.d0

  ldset => ldhead          !pointer to a load set in loadlist
  DO isload=1,nsload     !CYCLE in loadlist (list of load sets)
  !PRESSURE DEFINITION
    press = ldset%press           !pressure load
      pressure = press%pload      !pressure value for this zone
      pthres1 = press%thres1
      pthres2 = press%thres2
    IF (pressure.GT.0.d0) THEN
  !PRESSURE BLOCK FOR LOADS SETS
      !check node 1 from element is inside the zone pressure
      IF ((coorc(1,1).GE.pthres1).AND.(coorc(1,1).LE.pthres2)) THEN
        pressp1 = pressure
      ELSE
        pressp1 = 0.d0
      END IF
      !check node 2 from element is inside the zone pressure
      IF ((coorc(1,2).GE.pthres1).AND.(coorc(1,2).LE.pthres2)) THEN
        pressp2 = pressure
      ELSE
        pressp2 = 0.d0
      END IF
    END IF

  !STENT DEFINITION
    time_thres = 40.d0/30.d0
    stent = ldset%contc           !contact load
      Cn = stent%cnor     !stent stiffness in this zone
      radius = stent%radiu        !stent radius in this zone
      factor = stent%erfun        !error function factor
      cthres1 = stent%thres1
      cthres2 = stent%thres2
      direction(1) = stent%dz
      direction(2) = stent%dr
      mu = stent%friction
      Ct = stent%ctan
    IF (Cn.GT.0.d0) THEN
  !CONTACT-SPRING BLOCK FOR STENT IN LOADS SETS
      !check node 1 from element is inside the zone stent-graft
      IF ((coorc(1,1).GE.cthres1).AND.(coorc(1,1).LE.cthres2)) THEN
        oversiz = radius-coor(2,1)
        delta = radius-coorc(2,1)
        IF (delta.GE.0.d0) THEN
          pressc1 = Cn*delta
        ELSE
          pressc1 = 0.d0
        END IF
        !STENT AGAINST PRESSURE
        IF ((coorc(1,1).GE.pthres1).AND.(coorc(1,1).LE.pthres2)) &
                & pressp1 = 0.5d0*pressure*(ERF(factor*5.d0*(delta/oversiz &
                & - 0.5d0/factor)) + 1.d0) &
                & - 0.5d0*pressure*(ERF(factor*5.d0*(delta/oversiz &
                & - 0.5d0/factor)) - 1.d0)*EXP(-(time(1)-1.d0)/time_thres)
      ELSE
        pressc1 = 0.d0
      END IF
      !check node 2 from element is inside the zone stent-graft
      IF ((coorc(1,2).GE.cthres1).AND.(coorc(1,2).LE.cthres2)) THEN
        oversiz = radius-coor(2,2)
        delta = radius-coorc(2,2)
        IF (delta.GE.0.d0) THEN
          pressc2 = Cn*delta
        ELSE
          pressc2 = 0.d0
        END IF
        !STENT AGAINST PRESSURE
        IF ((coorc(1,2).GE.pthres1).AND.(coorc(1,2).LE.pthres2)) &
                & pressp2 = 0.5d0*pressure*(ERF(factor*5.d0*(delta/oversiz &
                & - 0.5d0/factor))+1.d0) &
                & - 0.5d0*pressure*(ERF(factor*5.d0*(delta/oversiz &
                & - 0.5d0/factor)) - 1.d0)*EXP(-(time(1)-1.d0)/time_thres)
      ELSE
        pressc2 = 0.d0
      END IF
    END IF

    !GET LOAD FOR DIFERENT CASES
      !follower load for pressure
    IF (pressure.GT.0.d0) THEN
      VariLoadp = 0.d0
      CALL follower_load(pressp1,pressp2,VariLoadp,coorc,K_pres,R_pres)
    END IF
      !surface load for stent
    IF (Cn.GT.0.d0) THEN
      !previous coordinates by node
      z1p = corp(1,1)
      z2p = corp(1,2)
      r1p = corp(2,1)
      r2p = corp(2,2)
      !sliding
      delta_sliding(1) = (z1 - z1p)*coseno + (r1 - r1p)*seno
      delta_sliding(2) = (z2 - z2p)*coseno + (r2 - r2p)*seno
      !contact force
      VariLoadc = -Cn
      CALL surface_load(pressc1,pressc2,direction,VariLoadc,coorc,&
      & K_cntc,R_cntc)
      !node 1
      CALL slip_condition(mu,Ct,Cn,pressc1,coseno,seno,nodes(1),&
      & delta_sliding(1),tang1,VariTang1)
      !node 2
      CALL slip_condition(mu,Ct,Cn,pressc2,coseno,seno,nodes(2),&
      & delta_sliding(2),tang2,VariTang2)
      !tangential force
      CALL tangential_load(tang1,tang2,VariTang1,VariTang2,coorc,K_tang,R_tang)
    END IF
    ldset => ldset%next
  END DO

  DO i1=1,2
    DO i2=1,2
      DO i3=1,2
        DO i4=1,2
          K_load(i1,i2,i3,i4) = K_pres(i1,i2,i3,i4) + K_cntc(i1,i2,i3,i4) &
          & + K_tang(i1,i2,i3,i4)
        END DO
      END DO
    END DO
  END DO

  DO i1=1,2
    DO i3=1,2
      R_load(i1,i3) = R_pres(i1,i3) + R_cntc(i1,i3) + R_tang(i1,i3)
    END DO
  END DO
 END SUBROUTINE loads_elem
!******************************************************************************
!**                        FOLLOWER LOAD                                     **
!******************************************************************************
SUBROUTINE follower_load(press1,press2,DpDw,coorc,K_foll,R_foll)
 IMPLICIT NONE
 !**dummy arguments
 REAL(kind=8),INTENT(IN) :: press1,press2,coorc(2,2),DpDw
 REAL(kind=8),INTENT(OUT) :: K_foll(2,2,nnode,nnode),R_foll(2,nnode)
 !**local arguments
 REAL(kind=8) :: p1,p2,z1,z2,r1,r2
 REAL(kind=8) :: K_DpDw(2,2,nnode,nnode)

 !pressure by node
 p1 = press1
 p2 = press2
 !coordinates by node
 z1 = coorc(1,1)
 z2 = coorc(1,2)
 r1 = coorc(2,1)
 r2 = coorc(2,2)

 !Stiffness matrix for constant face-load
 K_foll(1,1,1,1) = 0.d0
 K_foll(1,2,1,1) = 2.d0*(r1*(3.d0*p1+p2)-r2*p1)
 K_foll(2,1,1,1) = -r1*(3.d0*p1+p2)-r2*(p1+p2)
 K_foll(2,2,1,1) = (z2-z1)*(3.d0*p1+p2)

 K_foll(1,1,1,2) = 0.d0
 K_foll(1,2,1,2) = -2.d0*(r1*p1+r2*(p1+p2))
 K_foll(2,1,1,2) = r1*(3.d0*p1+p2)+r2*(p1+p2)
 K_foll(2,2,1,2) = (z2-z1)*(p1+p2)

 K_foll(1,1,2,1) = 0.d0
 K_foll(1,2,2,1) = 2.d0*(r1*(p1+p2)+r2*p2)
 K_foll(2,1,2,1) = -r1*(p1+p2)-r2*(p1+3.d0*p2)
 K_foll(2,2,2,1) = (z2-z1)*(p1+p2)

 K_foll(1,1,2,2) = 0.d0
 K_foll(1,2,2,2) = 2.d0*(r1*p2-r2*(p1+3.d0*p2))
 K_foll(2,1,2,2) = r1*(p1+p2)+r2*(p1+3.d0*p2)
 K_foll(2,2,2,2) = (z2-z1)*(p1+3.d0*p2)

 !Stiffness matrix for Dp (variational load)
 K_DpDw(1,1,1,1) = 0.d0
 K_Dpdw(1,2,1,1) = -(r2-r1)*(3.d0*r1+r2)
 K_DpDw(2,1,1,1) = 0.d0
 K_DpDw(2,2,1,1) = (z2-z1)*(3.d0*r1+r2)

 K_DpDw(1,1,1,2) = 0.d0
 K_DpDw(1,2,1,2) = -(r2-r1)*(r1+r2)
 K_DpDw(2,1,1,2) = 0.d0
 K_DpDw(2,2,1,2) = (z2-z1)*(r1+r2)

 K_DpDw(1,1,2,1) = 0.d0
 K_DpDw(1,2,2,1) = -(r2-r1)*(r1+r2)
 K_DpDw(2,1,2,1) = 0.d0
 K_DpDw(2,2,2,1) = (z2-z1)*(r1+r2)

 K_DpDw(1,1,2,2) = 0.d0
 K_DpDw(1,2,2,2) = -(r2-r1)*(r1+3.d0*r2)
 K_DpDw(2,1,2,2) = 0.d0
 K_DpDw(2,2,2,2) = (z2-z1)*(r1+3.d0*r2)

 !Force vector from C*w
 R_foll(1,1) = (r1-r2)*(3.d0*p1*r1+p1*r2+p2*r1+p2*r2)
 R_foll(2,1) = (z2-z1)*(3.d0*p1*r1+p1*r2+p2*r1+p2*r2)
 R_foll(1,2) = (r1-r2)*(p1*r1+p1*r2+p2*r1+3.d0*p2*r2)
 R_foll(2,2) = (z2-z1)*(p1*r1+p1*r2+p2*r1+3.d0*p2*r2)

 !set pressure to vector and matrix
 R_foll = R_foll/12.d0
 K_foll = (K_foll + DpDw*K_DpDw)/12.d0
END SUBROUTINE follower_load
!******************************************************************************
!**                        SURFACE LOAD                                     **
!******************************************************************************
SUBROUTINE surface_load(p1,p2,vec,DpDw,coorc,K_surf,R_surf)
 IMPLICIT NONE
 !**dummy arguments
 REAL(kind=8),INTENT(IN) :: p1,p2,vec(2),coorc(2,2),DpDw
 REAL(kind=8),INTENT(OUT) :: K_surf(2,2,2,2),R_surf(2,2)
 !**local arguments
 REAL(kind=8) :: factor1,factor2
 REAL(kind=8) :: z1,z2,r1,r2,l,v1,v2
 REAL(kind=8) :: K_DpDw(2,2,2,2)

 !direction vector
 v1 = vec(1)
 v2 = vec(2)
 !coordinates by node
 z1 = coorc(1,1)
 z2 = coorc(1,2)
 r1 = coorc(2,1)
 r2 = coorc(2,2)
 l = SQRT((r2-r1)**2.d0+(z2-z1)**2.d0)

 !Stiffness matrix for constant surf-load
 factor1 = (3.d0*p1*r1 + p1*r2 + p2*r1 + p2*r2)/l
 factor2 = (p1*r1 + p1*r2 + p2*r1 + 3.d0*p2*r2)/l

 K_surf(1,1,1,1) = 0.d0 - v1*(z2-z1)*factor1
 K_surf(1,2,1,1) = v1*l*(3.d0*p1+p2) - v1*(r2-r1)*factor1
 K_surf(2,1,1,1) = 0.d0 - v2*(z2-z1)*factor1
 K_surf(2,2,1,1) = v2*l*(3.d0*p1+p2) - v2*(r2-r1)*factor1

 K_surf(1,1,1,2) = 0.d0 + v1*(z2-z1)*factor1
 K_surf(1,2,1,2) = v1*l*(p1+p2) + v1*(r2-r1)*factor1
 K_surf(2,1,1,2) = 0.d0 + v2*(z2-z1)*factor1
 K_surf(2,2,1,2) = v2*l*(p1+p2) + v2*(r2-r1)*factor1

 K_surf(1,1,2,1) = 0.d0 - v1*(z2-z1)*factor2
 K_surf(1,2,2,1) = v1*l*(p1+p2) - v1*(r2-r1)*factor2
 K_surf(2,1,2,1) = 0.d0 - v2*(z2-z1)*factor2
 K_surf(2,2,2,1) = v2*l*(p1+p2) - v2*(r2-r1)*factor2

 K_surf(1,1,2,2) = 0.d0 + v1*(z2-z1)*factor2
 K_surf(1,2,2,2) = v1*l*(p1+3.d0*p2) + v1*(r2-r1)*factor2
 K_surf(2,1,2,2) = 0.d0 + v2*(z2-z1)*factor2
 K_surf(2,2,2,2) = v2*l*(p1+3.d0*p2) + v2*(r2-r1)*factor2

 !Stiffness matrix for Dp (variational load)
 K_DpDw(1,1,1,1) = 0.d0
 K_Dpdw(1,2,1,1) = v1*(3.d0*r1+r2)
 K_DpDw(2,1,1,1) = 0.d0
 K_DpDw(2,2,1,1) = v2*(3.d0*r1+r2)

 K_DpDw(1,1,1,2) = 0.d0
 K_DpDw(1,2,1,2) = v1*(r1+r2)
 K_DpDw(2,1,1,2) = 0.d0
 K_DpDw(2,2,1,2) = v2*(r1+r2)

 K_DpDw(1,1,2,1) = 0.d0
 K_DpDw(1,2,2,1) = v1*(r1+r2)
 K_DpDw(2,1,2,1) = 0.d0
 K_DpDw(2,2,2,1) = v2*(r1+r2)

 K_DpDw(1,1,2,2) = 0.d0
 K_DpDw(1,2,2,2) = v1*(r1+3.d0*r2)
 K_DpDw(2,1,2,2) = 0.d0
 K_DpDw(2,2,2,2) = v2*(r1+3.d0*r2)

 !Force vector from C*w
 R_surf(1,1) = v1*l**2.d0*factor1
 R_surf(2,1) = v2*l**2.d0*factor1
 R_surf(1,2) = v1*l**2.d0*factor2
 R_surf(2,2) = v2*l**2.d0*factor2

 !set pressure to vector and matrix
 R_surf = R_surf/12.d0
 K_surf = (K_surf + DpDw*l*K_DpDw)/12.d0
END SUBROUTINE surface_load
!******************************************************************************
!**                 TANGENTIAL CONTACT LOAD                                  **
!******************************************************************************
SUBROUTINE tangential_load(t1,t2,Dt1,Dt2,coorc,K_tang,R_tang)
 IMPLICIT NONE
 !**dummy arguments
 REAL(kind=8),INTENT(IN) :: t1,t2,coorc(2,2),Dt1(2),Dt2(2)
 REAL(kind=8),INTENT(OUT) :: K_tang(2,2,2,2),R_tang(2,2)
 !**local arguments
 REAL(kind=8) :: factor1,factor2
 REAL(kind=8) :: z1,z2,r1,r2
 REAL(kind=8) :: K_Dtan(2,2,2,2)

 !coordinates by node
 z1 = coorc(1,1)
 z2 = coorc(1,2)
 r1 = coorc(2,1)
 r2 = coorc(2,2)

 !Stiffness matrix for constant surf-load
 factor1 = (3.d0*t1*r1 + t1*r2 + t2*r1 + t2*r2)
 factor2 = (t1*r1 + t1*r2 + t2*r1 + 3.d0*t2*r2)

 K_tang(1,1,1,1) = 0.d0 - factor1
 K_tang(1,2,1,1) = (z2-z1)*(3.d0*t1+t2)
 K_tang(2,1,1,1) = 0.d0
 K_tang(2,2,1,1) = (r2-r1)*(3.d0*t1+t2) - factor1

 K_tang(1,1,1,2) = 0.d0 + factor1
 K_tang(1,2,1,2) = (z2-z1)*(t1+t2)
 K_tang(2,1,1,2) = 0.d0
 K_tang(2,2,1,2) = (r2-r1)*(t1+t2) + factor1

 K_tang(1,1,2,1) = 0.d0 - factor2
 K_tang(1,2,2,1) = (z2-z1)*(t1+t2)
 K_tang(2,1,2,1) = 0.d0
 K_tang(2,2,2,1) = (r2-r1)*(t1+t2) - factor2

 K_tang(1,1,2,2) = 0.d0 + factor2
 K_tang(1,2,2,2) = (z2-z1)*(t1+3.d0*t2)
 K_tang(2,1,2,2) = 0.d0
 K_tang(2,2,2,2) = (r2-r1)*(t1+3.d0*t2) + factor2

 !Stiffness matrix for DT (variational load) - SLIDING
 K_Dtan(1,1,1,1) = (z2-z1)*(3.d0*r1+r2)*Dt1(1)
 K_Dtan(1,2,1,1) = (z2-z1)*(3.d0*r1+r2)*Dt1(2)
 K_Dtan(2,1,1,1) = (r2-r1)*(3.d0*r1+r2)*Dt1(1)
 K_Dtan(2,2,1,1) = (r2-r1)*(3.d0*r1+r2)*Dt1(2)

 K_Dtan(1,1,1,2) = (z2-z1)*(r1+r2)*Dt2(1)
 K_Dtan(1,2,1,2) = (z2-z1)*(r1+r2)*Dt2(2)
 K_Dtan(2,1,1,2) = (r2-r1)*(r1+r2)*Dt2(1)
 K_Dtan(2,2,1,2) = (r2-r1)*(r1+r2)*Dt2(2)

 K_Dtan(1,1,2,1) = (z2-z1)*(r1+r2)*Dt1(1)
 K_Dtan(1,2,2,1) = (z2-z1)*(r1+r2)*Dt1(2)
 K_Dtan(2,1,2,1) = (r2-r1)*(r1+r2)*Dt1(1)
 K_Dtan(2,2,2,1) = (r2-r1)*(r1+r2)*Dt1(2)

 K_Dtan(1,1,2,2) = (z2-z1)*(r1+3.d0*r2)*Dt2(1)
 K_Dtan(1,2,2,2) = (z2-z1)*(r1+3.d0*r2)*Dt2(2)
 K_Dtan(2,1,2,2) = (r2-r1)*(r1+3.d0*r2)*Dt2(1)
 K_Dtan(2,2,2,2) = (r2-r1)*(r1+3.d0*r2)*Dt2(2)

 !Force vector from C*w
 R_tang(1,1) = (z2-z1)*factor1
 R_tang(2,1) = (r2-r1)*factor1
 R_tang(1,2) = (z2-z1)*factor2
 R_tang(2,2) = (r2-r1)*factor2

 !set pressure to vector and matrix
 R_tang = R_tang/12.d0
 K_tang = (K_tang + K_Dtan)/12.d0
END SUBROUTINE tangential_load
!******************************************************************************
!**                          SLIP CONDITION                                  **
!******************************************************************************
SUBROUTINE slip_condition(friction,Ct,Cn,pres,coseno,seno,nodes,delta_slid,&
  & tang,Dtang)
 IMPLICIT NONE
 !**dummy arguments
 INTEGER,INTENT(IN) :: nodes
 REAL(kind=8),INTENT(IN) :: friction,Ct,Cn,pres,coseno,seno,delta_slid
 REAL(kind=8),INTENT(OUT) :: Dtang(2),tang
 !**local arguments
 REAL(kind=8) :: pn,force
 REAL(kind=8) :: delta_stick,stick,sliding

 !get sliding and stick from history
 sliding = contact(nodes,1)
 stick = contact(nodes,2)
 !friction threshold force
 pn = pres*coseno            !normal pressure to element
 force = friction*pn               !threshold friction force
 !total sliding
 sliding = sliding + delta_slid     !add delta to previous sliding
 !trial Force
 tang = Ct*(sliding - stick)     !get tangential force with actual sliding
 !Slip condition
 IF (tang.LE.force) THEN           !NO SLIDING
   tang = tang                !trial force is the force
   stick = stick              !no evolution of stick-plastic displacement
   Dtang(1) = Ct*coseno       !variational for tangential force
   Dtang(2) = Ct*seno         !variational for tangential force
 ELSE                              !SLIDING
   delta_stick = (tang - force)/Ct
   tang = force                  !threhold force is the force
   stick = stick + delta_stick   !evolution of stick-plastic displacement
   Dtang(1) = 0.d0                   !variational of tangential force
   Dtang(2) = -friction*Cn*coseno    !variational of tangential force
 END IF
 !update history
 contact(nodes,1) = sliding
 contact(nodes,2) = stick
END SUBROUTINE slip_condition

END MODULE load_mod
