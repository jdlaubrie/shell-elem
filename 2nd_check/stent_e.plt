#GNUPLOT
set encoding utf8
set terminal postscript eps enhanced 'Helvetica' 7 color size 7,3
set output 'stent_error.eps'
set multiplot
set size 0.33,0.5

set origin 0.0,0.5
set title 'Axial Stress'
set xlabel 'Position[mm]'
set ylabel 'Cauchy Stress[kPa]'
plot 'stent_e_stent.dat' u ($2*1000):($4/1000) every ::0::34 t 'x2' w l,'' u ($2*1000):($4/1000) every ::35::69 t 'x1' w l,'' u ($2*1000):($4/1000) every ::70::104 t 'x3' w l

set origin 0.33,0.5
set title 'Circumferential Stress'
set xlabel 'Position[mm]'
set ylabel 'Cauchy Stress[kPa]'
plot 'stent_e_stent.dat' u ($2*1000):($5/1000) every ::0::34 t 'x2' w l,'' u ($2*1000):($5/1000) every ::35::69 t 'x1' w l,'' u ($2*1000):($5/1000) every ::70::104 t 'x3' w l

set origin 0.66,0.5
set title 'Radius'
set xlabel 'Position[mm]'
set ylabel 'Radius[mm]'
plot 'stent_e_stent.dat' u ($2*1000):($3*1000) every ::0::34 t 'x2' w l,'' u ($2*1000):($3*1000) every ::35::69 t 'x1' w l,'' u ($2*1000):($3*1000) every ::70::104 t 'x3' w l

set origin 0.0,0.0
set title 'Axial Stress'
set xlabel 'Position[mm]'
set ylabel 'Cauchy Stress[kPa]'
plot 'stent_e_end.dat' u ($2*1000):($4/1000) every ::0::34 t 'x2' w l,'' u ($2*1000):($4/1000) every ::35::69 t 'x1' w l,'' u ($2*1000):($4/1000) every ::70::104 t 'x3' w l

set origin 0.33,0.0
set title 'Circumferential Stress'
set xlabel 'Position[mm]'
set ylabel 'Cauchy Stress[kPa]'
plot 'stent_e_end.dat' u ($2*1000):($5/1000) every ::0::34 t 'x2' w l,'' u ($2*1000):($5/1000) every ::35::69 t 'x1' w l,'' u ($2*1000):($5/1000) every ::70::104 t 'x3' w l

set origin 0.66,0.0
set title 'Radius'
set xlabel 'Position[mm]'
set ylabel 'Radius[mm]'
plot 'stent_e_end.dat' u ($2*1000):($3*1000) every ::0::34 t 'x2' w l,'' u ($2*1000):($3*1000) every ::35::69 t 'x1' w l,'' u ($2*1000):($3*1000) every ::70::104 t 'x3' w l
