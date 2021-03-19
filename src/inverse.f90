!******************************************************************************
!**                      GETTING INVERS OF A MATRIX                          **
!******************************************************************************
subroutine inverse(a,n,ainv)
 implicit none
!dummy arguments
 integer :: n
 REAL(8) :: A(N,N)
 REAL(8) :: AINV(N,N)
!local arguments
 INTEGER :: I,J,K,L
 REAL(KIND=8) :: M,MAUM(N,2*N)
!sE CREA LA MATRIZ AUMENTADA
 DO I=1,N
   DO J=1,2*N
     IF (J<=N) THEN
       MAUM(I,J)=A(I,J)
     ELSE IF ((I+N)==J) THEN
       MAUM(I,J)=1.D0
     ELSE
       MAUM(I,J)=0.D0
     END IF
   END DO
 END DO
!SE REDUCE LA MATRIZ A UNA TRIANGULAR superior por eliminacion
 DO K=1,N-1
   DO J=K+1,N
     M=MAUM(J,K)/MAUM(K,K)
     DO I=K,2*N
       MAUM(J,I)=MAUM(J,I)-M*MAUM(K,I)
     END DO
   END DO
 END DO
!elementos de la diagonal iguales a 1
 DO I=1,N
   M=MAUM(I,I)
   DO J=I,2*N
     MAUM(I,J)=MAUM(I,J)/M
   END DO
 END DO
!DIAGONALIZACION
 DO K=N-1,1,-1
   DO I=1,K
     M=MAUM(I,K+1)
     DO J=K,2*N
       MAUM(I,J)=MAUM(I,J)-MAUM(K+1,J)*M
     END DO
   END DO
 END DO
!ALMACENAMIENTO
 DO I=1,N
   DO J=1,N
     AINV(I,J)=MAUM(I,J+N)
   END DO
 END DO
end subroutine inverse
