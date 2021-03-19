SUBROUTINE to_paraview(counter,x)
 USE input_mod,ONLY: inname,luvtu
 USE info_mod,ONLY: coorc,stres,stran,lambd,nodelem,displ,thick0,thick
 USE ctrl_mod,ONLY: nelem,ngaus,npoin
 USE history_mod,ONLY: history
 IMPLICIT NONE
 !--Dummy arguments
 INTEGER,INTENT(IN) :: counter
 REAL(kind=8),INTENT(IN) :: x(ngaus)
 !--Local arguments
 INTEGER(kind=4) :: igaus,ipoin,ielem,i1
 INTEGER(kind=4) :: elem1,elem2
 REAL(kind=8) :: z(npoin),r(npoin),zi(npoin),zo(npoin),ri(npoin),ro(npoin)
 REAL(kind=8) :: coorg(2,nelem,ngaus)
 !variables at Gauss points
 REAL(kind=8) :: stresgM(2,ngaus,2),stresgA(2,ngaus,2) !,stresg2(M,A)(2,ngaus)
 REAL(kind=8) :: strangM(3,ngaus,2),strangA(3,ngaus,2) !,strang2(M,A)(3,ngaus)
 REAL(kind=8) :: lambdgM(3,ngaus,2),lambdgA(3,ngaus,2) !,lambdg2(M,A)(3,ngaus)
 REAL(kind=8) :: storygM(32,ngaus,2),storygA(32,ngaus,2) !,storyg2(M,A)(32,ngaus)
 REAL(kind=8) :: thickgM(2),thickgA(2) !,thickg2(M,A)
 !variables at Nodes by Layer
 REAL(kind=8) :: stresM(2,npoin,2),stresA(2,npoin,2)
 REAL(kind=8) :: stranM(3,npoin,2),stranA(3,npoin,2)
 REAL(kind=8) :: lambdM(3,npoin,2),lambdA(3,npoin,2)
 REAL(kind=8) :: storyM(npoin,32,2),storyA(npoin,32,2)
 REAL(kind=8) :: thickM(npoin),thickA(npoin),thickness
 REAL(kind=8) :: ratio,zMA(npoin),rMA(npoin)
 CHARACTER(len=20) :: num,vtufile

!******************************************************************************
!**          Coordinates in Gauss points                                     **
!******************************************************************************
 coorg = 0.d0
 DO ielem=1,nelem
   DO igaus=1,ngaus
     coorg(:,ielem,igaus)=0.5d0*(x(igaus)+1.d0)*(coorc(:,nodelem(ielem,2))&
             &-coorc(:,nodelem(ielem,1)))+coorc(:,nodelem(ielem,1))
   END DO
 END DO
!******************************************************************************
!**            Initialization of arrays in nodes                             **
!******************************************************************************
 !initialization of stresses in nodes
 stresM=0.d0
 stresA=0.d0
 !initialization of strains in nodes
 stranM=0.d0
 stranA=0.d0
 !initialization of stretches in nodes
 lambdM=0.d0
 lambdA=0.d0
 !initialization of stretches in nodes
 storyM=0.d0
 storyA=0.d0
 !initialization of stretches in nodes
 thickM=0.d0
 thickA=0.d0
 thickness=0.d0
