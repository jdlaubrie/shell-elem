program main
!******************************************************************************
!**                 FINITE ELEMENT METHOD FOR SHELL                      **
!**                          by Joan Laubrie                                 **
!**                                                                          **
!**-Peter Wriggers, Nonlinear Finite Element Method, 2008.                   **
!******************************************************************************
 USE input_mod,ONLY: openfi,lures,lustr,lugnr,ludam,luloa,lursn
 IMPLICIT NONE
 INTEGER :: &
     nb_ticks_initial, & ! initial value of the clock tick counter
     nb_ticks_final,   & ! final value of the clock tick counter
     nb_ticks_max,     & ! maximum value of the clock counter
     nb_ticks_sec,     & ! number of clock ticks per second
     nb_ticks            ! number of clock ticks of the code
 REAL(kind=8) :: elapsed_clock_time  ! real time in seconds
 REAL(kind=8) :: time1,time2,elapsed_cpu_time
 !-- Begin
 WRITE(*,"(/,20x,'*** RUNING MATE ***')")
 WRITE(*,"('***************************************************************')")
 WRITE(*,"('**       FINITE ELEMNT METHOD FOR SHELL-ELEMENTS             **')")
 WRITE(*,"('***************************************************************')")
 WRITE(*,"(18x,'*** STARTING ANALYSIS ***',/)")
 !open some files for analysis
 CALL openfi()
 !read input data file
 CALL datainp()
 !initial setting for calculation
 CALL initial_comp_0()
 !start the time count
 CALL CPU_TIME(time1)
 CALL SYSTEM_CLOCK(COUNT_RATE=nb_ticks_sec, COUNT_MAX=nb_ticks_max)
 CALL SYSTEM_CLOCK(COUNT=nb_ticks_initial)
 !computation of problem
 CALL computation()
 !end the time count
 CALL SYSTEM_CLOCK(COUNT=nb_ticks_final)
 CALL CPU_TIME(time2)
 elapsed_cpu_time = time2 - time1
 nb_ticks = nb_ticks_final - nb_ticks_initial
 IF (nb_ticks_final < nb_ticks_initial) nb_ticks = nb_ticks + nb_ticks_max
   elapsed_clock_time = REAL(nb_ticks) / nb_ticks_sec
 !close files
 CLOSE(lures)
 CLOSE(lustr)
 CLOSE(lugnr)
 CLOSE(ludam)
 CLOSE(luloa)
 CLOSE(lursn)
 WRITE(*,"(/,19x,'*** END OF ANALYSIS ***',/)")
 !write the time ouput
 WRITE(*,"(/,5x,'-->ELAPSED CPU TIME: ',F15.6)") elapsed_cpu_time
 WRITE(*,"(5x,'-->ELAPSED CLOCK TIME: ',F15.6,/)") elapsed_clock_time
end program main
