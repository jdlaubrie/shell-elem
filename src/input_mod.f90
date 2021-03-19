!******************************************************************************
!**                      MODULE OF GLOBAL PARAMETERS                         **
!******************************************************************************
MODULE input_mod
 ! data base and routine to manage input
 USE param_mod,ONLY: midn,miln,mnam,mstl,mchr,mich,mlen,mttl
 IMPLICIT NONE
 !*** variables for listening and extracting values
 LOGICAL :: backs=.FALSE. !TRUE to keep(WORDS,PARAMS) from previous call to LISTEN
 !standard variables for LISTEN
 INTEGER,PARAMETER :: maxwp=60 !Maximum number of words in CARD
 INTEGER :: nwopa, & !Number of WORDS or PARAMS read in CARD
          & nnwor, & !Number of WORDS read in CARD
          & nnpar, & !Number of PARAMS read in CARD
          & ierrd !Flag indicating erro
 REAL(kind=8) :: param(maxwp) !PARAMS read
 CHARACTER(len=miln) :: card,inname !To read a string to be processed
 CHARACTER(len=mstl) :: words(maxwp) !WORDS read
 CHARACTER(len=mnam) :: names(7) !names read as string of characters between ''
 LOGICAL :: echo=.FALSE. !default echo .FALSE. to change it use: echo .TRUE.
 !standard variables for RUNEND
 LOGICAL :: gen_data_file=.TRUE.
 !standard variables for reading reals RDFRRE
 INTEGER,PARAMETER :: maxnr=40 !maximum number of REALS than can be read in a line
 INTEGER :: nreal         !actual number of REALs read
 REAL(8) :: reard(maxnr)  !values read
 !standard variables for openfi
 INTEGER,PARAMETER :: ludat=11, & !id number for input file
                    & lures=12, & !id number for result file
                    & luden=13, & !id number for density file
                    & lustr=14, & !id number for fiber stress file
                    & lugnr=15, & !id number for growth and remodeling file
                    & ludam=16, & !id number for growth and remodeling file
                    & luloa=17, & !id number for external forces
                    & lursn=18, & !id number for result in compact format (binary future)
                    & luvtu=20 !id number for VTK XML file UnstructuredGrid

 CONTAINS
!******************************************************************************
!**                          SUBROUTINE UPCASE                               **
!******************************************************************************
  SUBROUTINE upcase(string)
  !*************************************************************************
  !
  !****this routine modifies a string, converting  a..z ==> A..Z
  !
  !*************************************************************************
  IMPLICIT NONE
  !--- Dummy variables
  CHARACTER(len=*),INTENT(INOUT) :: string
  !--- Local variables
  INTEGER :: i,k,n

  n = LEN_TRIM(string)
  DO i=1,n
    k = ICHAR(string(i:i))
    IF (k>= 97.AND.k<=122) string(i:i)=char(k-32)
  END DO

  RETURN
  END SUBROUTINE upcase