!******************************************************************************
!**          LOOP to get properties by nodes from gauss properties           **
!******************************************************************************
 DO ipoin=1,npoin
   z(ipoin) = coorc(1,ipoin)
   r(ipoin) = coorc(2,ipoin)
   !index to search element for linear intepolation to determine node values
   elem1=0
   elem2=0
   !initialization of stresses in gauss points
   stresgM=0.d0
   stresgA=0.d0
   !initialization of strains in gauss points
   strangM=0.d0
   strangA=0.d0
   !initialization of stretches in gauss points
   lambdgM=0.d0
   lambdgA=0.d0
   !initialization of internal variables in gauss points
   storygM=0.d0
   storygA=0.d0
   !initialization of stretches in gauss points
   thickgM=0.d0
   thickgA=0.d0
   DO ielem=1,nelem
     IF (ipoin==nodelem(ielem,1)) THEN
       !MEDIA
       DO i1=1,ngaus
         !STRESS
         stresgM(:,i1,1) = stres(:,ielem,1,i1)
         !STRAIN
         strangM(:,i1,1) = stran(:,ielem,1,i1)
         !LAMBDA
         lambdgM(:,i1,1) = lambd(:,ielem,1,i1)
         !internal variables
         storygM(:,i1,1) = history(ielem,1,i1,:)
       END DO
       !THICKNESS
       thickgM(1) = thick(ielem,1,1)
       !ADVENTITIA
       DO i1=1,ngaus
         !STRESS
         stresgA(:,i1,1) = stres(:,ielem,1,i1+ngaus)
         !STRAIN
         strangA(:,i1,1) = stran(:,ielem,1,i1+ngaus)
         !LAMBDA
         lambdgA(:,i1,1) = lambd(:,ielem,1,i1+ngaus)
         !internal variables
         storygA(:,i1,1) = history(ielem,1,i1+ngaus,:)
       END DO
       !THICKNESS
       thickgA(1) = thick(ielem,1,2)
       !for control
       elem1 = ielem
       EXIT
     END IF
   END DO
   DO ielem=1,nelem
     IF (ipoin==nodelem(ielem,2)) THEN
       !MEDIA
       DO i1=1,ngaus
         !STRESS
         stresgM(:,i1,2) = stres(:,ielem,2,i1)
         !STRAIN
         strangM(:,i1,2) = stran(:,ielem,2,i1)
         !LAMBDA
         lambdgM(:,i1,2) = lambd(:,ielem,2,i1)
         !internal variables
         storygM(:,i1,2) = history(ielem,2,i1,:)
       END DO
       !THICKNESS
       thickgM(2) = thick(ielem,2,1)
       !ADVENTITIA
       DO i1=1,ngaus
         !STRESS
         stresgA(:,i1,2) = stres(:,ielem,2,i1+ngaus)
         !STRAIN
         strangA(:,i1,2) = stran(:,ielem,2,i1+ngaus)
         !LAMBDA
         lambdgA(:,i1,2) = lambd(:,ielem,2,i1+ngaus)
         !internal variables
         storygA(:,i1,2) = history(ielem,2,i1+ngaus,:)
       END DO
       !THICKNESS
       thickgA(2) = thick(ielem,2,2)
       !for control
       elem2 = ielem
       EXIT
     END IF
   END DO
   IF (elem1==0) THEN
       !MEDIA
       DO i1=1,ngaus
         !STRESS
         stresgM(:,i1,1) = stres(:,elem2,1,i1)
         !STRAIN
         strangM(:,i1,1) = stran(:,elem2,1,i1)
         !LAMBDA
         lambdgM(:,i1,1) = lambd(:,elem2,1,i1)
         !internal variables
         storygM(:,i1,1) = history(elem2,1,i1,:)
       END DO
       !THICKNESS
       thickgM(1) = thick(elem2,1,1)
       !ADVENTITIA
       DO i1=1,ngaus
         !STRESS
         stresgA(:,i1,1) = stres(:,elem2,1,i1+ngaus)
         !STRAIN
         strangA(:,i1,1) = stran(:,elem2,1,i1+ngaus)
         !LAMBDA
         lambdgA(:,i1,1) = lambd(:,elem2,1,i1+ngaus)
         !internal variables
         storygA(:,i1,1) = history(elem2,1,i1+ngaus,:)
       END DO
       !THICKNESS
       thickgA(1) = thick(elem2,1,2)
     DO i1=1,2
     !STRESS
       stresM(:,ipoin,i1) = (stresgM(:,i1,1)-stresgM(:,i1,2))/(coorg(1,elem2,1) &
               & - coorg(1,elem2,2))*(z(ipoin)-coorg(1,elem2,2))+stresgM(:,i1,2)
       stresA(:,ipoin,i1) = (stresgA(:,i1,1)-stresgA(:,i1,2))/(coorg(1,elem2,1) &
               & - coorg(1,elem2,2))*(z(ipoin)-coorg(1,elem2,2))+stresgA(:,i1,2)
       !STRAIN
       stranM(:,ipoin,i1) = (strangM(:,i1,1)-strangM(:,i1,2))/(coorg(1,elem2,1) &
               & - coorg(1,elem2,2))*(z(ipoin)-coorg(1,elem2,2))+strangM(:,i1,2)
       stranA(:,ipoin,i1) = (strangA(:,i1,1)-strangA(:,i1,2))/(coorg(1,elem2,1) &
               & - coorg(1,elem2,2))*(z(ipoin)-coorg(1,elem2,2))+strangA(:,i1,2)
       !LAMBDA
       lambdM(:,ipoin,i1) = (lambdgM(:,i1,1)-lambdgM(:,i1,2))/(coorg(1,elem2,1) &
               & - coorg(1,elem2,2))*(z(ipoin)-coorg(1,elem2,2))+lambdgM(:,i1,2)
       lambdA(:,ipoin,i1) = (lambdgA(:,i1,1)-lambdgA(:,i1,2))/(coorg(1,elem2,1) &
               & - coorg(1,elem2,2))*(z(ipoin)-coorg(1,elem2,2))+lambdgA(:,i1,2)
       !internal variables
       storyM(ipoin,:,i1) = (storygM(:,i1,1)-storygM(:,i1,2))/(coorg(1,elem2,1) &
               & - coorg(1,elem2,2))*(z(ipoin)-coorg(1,elem2,2))+storygM(:,i1,2)
       storyA(ipoin,:,i1) = (storygA(:,i1,1)-storygA(:,i1,2))/(coorg(1,elem2,1) &
               & - coorg(1,elem2,2))*(z(ipoin)-coorg(1,elem2,2))+storygA(:,i1,2)
     END DO
     !THICKNESS
     thickM(ipoin) = (thickgM(1)-thickgM(2))/(coorg(1,elem2,1)-coorg(1,elem2,2))&
             &*(z(ipoin)-coorg(1,elem2,2))+thickgM(2)
     thickA(ipoin) = (thickgA(1)-thickgA(2))/(coorg(1,elem2,1)-coorg(1,elem2,2))&
             &*(z(ipoin)-coorg(1,elem2,2))+thickgA(2)
   ELSE IF (elem2==0) THEN
       !MEDIA
       DO i1=1,ngaus
         !STRESS
         stresgM(:,i1,2) = stres(:,elem1,2,i1)
         !STRAIN
         strangM(:,i1,2) = stran(:,elem1,2,i1)
         !LAMBDA
         lambdgM(:,i1,2) = lambd(:,elem1,2,i1)
         !internal variables
         storygM(:,i1,2) = history(elem1,2,i1,:)
       END DO
       !THICKNESS
       thickgM(2) = thick(elem1,2,1)
       !ADVENTITIA
       DO i1=1,ngaus
         !STRESS
         stresgA(:,i1,2) = stres(:,elem1,2,i1+ngaus)
         !STRAIN
         strangA(:,i1,2) = stran(:,elem1,2,i1+ngaus)
         !LAMBDA
         lambdgA(:,i1,2) = lambd(:,elem1,2,i1+ngaus)
         !internal variables
         storygA(:,i1,2) = history(elem1,2,i1+ngaus,:)
       END DO
       !THICKNESS
       thickgA(2) = thick(elem1,2,2)
     DO i1=1,2
     !STRESS
       stresM(:,ipoin,i1) = (stresgM(:,i1,1)-stresgM(:,i1,2))/(coorg(1,elem1,1) &
               & - coorg(1,elem1,2))*(z(ipoin)-coorg(1,elem1,2))+stresgM(:,i1,2)
       stresA(:,ipoin,i1) = (stresgA(:,i1,1)-stresgA(:,i1,2))/(coorg(1,elem1,1) &
               & - coorg(1,elem1,2))*(z(ipoin)-coorg(1,elem1,2))+stresgA(:,i1,2)
       !STRAIN
       stranM(:,ipoin,i1) = (strangM(:,i1,1)-strangM(:,i1,2))/(coorg(1,elem1,1) &
               & - coorg(1,elem1,2))*(z(ipoin)-coorg(1,elem1,2))+strangM(:,i1,2)
       stranA(:,ipoin,i1) = (strangA(:,i1,1)-strangA(:,i1,2))/(coorg(1,elem1,1) &
               & - coorg(1,elem1,2))*(z(ipoin)-coorg(1,elem1,2))+strangA(:,i1,2)
       !LAMBDA
       lambdM(:,ipoin,i1) = (lambdgM(:,i1,1)-lambdgM(:,i1,2))/(coorg(1,elem1,1) &
               & - coorg(1,elem1,2))*(z(ipoin)-coorg(1,elem1,2))+lambdgM(:,i1,2)
       lambdA(:,ipoin,i1) = (lambdgA(:,i1,1)-lambdgA(:,i1,2))/(coorg(1,elem1,1) &
               & - coorg(1,elem1,2))*(z(ipoin)-coorg(1,elem1,2))+lambdgA(:,i1,2)
       !internal variables
       storyM(ipoin,:,i1) = (storygM(:,i1,1)-storygM(:,i1,2))/(coorg(1,elem1,1) &
               & - coorg(1,elem1,2))*(z(ipoin)-coorg(1,elem1,2))+storygM(:,i1,2)
       storyA(ipoin,:,i1) = (storygA(:,i1,1)-storygA(:,i1,2))/(coorg(1,elem1,1) &
               & - coorg(1,elem1,2))*(z(ipoin)-coorg(1,elem1,2))+storygA(:,i1,2)
     END DO
     !THICKNESS
     thickM(ipoin) = (thickgM(1)-thickgM(2))/(coorg(1,elem1,1)-coorg(1,elem1,2))&
             &*(z(ipoin)-coorg(1,elem1,2))+thickgM(2)
     thickA(ipoin) = (thickgA(1)-thickgA(2))/(coorg(1,elem1,1)-coorg(1,elem1,2))&
             &*(z(ipoin)-coorg(1,elem1,2))+thickgA(2)
   ELSE
     DO i1=1,2
     !STRESS
       stresM(:,ipoin,i1) = (stresgM(:,i1,1)-stresgM(:,i1,2))/(coorg(1,elem1,1) &
               & - coorg(1,elem2,2))*(z(ipoin)-coorg(1,elem2,2))+stresgM(:,i1,2)
       stresA(:,ipoin,i1) = (stresgA(:,i1,1)-stresgA(:,i1,2))/(coorg(1,elem1,1) &
               & - coorg(1,elem2,2))*(z(ipoin)-coorg(1,elem2,2))+stresgA(:,i1,2)
       !STRAIN
       stranM(:,ipoin,i1) = (strangM(:,i1,1)-strangM(:,i1,2))/(coorg(1,elem1,1) &
               & - coorg(1,elem2,2))*(z(ipoin)-coorg(1,elem2,2))+strangM(:,i1,2)
       stranA(:,ipoin,i1) = (strangA(:,i1,1)-strangA(:,i1,2))/(coorg(1,elem1,1) &
               & - coorg(1,elem2,2))*(z(ipoin)-coorg(1,elem2,2))+strangA(:,i1,2)
       !LAMBDA
       lambdM(:,ipoin,i1) = (lambdgM(:,i1,1)-lambdgM(:,i1,2))/(coorg(1,elem1,1) &
               & - coorg(1,elem2,2))*(z(ipoin)-coorg(1,elem2,2))+lambdgM(:,i1,2)
       lambdA(:,ipoin,i1) = (lambdgA(:,i1,1)-lambdgA(:,i1,2))/(coorg(1,elem1,1) &
               & - coorg(1,elem2,2))*(z(ipoin)-coorg(1,elem2,2))+lambdgA(:,i1,2)
       !internal variables
       storyM(ipoin,:,i1) = (storygM(:,i1,1)-storygM(:,i1,2))/(coorg(1,elem1,1) &
               & - coorg(1,elem2,2))*(z(ipoin)-coorg(1,elem2,2))+storygM(:,i1,2)
       storyA(ipoin,:,i1) = (storygA(:,i1,1)-storygA(:,i1,2))/(coorg(1,elem1,1) &
               & - coorg(1,elem2,2))*(z(ipoin)-coorg(1,elem2,2))+storygA(:,i1,2)
     END DO
     !THICKNESS
     thickM(ipoin) = (thickgM(1)-thickgM(2))/(coorg(1,elem1,1)-coorg(1,elem2,2))&
             &*(z(ipoin)-coorg(1,elem2,2))+thickgM(2)
     thickA(ipoin) = (thickgA(1)-thickgA(2))/(coorg(1,elem1,1)-coorg(1,elem2,2))&
             &*(z(ipoin)-coorg(1,elem2,2))+thickgA(2)
   END IF

   !inner and outer coordinates for nodes
   thickness = thickM(ipoin) + thickA(ipoin)
   zi(ipoin) = coorc(1,ipoin) - 0.5d0*thickness*cos(asin(1.d0)-displ(3,ipoin))
   zo(ipoin) = coorc(1,ipoin) + 0.5d0*thickness*cos(asin(1.d0)-displ(3,ipoin))
   ri(ipoin) = coorc(2,ipoin) - 0.5d0*thickness*sin(asin(1.d0)-displ(3,ipoin))
   ro(ipoin) = coorc(2,ipoin) + 0.5d0*thickness*sin(asin(1.d0)-displ(3,ipoin))
   !media-adventitia interface
   ratio = (thickM(ipoin)/thickness - 0.5d0)
   zMA(ipoin) = coorc(1,ipoin) + ratio*thickness*cos(asin(1.d0)-displ(3,ipoin))
   rMA(ipoin) = coorc(2,ipoin) + ratio*thickness*sin(asin(1.d0)-displ(3,ipoin))
 END DO

 SELECT CASE (counter)
 CASE (0:9)
   write(num,"(i1.1)") counter
 CASE (10:99)
   write(num,"(i2.2)") counter
 CASE (100:999)
   write(num,"(i3.3)") counter
 END SELECT

