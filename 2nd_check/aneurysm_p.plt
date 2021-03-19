#GNUPLOT
set encoding utf8
set terminal postscript eps enhanced 'Helvetica' 8 color size 7,3
set output 'aneurysm_penal.eps'
set multiplot
set size 0.25,0.5

pi=3.14159265358979323846

set origin 0.0,0.50
set title 'Axial Stress'
set xlabel 'Position[mm]'
set ylabel 'Cauchy Stress[kPa]'
plot 'aneurysm_p_100.dat' u ($2*1000):($4/1000) every ::0::34 t '1e5' w l,'' u ($2*1000):($4/1000) every ::35::69 t '1e8' w l,'' u ($2*1000):($4/1000) every ::70::104 t '1e11' w l

set origin 0.25,0.50
set title 'Circumferential Stress'
set xlabel 'Position[mm]'
set ylabel 'Cauchy Stress[kPa]'
plot 'aneurysm_p_100.dat' u ($2*1000):($5/1000) every ::0::34 t '1e5' w l,'' u ($2*1000):($5/1000) every ::35::69 t '1e8' w l,'' u ($2*1000):($5/1000) every ::70::104 t '1e11' w l

set origin 0.50,0.50
set title 'Radius'
set xlabel 'Position[mm]'
set ylabel 'Radius[mm]'
plot 'aneurysm_p_100.dat' u ($2*1000):($3*1000) every ::0::34 t '1e5' w l,'' u ($2*1000):($3*1000) every ::35::69 t '1e8' w l,'' u ($2*1000):($3*1000) every ::70::104 t '1e11' w l

set origin 0.75,0.50
set title 'Bending'
set xlabel 'Position[mm]'
set ylabel 'Angle[°]'
plot 'aneurysm_p_100.dat' u ($2*1000):($6*180/pi) every ::0::34 t 'e5' w l,'' u ($2*1000):($6*180/pi) every ::35::69 t 'e8' w l,'' u ($2*1000):($6*180/pi) every ::70::104 t 'e11' w l

set origin 0.0,0.0
set title 'Axial Stress'
set xlabel 'Position[mm]'
set ylabel 'Cauchy Stress[kPa]'
plot 'aneurysm_p_200.dat' u ($2*1000):($4/1000) every ::0::34 t '1e5' w l,'' u ($2*1000):($4/1000) every ::35::69 t '1e8' w l,'' u ($2*1000):($4/1000) every ::70::104 t '1e11' w l

set origin 0.25,0.0
set title 'Circumferential Stress'
set xlabel 'Position[mm]'
set ylabel 'Cauchy Stress[kPa]'
plot 'aneurysm_p_200.dat' u ($2*1000):($5/1000) every ::0::34 t '1e5' w l,'' u ($2*1000):($5/1000) every ::35::69 t '1e8' w l,'' u ($2*1000):($5/1000) every ::70::104 t '1e11' w l

set origin 0.50,0.0
set title 'Radius'
set xlabel 'Position[mm]'
set ylabel 'Radius[mm]'
plot 'aneurysm_p_200.dat' u ($2*1000):($3*1000) every ::0::34 t '1e5' w l,'' u ($2*1000):($3*1000) every ::35::69 t '1e8' w l,'' u ($2*1000):($3*1000) every ::70::104 t '1e11' w l

set origin 0.75,0.0
set title 'Bending'
set xlabel 'Position[mm]'
set ylabel 'Angle[°]'
plot 'aneurysm_p_200.dat' u ($2*1000):($6*180/pi) every ::0::34 t 'e5' w l,'' u ($2*1000):($6*180/pi) every ::35::69 t 'e8' w l,'' u ($2*1000):($6*180/pi) every ::70::104 t 'e11' w l