!******************************************************************************
!**                          SUBROUTINE LISTEN                               **
!******************************************************************************
  SUBROUTINE listen(subr)
  !***********************************************************************
  !
  !***reads a string and interprets it as words and parameters.
  !
  !   - maximum number of words and parameters = maxwp.
  !   - only the first six characters of each word are decoded.
  !   - the underline characters '_' are discarted.
  !   - lower case letters are converted to upper case.
  !   - each word or parameter must be separated by ' ', '=', ':' or ','
  !   - a "comment" begins with '$', '!', '/'  or '\' in any place.
  !   - a line that has a comment beginning with '/' or '\'
  !     continuates in the next line.
  !   - words between "[" and "]" are units and are not decoded.
  !   - a line beginning with title is not decoded. title directive.
  !   - a line beginning with echo turns 'on' or 'off' the echo.
  !
  !***********************************************************************
   IMPLICIT NONE

   !***  arguments
   CHARACTER(len=*),INTENT(IN) :: subr  !calling subroutine
   !--- Local variables
   REAL    (kind=8) digit
   INTEGER (kind=4) first,firsp,last,lastp,ptrwo,npptr,nwptr,leng,flag,nname
   CHARACTER :: letra,letra1
   LOGICAL :: newln,fastr
   !***  begin
   IF (backs) THEN    !if data exists from the previous call to listen
     backs = .FALSE.  !modify flag
     RETURN           !end of the task
   END IF

   nnwor = 0         ! initialize number of WORDS
   nname = 0         ! initialize number of NAMES
   nwptr = 0         ! initialize pointer to WORDS
   npptr = 0         ! initialize pointer to PARAMS
   ierrd = 0         ! error indicator
   words = ''        ! initializes WORDS
   param = 0.0d0     ! initializes PARAMETERS
   newln = .FALSE.   ! initializes continuation line to FALSE
   firsp = 0         ! initializes to zero just to have some initial value

   ! ***** use fast read first ******
   fastr = .TRUE.      !initializes
   CALL rdfrre('LISTEN',param,nnpar,maxnr,fastr)
   IF (fastr) THEN  !check is read was successful
     nwopa = nnpar  !number of WORDS/PARAMS = number of PARAMS
     RETURN         !end of the task
   END IF
   ! ***** WORDS and PARAMS are mixed
   nnpar = 0         ! initialize number of PARAMETERS
   param = 0.0d0     ! initializes PARAMETERS

   DO
     !Don't RETURN without answer CONTINUE reading IF / or \
     IF (((nnwor/=0).OR.(nnpar/=0)).AND.(.NOT.newln)) EXIT
     last  = 0    ! initializes last processed character
     lastp = 0
     READ(ludat,"(A)",end=2,err=1) card     ! READ a card
     newln = .FALSE.                        ! initialize
     leng = LEN_TRIM(card)                  ! compute the length.

     outer : DO                             ! decode all the card.
       IF (last>=leng) EXIT                 ! all characters processed
       ! block to find the FIRST character of the Key-word
       first = last+1                       ! first non-processed character
       DO                       ! Skip over auxiliar characters
         IF (first>leng) EXIT outer         ! end of card reached EXIT loop
         letra = card(first:first)          ! present character
         ! skip auxiliar characters
         IF (letra/='_'.AND. &           ! Jump null CHARACTER (_)
           & letra/= CHAR(9).AND. &      ! jump tabulator
           & letra/= ' '.AND. &          ! Jump separators ( =:,)
           & letra/= '='.AND. &
           & letra/= ':'.AND. &
           & letra/= ','.AND. &
           & letra/= '[') EXIT
           ! skip over Units
         IF (letra=='[') THEN  ! Jump Units (Ejem: [KN/m^2])
           DO
             first=first+1                ! skip previous character
             ! non-paired [], ERROR
             IF (first>leng) CALL runend('LISTEN: UNITS MUST END WITH "]"')
             letra = card(first:first)     ! present character
             IF (letra==']') EXIT          ! closing bracket found, EXIT loop
           END DO
         END IF
         first=first+1                    ! new first non-processed char
       END DO
       ! read key word
       IF (last==0) firsp=first          ! SAVE first to PRINT card
       ! loop to find the LAST character of the Key-word
       last=first                        !initializes
       ! check if a label is input
       IF (letra=="'".OR.letra=='"') THEN
         IF (nnwor<1) THEN  !if it begins with a label
           nnwor = 1
           nnpar = 1
         END IF
         letra1 = letra                       ! keep opening char
         DO                                   ! search for closing char
           last = last+1                      ! point to next character
           IF (last>leng) CALL runend('LISTEN: non paired label chars')
           letra = card(last:last)            ! present character
           IF (letra==letra1) EXIT            ! closing char found
         END DO
         IF (last-first<3) CALL runend('LISTEN: a null label is not valid')
         nname = nname + 1                    ! increase number of names
         names(nname) = ''                    ! initializes name blank
         names(nname) = card(first+1:MIN(last-1,mnam+first+1))
         param(nnwor) = - nname
       ELSE
         DO  ! search for the last character, and then exit
           letra = card(last:last)         ! present character
           IF (letra==' '.OR. &            ! Look for separator ( =:,).
             & letra==CHAR(9).OR. &        ! jump tabulator
             & letra=='='.OR. &            !standard separators
             & letra==':'.OR. &            !
             & letra==','.OR. &            !
             & letra=='['.OR. &            ! Look for units
             & letra=='$'.OR. &            ! Look for coment ($!).
             & letra=='!'.OR. &
             & letra=='/'.OR. &            ! Look for continuation (/\).
             & letra=='\') EXIT
             last = last+1                 ! point to next character
           IF (last>leng) EXIT             ! look for END of line
         END DO
         last = last - 1                   ! correct last position
         IF (letra=='$'.OR.letra=='!') leng = last  !comments
         IF (letra=='/'.OR.letra=='\') THEN    ! continuation line
           leng  = last                        ! deal with continuation
           newln = .TRUE.                      ! set new line flag.
         END IF
         IF (last<first) EXIT                 ! nothing read, EXIT loop
           lastp = last                       ! save last to print card
         READ(card(first:last),'(G20.0)',IOSTAT = flag) digit  !read a number
         IF (card(first:first)=='d'.OR. &     !there is compiler error
           & card(first:first)=='D'.OR. &     !if the character strings
           & card(first:first)=='e'.OR. &     !begins with 'd' or 'e'
           & card(first:first)=='E') flag=64  !and the rest is a number
         IF (flag==0) THEN                    !O.K. it is a parameter.
           nnpar = nnpar+1                    !increase # of parameters
           npptr = npptr+1                    !pointer to next parameter
           ! check Maximum allowed
           IF (npptr>maxwp) CALL runend('LISTEN: TOO MANY PARAM IN COMMAND')
           IF(nwptr > npptr) npptr = nwptr   ! syncronizes words & params
           param(npptr) = digit              ! store param
         ELSE                                ! it is a word.
           nnwor = nnwor+1                   ! # of words
           nwptr = nwptr+1                   ! pointer to next word
           ! check Maximum allowed
           IF (nwptr>maxwp) CALL runend('LISTEN: TOO MANY WORDS IN COMMAND')
           IF (npptr>=nwptr) nwptr=npptr+1 ! syncronizes words & params
           ptrwo = 0                         ! initializes word length
           DO                                ! loop to extract the WORD
             ptrwo = ptrwo+1                 ! updates word length
             !if word processed or word length greater than 6, Exit loop
 !           IF (first>last.OR.ptrwo==midn+1) EXIT
             IF (first>last.OR.ptrwo==mstl+1) EXIT
             words(nwptr)(ptrwo:ptrwo) = card(first:first) ! store character
             first = first+1                 ! process next character
             DO   ! loop to Jump over Underline CHARACTERs
               IF (card(first:first)/='_') EXIT
               first = first+1
             END DO
           END DO
           CALL upcase(words(nwptr))       ! convert to upper case.
         END IF

         IF (TRIM(words(1))=='TITLE') THEN        ! deal with title
           !IF ((.not.echo).AND.(TRIM(subr)/='NOECHO')) &
           WRITE(lures,"(1X,A)",ERR=9999) card(firsp:leng)
           first = last+2
           DO
             IF (card(first:first)/=' ') EXIT  ! Remove trailing blank spaces
             first = first + 1
           END DO
           IF (leng<first) CALL runend('LISTEN: BLANK IS ILEGAL HEADER')
           card = card(first:leng)              ! remove words(1) from card
           leng = leng-first+1
           firsp = 1
           lastp = leng
           param(1) = REAL(leng,8)              ! store length to print title
           EXIT outer                           ! break the DO
         END IF
       END IF
     END DO outer

     ! deal with echo
     IF ((TRIM(words(1))=='ECHO').AND.(nnpar==0).AND.(nnwor==2)) THEN
       IF (TRIM(words(2))=='OFF') THEN
         echo = .FALSE.
         IF (TRIM(subr)/='NOECHO') &
           & WRITE(lures,"(1X,A6,' <-- ',A)",ERR=9999)'LISTEN','ECHO OFF'
       ELSE
         echo = .TRUE.
         IF (TRIM(subr)/='NOECHO') &
           & WRITE(lures,"(1X,A6,' <-- ',A)",ERR=9999)'LISTEN','ECHO ON'
       END IF
       nnwor = 0                               ! forget all
       nwptr = 0
       words = ''
     ELSE                                      ! PRINT card
       IF ((echo).AND.(firsp<=lastp).AND.(TRIM(subr)/='NOECHO')) THEN
         IF (newln) THEN
           lastp = lastp+2
           card(lastp-1:lastp) = ' \\'
         END IF
         WRITE(lures,"(1X,A,' <-- ',A)",ERR=9999) TRIM(subr),card(firsp:lastp)
       END IF
     END IF

   END DO ! (nnwor /= 0) .OR. (nnpar /= 0) .AND. newln)

   nwopa = MAX(npptr,nwptr)

   RETURN
   !***  error:
  1 CALL runend('LISTEN: ERROR DETECTED WHEN READING')
  2 CALL runend('LISTEN: END OF FILE DETECTED       ')
  9999 CALL runend('')
  END SUBROUTINE listen
!******************************************************************************
!**                      SUBROUTINE RDFRRE                                   **
!******************************************************************************
  SUBROUTINE rdfrre(subna,reard,nreal,maxnr,fastr)
  !***********************************************************************
  !
  !***READS A STRING AND INTERPRETS IT AS REALS (UP TO MAXNR PER LINE)
  !
  !     It is assummed that only reals are read on the line !!!
  !***********************************************************************
   IMPLICIT NONE
   !--- Dummy variables
   INTEGER,INTENT(IN)  :: maxnr
   INTEGER,INTENT(OUT) :: nreal
   REAL(8),INTENT(OUT) :: reard(maxnr)
   CHARACTER(len=*),INTENT(IN) :: subna
   LOGICAL,INTENT(INOUT) :: fastr    !fast read
   !--- Local variables
   INTEGER :: i,last,leng,first,flag,nrdln
   LOGICAL :: newln
   !***  begin
   reard = 0  !initializes real parameters read
   nreal = 0  !initializes number of parameters read
   nrdln = 0  !initializes number of phisycal lines read
   DO
     READ(ludat,"(A)",end=2,err=1) card            ! READ a card
     leng = LEN_TRIM(card)                         ! calculate the length.
     nrdln = nrdln + 1
     IF (leng==0) CYCLE
     ! first search for comment sign $ and eliminate remaining characters
     i = 1
     remark: DO
       IF (card(i:i)=='$') THEN
         leng = i
         DO
           leng = leng - 1
           IF (leng==0) EXIT remark
           IF (card(leng:leng)/=' ' ) EXIT remark
         END DO
       END IF
       IF (i==leng) EXIT
       i = i+1
     END DO remark
     IF (leng==0) CYCLE
     ! determines if it is a continuation line
     IF (card(leng:leng)=='/'.OR.card(leng:leng)=='\') THEN
       newln=.TRUE.
       DO
         leng = leng - 1
         IF (leng==0) EXIT
         IF (card(leng:leng)/=' ') EXIT
       END DO
     ELSE
       newln = .FALSE.
     END IF

     i = 0
     DO
       i = i + 1
       IF (i>leng) EXIT
       IF (card(i:i)/=' ') THEN
         nreal = nreal+1
         first = i
         last  = leng
         DO
           i = i+1
           IF (i>leng) EXIT
           IF (card(i:i)==' ') THEN
             i = i-1
             last = i
             EXIT
           END IF
         END DO
         IF (nreal<=maxnr) THEN
           READ(card(first:last),'(f20.0)',IOSTAT=flag) reard(nreal)
           IF (flag/=0) THEN
             IF (fastr) THEN
               fastr = .FALSE.
               DO i=1,nrdln
                 BACKSPACE (ludat)
               END DO
               nwopa = nnpar
               RETURN
             ELSE
               WRITE (lures,"(A)",ERR=9999) TRIM(subna)
               WRITE (lures,"(A)",ERR=9999) TRIM(card)
               CALL runend('RDFRRE: A REAL NUMBER WAS EXPECTED')
             END IF
           END IF
         END IF
       END IF
     END DO
     IF (nreal>maxnr) THEN
       WRITE(lures,*,ERR=9999) 'Warning !!! More REALS than Expected.'
       WRITE(lures,*,ERR=9999) TRIM(card)
     END IF
     IF (newln) CYCLE
     EXIT
   END DO
   RETURN
   !     ***errors:
   1 CALL runend('RDFRRE: ERROR DETECTED WHEN READING')
   2 CALL runend('RDFRRE: END OF FILE DETECTED       ')
   9999 CALL runend('')
  END SUBROUTINE rdfrre
!******************************************************************************
!**                          SUBROUTINE OPENFI                               **
!******************************************************************************
  SUBROUTINE openfi()
   IMPLICIT NONE
   INTEGER :: ierr1,ierr2,ierr3,ierr4,long
   CHARACTER(len=miln) :: path1,path2
!   CHARACTER(len=80) :: cadena
   !--- Begin
   ierr1=0
   ierr2=0
   ierr3=0
   ierr4=0
   CALL GET_COMMAND_ARGUMENT(1,inname,long,ierr1)        !get name of problem
   IF (ierr1/=0) CALL runend('OPENFI: INPUT ARGUMENT NOT FOUND')
!OPEN FILE TO INPUT
   CALL GETCWD(path1,ierr3)
   IF (ierr3/=0) CALL runend('OPENFI: PROBLEM TO GET DATA DIRECTORY')
   WRITE(*,"(' Data Directory: ',A)") TRIM(path1)
   ierr2=1
   OPEN(ludat,FILE=TRIM(inname)//'.dat',STATUS='old',err=100)
!OPEN FILE TO OUTPUT
   CALL CHDIR('../scratch/'//TRIM(inname),ierr3)
   IF (ierr3/=0) THEN
     CALL CHDIR('../scratch',ierr4)
     IF (ierr4/=0) CALL runend('OPENFI: THERE IS NOT SCRATCH FOLDER IN MASTER FOLDER')
     CALL SYSTEM('mkdir '//TRIM(inname))
     CALL CHDIR('./'//TRIM(inname),ierr4)
     IF (ierr4/=0) CALL runend('OPENFI: PROBLEM IN MAKE SCRATCH/PROBLEM FOLDER')
   END IF
   CALL GETCWD(path2,ierr3)
   IF (ierr3/=0) CALL runend('OPENFI: PROBLEM TO GET STRACTH/PROBLEM DIRECTORY')
   WRITE(*,"(' Scratch Directory: ',A)") TRIM(path2)
   !open result file
   ierr2=2
   open(lures,file=TRIM(inname)//'.res',status='replace',err=100)
   WRITE(lures,"(' Data Directory: ',A)") TRIM(path1)
   WRITE(lures,"(' Scratch Directory: ',A)") TRIM(path2)
   !open density file
   ierr2=3
   open(luden,file=TRIM(inname)//'.den',status='replace',err=100)
   !open fiber stress file
   ierr2=4
   open(lustr,file=TRIM(inname)//'.str',status='replace',err=100)
   !open remodeling and growth file
   ierr2=5
   open(lugnr,file=TRIM(inname)//'.gnr',status='replace',err=100)
   !open damage file
   ierr2=6
   open(ludam,file=TRIM(inname)//'.dam',status='replace',err=100)
   !open loads file
   ierr2=7
   open(luloa,file=TRIM(inname)//'.loa',status='replace',err=100)
   !open reduced result file
   ierr2=8
   open(lursn,file=TRIM(inname)//'.rsn',status='replace',err=100)
   ierr2=0
   100 IF (ierr2/=0) CALL runend('OPENFI: ERROR IN OPENING FILES')

   call listen('OPENFI')

  END SUBROUTINE openfi
!******************************************************************************
!**                       FUNCTION EXISTS                                    **
!******************************************************************************
  FUNCTION exists(fword,posit,value)
  !**********************************************************************
  !
  !****this routine verifys IF FWORD exists in WORDS
  !
  !**********************************************************************
   IMPLICIT NONE
   !***  arguments
   LOGICAL   exists
   CHARACTER(len=*),INTENT(IN) :: fword    !maximum length is 'midn'
   ! both optional arguments are unmodified if FWORD not found
   INTEGER,OPTIONAL,INTENT(OUT) :: posit   !possition in array WORDS
   REAL(8),OPTIONAL,INTENT(OUT) :: value   !associated value (PARAM)
   !     local
   INTEGER (kind=4)  iword,l

   !     begin
   exists = .FALSE.  ! initialize
   iword  = 0                                        !initializes pointer
   l = MIN(LEN_TRIM(fword),midn)                     !length of string to search

   DO
     IF (iword>=nwopa) EXIT
     iword  = iword + 1
     exists = (words(iword)(1:l) == fword(1:l))
     IF (exists) THEN
       IF( PRESENT(posit)) posit = iword           !position in array
       IF( PRESENT(value)) value = param(iword)    !associated parameter
       EXIT
     END IF
   END DO

   RETURN
   END FUNCTION exists
!******************************************************************************
!**                       FUNCTION GETINT                                    **
!******************************************************************************
  FUNCTION getint(fword,defau,texts)
  !**********************************************************************
  !
  !****this routine gets the INTEGER value associated with fword
  !
  !      - TEXTS(1:1) == '!' => COMPULSORY PARAMETER
  !
  !**********************************************************************
   IMPLICIT NONE
   INTEGER (kind=4)              :: getint
   !
   !***  arguments
   !
   CHARACTER(len=*), INTENT(IN)  :: fword
   INTEGER (kind=4), INTENT(IN)  :: defau
   CHARACTER(len=*), INTENT(IN) :: texts
   !     local
   INTEGER (kind=4)  iword, & !counter
                  &   i,j,l    !auxiliar
   LOGICAL    found
   CHARACTER(len=40) :: points='........................................'
   CHARACTER(len=7) :: spaces='       '

   !***  begin
   l = LEN_TRIM(texts)
   found = exists(fword,iword)
   IF (found) THEN
     getint = INT(param(iword))
   ELSE IF (texts(1:1)=='!') THEN
     WRITE(lures,100,ERR=999) TRIM(fword),texts(2:l)
     WRITE(*    ,100,ERR=999) TRIM(fword),texts(2:l)
     CALL runend('GETINT: COMPULSORY PARAM. NOT FOUND')
   ELSE
     getint = defau
   END IF

   IF (texts(2:2)/='-') THEN
     i = 40-l
     j = 7-LEN_TRIM(fword)
     WRITE (lures,"(9X,A,A,' ',A,A,' = ',i12)",ERR=999) &
             & texts(2:l),points(1:i),TRIM(fword),spaces(1:j),getint
   END IF

   RETURN
   !***  format for error messagge
  100 FORMAT(/,4X,'*** ERROR: ',A,' = ',A,/,15X,&
          &'IS A COMPULSORY PARAMETER. SPECIFY IT !')
  999 CALL runend('')
  END FUNCTION getint
!******************************************************************************
!**                       FUNCTION GETREA                                    **
!******************************************************************************
  FUNCTION getrea(fword,defau,texts)
  !**********************************************************************
  !
  !****this routine gets the REAL value associated with fword
  !
  !      - TEXTS(1:1) == '!' => COMPULSORY PARAMETER
  !
  !**********************************************************************
   IMPLICIT NONE
   REAL(kind=8) :: getrea
   !***  argument
   CHARACTER(len=*),INTENT(IN) :: fword
   REAL (kind=8),INTENT(IN) :: defau
   CHARACTER(len=*),INTENT(IN) :: texts
   !     local
   INTEGER(kind=4) :: iword, & !counter
                    & i,j,l    !auxiliar
   LOGICAL :: found
   CHARACTER(len=40) :: points='........................................'
   CHARACTER(len=7) :: spaces='       '

   !***  begin
   l = LEN_TRIM(texts)
   found = exists(fword,iword)
   IF (found) THEN
     getrea = param(iword)
   ELSE IF( texts(1:1) == '!')  THEN
     WRITE(lures,100,ERR=999) TRIM(fword),texts(2:l)
     WRITE(*,    100,ERR=999) TRIM(fword),texts(2:l)
     CALL runend('GETINT: COMPULSORY PARAM. NOT FOUND')
   ELSE
     IF (ABS(defau)>1D-19) THEN
       getrea = defau
     ELSE
       getrea = 0.d0
     END IF
   END IF

   IF (texts(2:2)/='-') THEN
     i = 40-l
     j = 7-LEN_TRIM(fword)
     WRITE (lures,"(9X,A,A,' ',A,A,' = ',G14.6)",ERR=999) &
             & texts(2:l),points(1:i),TRIM(fword),spaces(1:j),getrea
   END IF

   RETURN
   !***  format for error messagge
  100 FORMAT(/,4X,'*** ERROR: ',A,' = ',A,/,15X,&
          &'IS A COMPULSORY PARAMETER. SPECIFY IT !')
  999 CALL runend('')
  END FUNCTION getrea
!******************************************************************************
!**   this routine gets the NAME (label) value associated with key-word      **
!******************************************************************************
  FUNCTION get_name(kword,founds,texts,defau,posin,posout,stype)
  IMPLICIT NONE
  CHARACTER(len=mnam) :: get_name
  ! arguments
  CHARACTER(len=midn),INTENT(IN),OPTIONAL :: kword   !associated key-word
  LOGICAL,INTENT(OUT),OPTIONAL :: founds             !if key word is found
  CHARACTER(len=*),INTENT(IN),OPTIONAL :: defau!default value if key word not found
  CHARACTER(len=*),INTENT(IN),OPTIONAL :: texts   !explanation text
  CHARACTER(len=*),INTENT(IN),OPTIONAL :: stype   !set type to add to numbers
  INTEGER(kind=4),INTENT(IN),OPTIONAL :: posin    !position in word list
  INTEGER(kind=4),INTENT(OUT),OPTIONAL :: posout  !position in word list
  !--- Functions
  CHARACTER(len=mich) :: inttoch
  ! local
  INTEGER(kind=4) :: iword, &  !counter
                   & ival      !param value
  INTEGER(kind=4) :: ll
  LOGICAL :: found
  ! begin
  IF (PRESENT(posin)) THEN
     iword = posin
     found = .TRUE.
  ELSE
    found = exists(kword,iword)   !see if key-word exists
    IF( PRESENT(posout) ) posout = iword
  END IF

  IF (found) THEN
    ival = INT(param(iword))    !associated param
    SELECT CASE (ival)
      CASE(:-1)                    !full label
        get_name = names(-ival)
      CASE(0)                      !label is the next word
        IF (nwopa>iword) THEN
          get_name = TRIM(words(iword+1)(1:MIN(mstl,mnam)))//'                   '
        ELSE
          get_name = TRIM(words(iword)(1:MIN(mstl,mnam)))//'                    '
        END IF
      CASE (1:)                     !label is a two digit number
        get_name = ''
        IF (PRESENT(stype)) THEN
          ll = MIN0(mnam-2,LEN_TRIM(stype))
          get_name(1:ll) = stype(1:ll)
        END IF
        get_name = TRIM(get_name)//TRIM(inttoch(ival,2))
    END SELECT

  ELSE IF (PRESENT(texts)) THEN
    IF (texts(1:1)=='!') THEN
      IF (PRESENT(kword)) THEN
        WRITE(lures,100,ERR=999) TRIM(kword),texts(2:LEN_TRIM(texts))
        WRITE(*    ,100,ERR=999) TRIM(kword),texts(2:LEN_TRIM(texts))
      ELSE
        WRITE(lures,100,ERR=999) TRIM(kword),texts(2:LEN_TRIM(texts))
        WRITE(*    ,100,ERR=999) TRIM(kword),texts(2:LEN_TRIM(texts))
      END IF
      CALL runend('GET_NAME: COMPULSORY PARAM. NOT FOUND')
    ELSE IF ( PRESENT(defau) )THEN
      get_name = defau
    END IF
  END IF

  IF (PRESENT(texts)) THEN
    IF (texts(2:2)/='-') THEN
      IF (PRESENT(kword)) THEN
        WRITE(lures,"(9X,A,'... ',A,' = ',(A))",ERR=999) texts(2:LEN_TRIM(texts)),&
             & TRIM(kword),TRIM(get_name)
      ELSE
        WRITE(lures,"(9X,A,'......... = ',(A))",ERR=999) texts(2:LEN_TRIM(texts)),&
             & TRIM(get_name)
      END IF
    END IF
  END IF
  IF (PRESENT(founds)) founds = found

  RETURN
  ! format for error messagge
  100 FORMAT(/,4X,'*** ERROR: ',A,' = ',A,/,15X,&
          & 'IS A COMPULSORY PARAMETER. SPECIFY IT !')
  999 CALL runend('')
  END FUNCTION get_name
!******************************************************************************
!**                     SUBROUTINE RUNEND                                    **
!******************************************************************************
  SUBROUTINE runend(message)
  !*************************************************************************
  !
  !****this routine stops the run and prints the last read card
  !    the message MESSAGE is output to different places (screen, debug, report)
  !
  !*************************************************************************
   IMPLICIT NONE
   !--- Dummy variables
   CHARACTER(len=*),INTENT(IN) :: message
   !--- Local variables
   INTEGER :: i
   !--- Begin
   IF (LEN_TRIM(message).LE.1) THEN
     WRITE(lures,"(//,5X,34('* '),//,25X,'AN ERROR HAS BEEN DETECTED:',/)",ERR=999)
     WRITE(lures,"(5X,'LAST CARD READ : ',/,A,//,5X,34('* '))",ERR=999) TRIM(card)
     WRITE(lures,"(5X,'Number of words: ',i2,'  Number of pars :',i2)",ERR=999) &
       & nnwor,nnpar
     WRITE(lures,"(5X,A,' = ',e20.10)",ERR=999) (TRIM(words(i)),param(i),i=1,nwopa)
     WRITE(*,"('* * * AN ERROR HAS BEEN DETECTED * * *')")
     CLOSE(ludat)   !close input data file
     CLOSE(lures)   !close result file
     STOP '* * * See detailes in *.res file * * *'
   ELSE
     WRITE(lures,*) TRIM(message)
     WRITE(lures,"(5X,'LAST CARD READ : ',/,A,//,5X,34('* '))",ERR=999) TRIM(card)
     WRITE(lures,"(5X,'Number of words: ',i2,'  Number of pars :',i2)",ERR=999) &
       & nnwor,nnpar
     WRITE(lures,"(5X,A,' = ',e20.10)",ERR=999) (TRIM(words(i)),param(i),i=1,nwopa)
     WRITE(*,*) TRIM(message)
     CLOSE(ludat)   !close input data file
     CLOSE(lures)   !close result file
     STOP '* * * See detailes in *.res file * * *'
   END IF

   ! Activate if there is possibility to fill disk
   999 WRITE(*,100)
   100 FORMAT(//,'  AN ERROR HAS BEEN DETECTED:',                          &
            &  /,'  FAILED WRITTING, THE DISK IS POSSIBLY FULL.',          &
            & //,'  PLEASE, CHECK AND FREE DISK SPACE BEFORE CONTINUING.')
  END SUBROUTINE runend
END MODULE input_mod
