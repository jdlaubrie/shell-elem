#GNUPLOT
set encoding utf8
set terminal postscript eps enhanced 'Helvetica' 7 color
set output 'quirurgy_material.eps'
set multiplot
set size 0.33,0.33

set origin 0.0,0.66
set title 'Axial Stress'
set xlabel 'Position[mm]'
set ylabel 'Cauchy Stress[kPa]'
plot 'quirurgy_m_aneA.dat' u ($2*1000):($4/1000) every ::0::32 t '15/15' w l,'' u ($2*1000):($4/1000) every ::33::65 t '15/72' w l,'' u ($2*1000):($4/1000) every ::66::98 t '72/15' w l,'' u ($2*1000):($4/1000) every ::99::131 t '72/72' w l,'' u ($2*1000):($4/1000) every ::132::164 t '720/72' w l

set origin 0.33,0.66
set title 'Circumferential Stress'
set xlabel 'Position[mm]'
set ylabel 'Cauchy Stress[kPa]'
plot 'quirurgy_m_aneA.dat' u ($2*1000):($5/1000) every ::0::32 t '15/15' w l,'' u ($2*1000):($5/1000) every ::33::65 t '15/72' w l,'' u ($2*1000):($5/1000) every ::66::98 t '72/15' w l,'' u ($2*1000):($5/1000) every ::99::131 t '72/72' w l,'' u ($2*1000):($5/1000) every ::132::164 t '720/72' w l

set origin 0.66,0.66
set title 'Radius'
set xlabel 'Position[mm]'
set ylabel 'Radius[mm]'
plot [0:90][5:25] 'quirurgy_m_aneA.dat' u ($2*1000):($3*1000) every ::0::32 t '15/15' w l,'' u ($2*1000):($3*1000) every ::33::65 t '15/72' w l,'' u ($2*1000):($3*1000) every ::66::98 t '72/15' w l,'' u ($2*1000):($3*1000) every ::99::131 t '72/72' w l,'' u ($2*1000):($3*1000) every ::132::164 t '720/72' w l

set origin 0.0,0.33
set title 'Axial Stress'
set xlabel 'Position[mm]'
set ylabel 'Cauchy Stress[kPa]'
plot 'quirurgy_m_stent.dat' u ($2*1000):($4/1000) every ::0::32 t '15/15' w l,'' u ($2*1000):($4/1000) every ::33::65 t '15/72' w l,'' u ($2*1000):($4/1000) every ::66::98 t '72/15' w l,'' u ($2*1000):($4/1000) every ::99::131 t '72/72' w l,'' u ($2*1000):($4/1000) every ::132::164 t '720/72' w l

set origin 0.33,0.33
set title 'Circumferential Stress'
set xlabel 'Position[mm]'
set ylabel 'Cauchy Stress[kPa]'
plot 'quirurgy_m_stent.dat' u ($2*1000):($5/1000) every ::0::32 t '15/15' w l,'' u ($2*1000):($5/1000) every ::33::65 t '15/72' w l,'' u ($2*1000):($5/1000) every ::66::98 t '72/15' w l,'' u ($2*1000):($5/1000) every ::99::131 t '72/72' w l,'' u ($2*1000):($5/1000) every ::132::164 t '720/72' w l

set origin 0.66,0.33
set title 'Radius'
set xlabel 'Position[mm]'
set ylabel 'Radius[mm]'
plot [0:90][5:25] 'quirurgy_m_stent.dat' u ($2*1000):($3*1000) every ::0::32 t '15/15' w l,'' u ($2*1000):($3*1000) every ::33::65 t '15/72' w l,'' u ($2*1000):($3*1000) every ::66::98 t '72/15' w l,'' u ($2*1000):($3*1000) every ::99::131 t '72/72' w l,'' u ($2*1000):($3*1000) every ::132::164 t '720/72' w l

set origin 0.0,0.0
set title 'Axial Stress'
set xlabel 'Position[mm]'
set ylabel 'Cauchy Stress[kPa]'
plot 'quirurgy_m_aneB.dat' u ($2*1000):($4/1000) every ::0::32 t '15/15' w l,'' u ($2*1000):($4/1000) every ::33::65 t '15/72' w l,'' u ($2*1000):($4/1000) every ::66::98 t '72/15' w l,'' u ($2*1000):($4/1000) every ::99::131 t '72/72' w l,'' u ($2*1000):($4/1000) every ::132::164 t '720/72' w l

set origin 0.33,0.0
set title 'Circumferential Stress'
set xlabel 'Position[mm]'
set ylabel 'Cauchy Stress[kPa]'
plot 'quirurgy_m_aneB.dat' u ($2*1000):($5/1000) every ::0::32 t '15/15' w l,'' u ($2*1000):($5/1000) every ::33::65 t '15/72' w l,'' u ($2*1000):($5/1000) every ::66::98 t '72/15' w l,'' u ($2*1000):($5/1000) every ::99::131 t '72/72' w l,'' u ($2*1000):($5/1000) every ::132::164 t '720/72' w l

set origin 0.66,0.0
set title 'Radius'
set xlabel 'Position[mm]'
set ylabel 'Radius[mm]'
plot [0:90][5:25] 'quirurgy_m_aneB.dat' u ($2*1000):($3*1000) every ::0::32 t '15/15' w l,'' u ($2*1000):($3*1000) every ::33::65 t '15/72' w l,'' u ($2*1000):($3*1000) every ::66::98 t '72/15' w l,'' u ($2*1000):($3*1000) every ::99::131 t '72/72' w l,'' u ($2*1000):($3*1000) every ::132::164 t '720/72' w l