!******************************************************************************
!**                    VTK-XML Unstructured grid                             **
!******************************************************************************
 vtufile = TRIM(inname)//TRIM(num)
 OPEN(UNIT=luvtu,FILE=TRIM(vtufile)//'.vtu',STATUS='REPLACE')
 !write a VTK file for paraview
 WRITE(luvtu,"(A,A)") '<VTKFile type="UnstructuredGrid" version="1.0"',&
         &' byte_order="LittleEndian" header_type="UInt64">'
 !begin mesh
 WRITE(luvtu,"(2X,A)") '<UnstructuredGrid>'
 !MEDIA
 CALL vtk_xml_unstructuredgrid(npoin,nelem,zi,zMA,ri,rMA,stresM(:,:,1),stresM(:,:,2),&
                &stranM(:,:,1),stranM(:,:,2),lambdM(:,:,1),lambdM(:,:,2),&
                &storyM(:,:,1),storyM(:,:,2))
 !ADVENTICIA
 CALL vtk_xml_unstructuredgrid(npoin,nelem,zMA,zo,rMA,ro,stresA(:,:,1),stresA(:,:,2),&
                &stranA(:,:,1),stranA(:,:,2),lambdA(:,:,1),lambdA(:,:,2),&
                &storyA(:,:,1),storyA(:,:,2))
 !end of mesh
 WRITE(luvtu,"(2X,A)") '</UnstructuredGrid>'
 WRITE(luvtu,"(A)") '</VTKFile>'

 CLOSE(luvtu)
END SUBROUTINE to_paraview
!******************************************************************************
!**           Write VTK XML file with Unstructured Grid                      **
!******************************************************************************
SUBROUTINE vtk_xml_unstructuredgrid(npoin,nelem,zi,zo,ri,ro,stresi,streso,&
                &strani,strano,lambdi,lambdo,storyi,storyo)
 USE input_mod,ONLY: luvtu
 USE info_mod,ONLY: nodelem
 IMPLICIT NONE
 !--Dummy arguments
 INTEGER,INTENT(IN) :: npoin,nelem
 REAL(kind=8),INTENT(IN) :: zi(npoin),zo(npoin),ri(npoin),ro(npoin)
 REAL(kind=8),INTENT(IN) :: stresi(2,npoin),streso(2,npoin)
 REAL(kind=8),INTENT(IN) :: strani(3,npoin),strano(3,npoin)
 REAL(kind=8),INTENT(IN) :: lambdi(3,npoin),lambdo(3,npoin)
 REAL(kind=8),INTENT(IN) :: storyi(npoin,32),storyo(npoin,32)
 !--Local arguments
 INTEGER(kind=4) :: ipoin,ielem

 !begin piece
 WRITE(luvtu,"(4X,A,I2,A,I2,A)") '<Piece NumberOfPoints="',2*npoin,'" NumberOfCells="',nelem,'">'
 !begin point data, properties at nodes
 WRITE(luvtu,"(6X,A)") '<PointData Vectors="Stress">'
 !STRESS
 WRITE(luvtu,"(8X,A,A)") '<DataArray type="Float32" Name="Stress"',&
         &' NumberOfComponents="3" format="ascii">'
 DO ipoin=1,npoin
   WRITE(luvtu,"(10X,3(F6.1,1X))") stresi(:,ipoin)/1000.d0,0.0
 END DO
 DO ipoin=1,npoin
   WRITE(luvtu,"(10X,3(F6.1,1X))") streso(:,ipoin)/1000.d0,0.0
 END DO
 WRITE(luvtu,"(8X,A)") '</DataArray>'
 !STRAIN
 WRITE(luvtu,"(8X,A,A)") '<DataArray type="Float32" Name="Strain"',&
         &' NumberOfComponents="3" format="ascii">'
 DO ipoin=1,npoin
   WRITE(luvtu,"(10X,3(F6.3,1X))") strani(:,ipoin)
 END DO
 DO ipoin=1,npoin
   WRITE(luvtu,"(10X,3(F6.3,1X))") strano(:,ipoin)
 END DO
 WRITE(luvtu,"(8X,A)") '</DataArray>'
 !STRETCH
 WRITE(luvtu,"(8X,A,A)") '<DataArray type="Float32" Name="Stretch"',&
         &' NumberOfComponents="3" format="ascii">'
 DO ipoin=1,npoin
   WRITE(luvtu,"(10X,3(F6.3,1X))") lambdi(:,ipoin)
 END DO
 DO ipoin=1,npoin
   WRITE(luvtu,"(10X,3(F6.3,1X))") lambdo(:,ipoin)
 END DO
 WRITE(luvtu,"(8X,A)") '</DataArray>'
 !DENSITY
 WRITE(luvtu,"(8X,A,A)") '<DataArray type="Float32" Name="Density"',&
         &' NumberOfComponents="6" format="ascii">'
 DO ipoin=1,npoin
   WRITE(luvtu,"(10X,6(F7.3,1X))") storyi(ipoin,1:6)
 END DO
 DO ipoin=1,npoin
   WRITE(luvtu,"(10X,6(F7.3,1X))") storyo(ipoin,1:6)
 END DO
 WRITE(luvtu,"(8X,A)") '</DataArray>'
 !FIBER STRESS
 WRITE(luvtu,"(8X,A,A)") '<DataArray type="Float32" Name="FiberStress"',&
         &' NumberOfComponents="7" format="ascii">'
 DO ipoin=1,npoin
   WRITE(luvtu,"(10X,7(F7.3,1X))") storyi(ipoin,7:13)/1000.d0
 END DO
 DO ipoin=1,npoin
   WRITE(luvtu,"(10X,7(F7.3,1X))") storyo(ipoin,7:13)/1000.d0
 END DO
 WRITE(luvtu,"(8X,A)") '</DataArray>'
 !FIBER STRESS
 WRITE(luvtu,"(8X,A,A)") '<DataArray type="Float32" Name="GandR"',&
         &' NumberOfComponents="7" format="ascii">'
 DO ipoin=1,npoin
   WRITE(luvtu,"(10X,7(F7.4,1X))") storyi(ipoin,14:20)
 END DO
 DO ipoin=1,npoin
   WRITE(luvtu,"(10X,7(F7.4,1X))") storyo(ipoin,14:20)
 END DO
 WRITE(luvtu,"(8X,A)") '</DataArray>'
 WRITE(luvtu,"(6X,A)") '</PointData>'
 !begin cell data, properties at elements
 WRITE(luvtu,"(6X,A)") '<CellData>'
 WRITE(luvtu,"(6X,A)") '</CellData>'
 !begin coordinates of nodes
 WRITE(luvtu,"(6X,A)") '<Points>'
 WRITE(luvtu,"(8X,A,A)") '<DataArray type="Float32" Name="Points"',&
         &' NumberOfComponents="3" format="ascii">'
 DO ipoin=1,npoin
   WRITE(luvtu,"(10X,3(F7.3,1X))") zi(ipoin)*1000.d0,0.0,ri(ipoin)*1000.d0
 END DO
 DO ipoin=1,npoin
   WRITE(luvtu,"(10X,3(F7.3,1X))") zo(ipoin)*1000.d0,0.0,ro(ipoin)*1000.d0
 END DO
 WRITE(luvtu,"(8X,A)") '</DataArray>'
 WRITE(luvtu,"(6X,A)") '</Points>'
 !begin conectivity between nodes and elements
 WRITE(luvtu,"(6X,A)") '<Cells>'
 WRITE(luvtu,"(8X,A)") '<DataArray type="Int64" Name="connectivity" format="ascii">'
 DO ielem=1,nelem
   WRITE(luvtu,"(10X,4(I2,1X))") nodelem(ielem,1)-1,nodelem(ielem,2)-1,&
           &npoin+nodelem(ielem,1)-1,npoin+nodelem(ielem,2)-1
 END DO
 WRITE(luvtu,"(8X,A)") '</DataArray>'
 !begin array with nodes per element
 WRITE(luvtu,"(8X,A)") '<DataArray type="Int64" Name="offsets" format="ascii">'
 DO ielem=1,nelem
   WRITE(luvtu,"(10X,I3)") 4*ielem
 END DO
 WRITE(luvtu,"(8X,A)") '</DataArray>'
 !begin cell type for element
 WRITE(luvtu,"(8X,A)") '<DataArray type="UInt8" Name="types" format="ascii">'
 DO ielem=1,nelem
   WRITE(luvtu,"(10X,I1)") 8
 END DO
 WRITE(luvtu,"(8X,A)") '</DataArray>'
 WRITE(luvtu,"(6X,A)") '</Cells>'
 !end of piece
 WRITE(luvtu,"(4X,A)") '</Piece>'

END SUBROUTINE vtk_xml_unstructuredgrid
