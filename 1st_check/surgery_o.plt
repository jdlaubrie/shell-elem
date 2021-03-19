#GNUPLOT
set encoding utf8
set terminal postscript eps enhanced 'Helvetica' 7 color
set output 'surgery_oversizing.eps'
set multiplot
set size 0.33,0.33

set origin 0.0,0.66
set title 'Axial Stress'
set xlabel 'Position[mm]'
set ylabel 'Cauchy Stress[kPa]'
plot 'surgery_o_aneA.dat' u ($2*1000):($4/1000) every ::0::32 t '5%' w l,'' u ($2*1000):($4/1000) every ::33::65 t '10%' w l,'' u ($2*1000):($4/1000) every ::66::98 t '15%' w l,'' u ($2*1000):($4/1000) every ::99::131 t '20%' w l,'' u ($2*1000):($4/1000) every ::132::164 t '25%' w l

set origin 0.33,0.66
set title 'Circumferential Stress'
set xlabel 'Position[mm]'
set ylabel 'Cauchy Stress[kPa]'
plot 'surgery_o_aneA.dat' u ($2*1000):($5/1000) every ::0::32 t '5%' w l,'' u ($2*1000):($5/1000) every ::33::65 t '10%' w l,'' u ($2*1000):($5/1000) every ::66::98 t '15%' w l,'' u ($2*1000):($5/1000) every ::99::131 t '20%' w l,'' u ($2*1000):($5/1000) every ::132::164 t '25%' w l

set origin 0.66,0.66
set title 'Radius'
set xlabel 'Position[mm]'
set ylabel 'Radius[mm]'
plot [0:90][5:25] 'surgery_o_aneA.dat' u ($2*1000):($3*1000) every ::0::32 t '5%' w l,'' u ($2*1000):($3*1000) every ::33::65 t '10%' w l,'' u ($2*1000):($3*1000) every ::66::98 t '15%' w l,'' u ($2*1000):($3*1000) every ::99::131 t '20%' w l,'' u ($2*1000):($3*1000) every ::132::164 t '25%' w l

set origin 0.0,0.33
set title 'Axial Stress'
set xlabel 'Position[mm]'
set ylabel 'Cauchy Stress[kPa]'
plot 'surgery_o_stent.dat' u ($2*1000):($4/1000) every ::0::32 t '5%' w l,'' u ($2*1000):($4/1000) every ::33::65 t '10%' w l,'' u ($2*1000):($4/1000) every ::66::98 t '15%' w l,'' u ($2*1000):($4/1000) every ::99::131 t '20%' w l,'' u ($2*1000):($4/1000) every ::132::164 t '25%' w l

set origin 0.33,0.33
set title 'Circumferential Stress'
set xlabel 'Position[mm]'
set ylabel 'Cauchy Stress[kPa]'
plot 'surgery_o_stent.dat' u ($2*1000):($5/1000) every ::0::32 t '5%' w l,'' u ($2*1000):($5/1000) every ::33::65 t '10%' w l,'' u ($2*1000):($5/1000) every ::66::98 t '15%' w l,'' u ($2*1000):($5/1000) every ::99::131 t '20%' w l,'' u ($2*1000):($5/1000) every ::132::164 t '25%' w l

set origin 0.66,0.33
set title 'Radius'
set xlabel 'Position[mm]'
set ylabel 'Radius[mm]'
plot [0:90][5:25] 'surgery_o_stent.dat' u ($2*1000):($3*1000) every ::0::32 t '5%' w l,'' u ($2*1000):($3*1000) every ::33::65 t '10%' w l,'' u ($2*1000):($3*1000) every ::66::98 t '15%' w l,'' u ($2*1000):($3*1000) every ::99::131 t '20%' w l,'' u ($2*1000):($3*1000) every ::132::164 t '25%' w l

set origin 0.0,0.0
set title 'Axial Stress'
set xlabel 'Position[mm]'
set ylabel 'Cauchy Stress[kPa]'
plot 'surgery_o_aneB.dat' u ($2*1000):($4/1000) every ::0::32 t '5%' w l,'' u ($2*1000):($4/1000) every ::33::65 t '10%' w l,'' u ($2*1000):($4/1000) every ::66::98 t '15%' w l,'' u ($2*1000):($4/1000) every ::99::131 t '20%' w l,'' u ($2*1000):($4/1000) every ::132::164 t '25%' w l

set origin 0.33,0.0
set title 'Circumferential Stress'
set xlabel 'Position[mm]'
set ylabel 'Cauchy Stress[kPa]'
plot 'surgery_o_aneB.dat' u ($2*1000):($5/1000) every ::0::32 t '5%' w l,'' u ($2*1000):($5/1000) every ::33::65 t '10%' w l,'' u ($2*1000):($5/1000) every ::66::98 t '15%' w l,'' u ($2*1000):($5/1000) every ::99::131 t '20%' w l,'' u ($2*1000):($5/1000) every ::132::164 t '25%' w l

set origin 0.66,0.0
set title 'Radius'
set xlabel 'Position[mm]'
set ylabel 'Radius[mm]'
plot [0:90][5:25] 'surgery_o_aneB.dat' u ($2*1000):($3*1000) every ::0::32 t '5%' w l,'' u ($2*1000):($3*1000) every ::33::65 t '10%' w l,'' u ($2*1000):($3*1000) every ::66::98 t '15%' w l,'' u ($2*1000):($3*1000) every ::99::131 t '20%' w l,'' u ($2*1000):($3*1000) every ::132::164 t '25%' w l
