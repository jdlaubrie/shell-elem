#GNUPLOT
set encoding utf8
set terminal postscript eps enhanced 'Helvetica' 5 color size 4,1
set output 'aneurysm_material_time.eps'
set multiplot
set size 0.33,1

set origin 0.0,0.0
set key top left
set title 'Axial Stress'
set xlabel 'Position[mm]'
set ylabel 'Cauchy Stress[kPa]'
plot 'aneurysm_m.dat' u 1:($4/1000) every ::0::8 t '15.2/72' w l,'' u 1:($4/1000) every ::9::17 t '72/15.2' w l,'' u 1:($4/1000) every ::18::26 t '72/72' w l,'' u 1:($4/1000) every ::27::35 t '144/72' w l

set origin 0.33,0.0
set title 'Circumferential Stress'
set xlabel 'Position[mm]'
set ylabel 'Cauchy Stress[kPa]'
plot 'aneurysm_m.dat' u 1:($5/1000) every ::0::8 t '15.2/72' w l,'' u 1:($5/1000) every ::9::17 t '72/15.2' w l,'' u 1:($5/1000) every ::18::26 t '72/72' w l,'' u 1:($5/1000) every ::27::35 t '144/72' w l

set origin 0.66,0.0
set title 'Radius'
set xlabel 'Position[mm]'
set ylabel 'Radius[mm]'
plot 'aneurysm_m.dat' u 1:($3*1000) every ::0::8 t '15.2/72' w l,'' u 1:($3*1000) every ::9::17 t '72/15.2' w l,'' u 1:($3*1000) every ::18::26 t '72/72' w l,'' u 1:($3*1000) every ::27::35 t '144/72' w l
