#GNUPLOT
set encoding utf8
set terminal postscript eps enhanced 'Helvetica' 5 color size 5.5,1
set output 'aneurysm_penal_time.eps'
set multiplot
set size 0.25,1

pi=3.14159265358979323846

set origin 0.0,0.0
set title 'Axial Stress'
set xlabel 'Position[mm]'
set ylabel 'Cauchy Stress[kPa]'
plot 'aneurysm_p.dat' u 1:($4/1000) every ::0::8 t '1e5' w l,'' u 1:($4/1000) every ::9::17 t '1e8' w l,'' u 1:($4/1000) every ::18::26 t '1e11' w l

set origin 0.25,0.0
set title 'Circumferential Stress'
set xlabel 'Position[mm]'
set ylabel 'Cauchy Stress[kPa]'
plot 'aneurysm_p.dat' u 1:($5/1000) every ::0::8 t '1e5' w l,'' u 1:($5/1000) every ::9::17 t '1e8' w l,'' u 1:($5/1000) every ::18::26 t '1e11' w l

set origin 0.50,0.0
set title 'Radius'
set xlabel 'Position[mm]'
set ylabel 'Radius[mm]'
plot 'aneurysm_p.dat' u 1:($3*1000) every ::0::8 t '1e5' w l,'' u 1:($3*1000) every ::9::17 t '1e8' w l,'' u 1:($3*1000) every ::18::26 t '1e11' w l

set origin 0.75,0.0
set title 'Bending'
set xlabel 'Position[mm]'
set ylabel 'Angle[°]'
plot 'aneurysm_p.dat' u 1:($6*180/pi) every ::0::8 t '1e5' w l,'' u 1:($6*180/pi) every ::9::17 t '1e8' w l,'' u 1:($6*180/pi) every ::18::26 t '1e11' w l
