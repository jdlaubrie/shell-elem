 Data Directory: /home/local/EMSE2000/joan.laubrie/ShellE/data
 Scratch Directory: /home/local/EMSE2000/joan.laubrie/ShellE/scratch/aneurysm_val
 TITLE: surgery - aneurysm (stent-graft)

 C O N T R O L   D A T A 

         Number of Dimensions .................. NDIME   =            2
         Number of Mech. Degrees of Freedom .... NMDOF   =            3
         Number of Integration Points .......... NGAUS   =            2
         Shear Strain Penalty .................. PENAL   =    100000.    

 G E O M E T R Y   D A T A 

         Wall Thickness ........................ THICK   =   0.141000E-02
         Media/Thickness Ratio ................. RATIO   =   0.500000    
     =============  nodes in set ALLNOD =============
         1   0.00000   0.01000
         2   0.00100   0.01000
         3   0.00200   0.01000

 Element set named: ALLELE will be read

    element        node numbers
          1         1         2
          2         2         3

 M A T E R I A L   P R O P E R T I E S 


 Material name: HOLZA will be read
         Number of Constants ................... NPROP   =            5
         Number of Densities ................... NDENS   =           12
         Number of Deposition Stretch .......... NDEPS   =            4
         Number of Damage Parameters ........... NDAMG   =           18
         Property 1 ............................ PROP1   =    72.0000    
         Property 2 ............................ PROP2   =    15.2000    
         Property 3 ............................ PROP3   =    11.4000    
         Property 4 ............................ PROP4   =    1136.00    
         Property 5 ............................ PROP5   =    11.2000    
         Density 1 ............................. DEN1    =   0.230000    
         Density 2 ............................. DEN2    =   0.150000    
         Density 3 ............................. DEN3    =   0.620000E-01
         Density 4 ............................. DEN4    =   0.248000    
         Density 5 ............................. DEN5    =   0.248000    
         Density 6 ............................. DEN6    =   0.620000E-01
         Density 7 ............................. DEN7    =   0.230000    
         Density 8 ............................. DEN8    =   0.150000    
         Density 9 ............................. DEN9    =   0.620000E-01
         Density 10 ............................ DEN10   =   0.248000    
         Density 11 ............................ DEN11   =   0.248000    
         Density 12 ............................ DEN12   =   0.620000E-01
         Deposition Stretch..................... DEP1    =    1.25000    
         Deposition Stretch..................... DEP2    =    1.34000    
         Deposition Stretch..................... DEP3    =    1.10000    
         Deposition Stretch..................... DEP4    =    1.06200    
         GandR variable 1 ...................... GNR1    =   0.500000E-01
         GandR variable 2 ...................... GNR2    =   0.500000E-01
         GandR variable 3 ...................... GNR3    =    101.000    
         GandR variable 4 ...................... GNR4    =    101.000    
         Active Damage in Elastin .............. DAMGE   =            0
         Active Damage in Smooth Muscle Cell ... DAMGM   =            0
         Active Damage in Collagen 1 ........... DAMGC1  =            0
         Active Damage in Collagen 2 ........... DAMGC2  =            0
         Active Damage in Collagen 3 ........... DAMGC3  =            0
         Active Damage in Collagen 4 ........... DAMGC4  =            0
         Damage parameter 1..................... DAMG1   =   0.100000    
         Damage parameter 2..................... DAMG2   =   0.100000    
         Damage parameter 3..................... DAMG3   =   0.500000    
         Damage parameter 4..................... DAMG4   =  -0.900000    
         Damage parameter 5..................... DAMG5   =  -0.900000    
         Damage parameter 6..................... DAMG6   =   0.800000    
         Damage parameter 7..................... DAMG7   =    257.143    
         Damage parameter 8..................... DAMG8   =    131.769    
         Damage parameter 9..................... DAMG9   =    48.3280    
         Damage parameter 10.................... DAMG10  =    72.6180    
         Damage parameter 11.................... DAMG11  =    72.6180    
         Damage parameter 12.................... DAMG12  =    48.3280    
         Damage parameter 13.................... DAMG13  =    260.350    
         Damage parameter 14.................... DAMG14  =    132.349    
         Damage parameter 15.................... DAMG15  =    63.8490    
         Damage parameter 16.................... DAMG16  =    85.2710    
         Damage parameter 17.................... DAMG17  =    85.2710    
         Damage parameter 18.................... DAMG18  =    63.8490    

 S E C T I O N   D E F I N I T I O N 


 Section defined by: ElementSet=ALLELE and Material=HOLZA

         = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
         = = = = = = = = = T M S T E P   D A T A = = = = = = = = = 
         = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 


      = = = = = R E A D I N G   S T E P : HOMEO = = = = = 

         Times to Use This Step ................ STEPS   =            1
         Number of Load Division ............... FRAME   =            1
         Maximum number of Iteration by Step ... MITER   =            5
         Convergence Tolerance ................. TOLER   =   0.100000E-02

 BOUNDARY CONDITIONS 

     Node    X Y R
        1    1 0 1 0.000000 0.000000 0.000000
        3    1 0 1 0.000000 0.000000 0.000000

 LOAD DATA 


 Load set named: CARGA1 will be read
         Internal Pressure ..................... PLOAD   =    13332.2    
         Pressure from.......................... ZINI    =    0.00000    
         Pressure to ........................... ZEND    =   0.200000E-02

      = = = = = R E A D I N G   S T E P : GANDRA = = = = = 

         Times to Use This Step ................ STEPS   =          200
         Number of Load Division ............... FRAME   =            1
         Maximum number of Iteration by Step ... MITER   =           20
         Convergence Tolerance ................. TOLER   =   0.100000    

 BOUNDARY CONDITIONS 

     Node    X Y R
        1    1 0 1 0.000000 0.000000 0.000000
        3    1 0 1 0.000000 0.000000 0.000000

 LOAD DATA 


 Load set named: CARGA2 will be read
         Internal Pressure ..................... PLOAD   =    13332.2    
         Pressure from.......................... ZINI    =    0.00000    
         Pressure to ........................... ZEND    =   0.200000E-02

  ---> Total Steps to solve:  201


                *** STARTING CALCULATION ***

     ===========================================================


  TIME: HOMEO   STEP:     1.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000     -0.0000000172      0.0000000000
        2      0.0000000000     -0.0000000172     -0.0000000000
        3      0.0000000000     -0.0000000172      0.0000000000

    Force Error: 0.217784E-04

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.009999983   84997.4   94556.3   0.000000000
   2   0.001000000   0.009999983   84997.4   94556.3   0.000000000
   3   0.002000000   0.009999983   84997.4   94556.3   0.000000000
     ===========================================================


  TIME: GANDRA  STEP:     1.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000     -0.0000000172      0.0000000000
        2      0.0000000000     -0.0000000172     -0.0000000000
        3      0.0000000000     -0.0000000172      0.0000000000

    Force Error: 0.255600E-09

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.009999983   84996.4   94554.3   0.000000000
   2   0.001000000   0.009999983   84996.4   94554.3   0.000000000
   3   0.002000000   0.009999983   84996.4   94554.3  -0.000000000
     ===========================================================


  TIME: GANDRA  STEP:     2.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0000461738      0.0000000000
        2      0.0000000178      0.0000461690     -0.0000015276
        3      0.0000000000      0.0000461621      0.0000000000

    Force Error: 0.582971E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010046174   81261.5   90097.7   0.000000000
   2   0.001000018   0.010046169   81283.9   90124.5   0.000000000
   3   0.002000000   0.010046162   81335.2   90185.7  -0.000000000
     ===========================================================


  TIME: GANDRA  STEP:     3.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0000745053      0.0000000000
        2      0.0000000296      0.0000744974     -0.0000023848
        3      0.0000000000      0.0000744861      0.0000000000

    Force Error: 0.368757E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010074505   81668.8   92515.4  -0.000004846
   2   0.001000030   0.010074497   81686.6   92548.7  -0.000004648
   3   0.002000000   0.010074486   81753.1   92640.2  -0.000006859
     ===========================================================


  TIME: GANDRA  STEP:     4.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0001089815      0.0000000000
        2      0.0000000438      0.0001089710     -0.0000033093
        3      0.0000000000      0.0001089561      0.0000000000

    Force Error: 0.449086E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010108982   80794.0   92390.9  -0.000007911
   2   0.001000044   0.010108971   80815.1   92433.2  -0.000007719
   3   0.002000000   0.010108956   80899.4   92551.1  -0.000011287
     ===========================================================


  TIME: GANDRA  STEP:     5.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0001416992      0.0000000000
        2      0.0000000574      0.0001416865     -0.0000041063
        3      0.0000000000      0.0001416687      0.0000000000

    Force Error: 0.427696E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010141699   80556.9   93172.1  -0.000010540
   2   0.001000057   0.010141687   80577.7   93220.0  -0.000010130
   3   0.002000000   0.010141669   80672.1   93356.5  -0.000014940
     ===========================================================


  TIME: GANDRA  STEP:     6.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0001754652      0.0000000000
        2      0.0000000712      0.0001754508     -0.0000048166
        3      0.0000000000      0.0001754306      0.0000000000

    Force Error: 0.441090E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010175465   80252.0   93659.1  -0.000012650
   2   0.001000071   0.010175451   80272.9   93711.8  -0.000011991
   3   0.002000000   0.010175431   80375.0   93862.9  -0.000017808
     ===========================================================


  TIME: GANDRA  STEP:     7.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0002093926      0.0000000000
        2      0.0000000850      0.0002093767     -0.0000054209
        3      0.0000000000      0.0002093546      0.0000000000

    Force Error: 0.442921E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010209393   80082.4   94261.6  -0.000014439
   2   0.001000085   0.010209377   80102.8   94318.1  -0.000013505
   3   0.002000000   0.010209355   80209.7   94480.4  -0.000020167
     ===========================================================


  TIME: GANDRA  STEP:     8.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0002438112      0.0000000000
        2      0.0000000989      0.0002437939     -0.0000059178
        3      0.0000000000      0.0002437702      0.0000000000

    Force Error: 0.448814E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010243811   79949.8   94839.9  -0.000015961
   2   0.001000099   0.010243794   79969.6   94899.5  -0.000014763
   3   0.002000000   0.010243770   80079.7   95070.6  -0.000022115
     ===========================================================


  TIME: GANDRA  STEP:     9.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0002786335      0.0000000000
        2      0.0000001126      0.0002786151     -0.0000063044
        3      0.0000000000      0.0002785899      0.0000000000

    Force Error: 0.453572E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010278634   79864.1   95440.1  -0.000017284
   2   0.001000113   0.010278615   79883.0   95502.4  -0.000015855
   3   0.002000000   0.010278590   79995.0   95680.7  -0.000023759
     ===========================================================


  TIME: GANDRA  STEP:    10.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0003139057      0.0000000000
        2      0.0000001264      0.0003138862     -0.0000065795
        3      0.0000000000      0.0003138598      0.0000000000

    Force Error: 0.458913E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010313906   79805.1   96046.6  -0.000018450
   2   0.001000126   0.010313886   79823.1   96111.2  -0.000016838
   3   0.002000000   0.010313860   79936.1   96295.4  -0.000025170
     ===========================================================


  TIME: GANDRA  STEP:    11.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0003496259      0.0000000000
        2      0.0000001401      0.0003496054     -0.0000067425
        3      0.0000000000      0.0003495779      0.0000000000

    Force Error: 0.464242E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010349626   79767.4   96664.5  -0.000019492
   2   0.001000140   0.010349605   79784.4   96731.2  -0.000017759
   3   0.002000000   0.010349578   79897.8   96920.4  -0.000026402
     ===========================================================


  TIME: GANDRA  STEP:    12.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0003858057      0.0000000000
        2      0.0000001537      0.0003857844     -0.0000067932
        3      0.0000000000      0.0003857559      0.0000000000

    Force Error: 0.469728E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010385806   79744.1   97292.2  -0.000020436
   2   0.001000154   0.010385784   79760.1   97360.9  -0.000018649
   3   0.002000000   0.010385756   79873.5   97554.4  -0.000027496
     ===========================================================


  TIME: GANDRA  STEP:    13.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0004224509      0.0000000000
        2      0.0000001674      0.0004224288     -0.0000067316
        3      0.0000000000      0.0004223994      0.0000000000

    Force Error: 0.475293E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010422451   79731.5   97930.5  -0.000021300
   2   0.001000167   0.010422429   79746.4   98000.9  -0.000019534
   3   0.002000000   0.010422399   79859.5   98198.4  -0.000028482
     ===========================================================


  TIME: GANDRA  STEP:    14.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0004595678      0.0000000000
        2      0.0000001809      0.0004595449     -0.0000065579
        3      0.0000000000      0.0004595147      0.0000000000

    Force Error: 0.480941E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010459568   79726.5   98579.3  -0.000022097
   2   0.001000181   0.010459545   79740.3   98651.4  -0.000020430
   3   0.002000000   0.010459515   79852.9   98852.5  -0.000029380
     ===========================================================


  TIME: GANDRA  STEP:    15.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0004971617      0.0000000000
        2      0.0000001945      0.0004971381     -0.0000062724
        3      0.0000000000      0.0004971071      0.0000000000

    Force Error: 0.486654E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010497162   79727.1   99238.9  -0.000022838
   2   0.001000195   0.010497138   79739.7   99312.6  -0.000021351
   3   0.002000000   0.010497107   79851.8   99517.1  -0.000030207
     ===========================================================


  TIME: GANDRA  STEP:    16.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0005352375      0.0000000000
        2      0.0000002080      0.0005352134     -0.0000058754
        3      0.0000000000      0.0005351817      0.0000000000

    Force Error: 0.492426E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010535238   79731.8   99909.3  -0.000023531
   2   0.001000208   0.010535213   79743.4   99984.6  -0.000022307
   3   0.002000000   0.010535182   79854.7  100192.4  -0.000030975
     ===========================================================


  TIME: GANDRA  STEP:    17.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0005738000      0.0000000000
        2      0.0000002215      0.0005737752     -0.0000053673
        3      0.0000000000      0.0005737429      0.0000000000

    Force Error: 0.498249E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010573800   79739.7  100590.8  -0.000024181
   2   0.001000222   0.010573775   79750.1  100667.7  -0.000023304
   3   0.002000000   0.010573743   79860.7  100878.6  -0.000031693
     ===========================================================


  TIME: GANDRA  STEP:    18.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0006128534      0.0000000000
        2      0.0000002350      0.0006128280     -0.0000047485
        3      0.0000000000      0.0006127950      0.0000000000

    Force Error: 0.504116E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010612853   79750.0  101283.6  -0.000024793
   2   0.001000235   0.010612828   79759.3  101362.0  -0.000024348
   3   0.002000000   0.010612795   79869.0  101576.0  -0.000032368
     ===========================================================


  TIME: GANDRA  STEP:    19.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0006524017      0.0000000000
        2      0.0000002484      0.0006523758     -0.0000040192
        3      0.0000000000      0.0006523422      0.0000000000

    Force Error: 0.510023E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010652402   79762.3  101987.7  -0.000025369
   2   0.001000248   0.010652376   79770.4  102067.8  -0.000025442
   3   0.002000000   0.010652342   79879.3  102284.8  -0.000033003
     ===========================================================


  TIME: GANDRA  STEP:    20.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0006924488      0.0000000000
        2      0.0000002618      0.0006924224     -0.0000031800
        3      0.0000000000      0.0006923882      0.0000000000

    Force Error: 0.515966E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010692449   79776.1  102703.5  -0.000025912
   2   0.001000262   0.010692422   79783.1  102785.1  -0.000026589
   3   0.002000000   0.010692388   79891.1  103005.2  -0.000033603
     ===========================================================


  TIME: GANDRA  STEP:    21.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0007329984      0.0000000000
        2      0.0000002752      0.0007329714     -0.0000022310
        3      0.0000000000      0.0007329367      0.0000000000

    Force Error: 0.521942E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010732998   79791.3  103431.0  -0.000026425
   2   0.001000275   0.010732971   79797.1  103514.2  -0.000027791
   3   0.002000000   0.010732937   79904.2  103737.3  -0.000034171
     ===========================================================


  TIME: GANDRA  STEP:    22.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0007740538      0.0000000000
        2      0.0000002886      0.0007740264     -0.0000011728
        3      0.0000000000      0.0007739912      0.0000000000

    Force Error: 0.527946E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010774054   79807.6  104170.5  -0.000026909
   2   0.001000289   0.010774026   79812.3  104255.2  -0.000029050
   3   0.002000000   0.010773991   79918.6  104481.5  -0.000034708
     ===========================================================


  TIME: GANDRA  STEP:    23.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0008156184      0.0000000000
        2      0.0000003019      0.0008155907     -0.0000000054
        3      0.0000000000      0.0008155550      0.0000000000

    Force Error: 0.533977E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010815618   79825.0  104922.1  -0.000027364
   2   0.001000302   0.010815591   79828.6  105008.4  -0.000030367
   3   0.002000000   0.010815555   79934.0  105237.8  -0.000035217
     ===========================================================


  TIME: GANDRA  STEP:    24.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0008576955      0.0000000000
        2      0.0000003152      0.0008576673      0.0000012707
        3      0.0000000000      0.0008576311      0.0000000000

    Force Error: 0.540032E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010857695   79843.4  105686.0  -0.000027792
   2   0.001000315   0.010857667   79845.9  105773.9  -0.000031742
   3   0.002000000   0.010857631   79950.4  106006.4  -0.000035699
     ===========================================================


  TIME: GANDRA  STEP:    25.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0009002879      0.0000000000
        2      0.0000003285      0.0009002594      0.0000026553
        3      0.0000000000      0.0009002228      0.0000000000

    Force Error: 0.546109E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010900288   79862.7  106462.3  -0.000028194
   2   0.001000328   0.010900259   79864.1  106551.9  -0.000033177
   3   0.002000000   0.010900223   79967.7  106787.5  -0.000036153
     ===========================================================


  TIME: GANDRA  STEP:    26.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0009433986      0.0000000000
        2      0.0000003417      0.0009433697      0.0000041482
        3      0.0000000000      0.0009433327      0.0000000000

    Force Error: 0.552204E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010943399   79883.0  107251.3  -0.000028569
   2   0.001000342   0.010943370   79883.2  107342.5  -0.000034672
   3   0.002000000   0.010943333   79985.9  107581.4  -0.000036583
     ===========================================================


  TIME: GANDRA  STEP:    27.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0009870302      0.0000000000
        2      0.0000003550      0.0009870010      0.0000057492
        3      0.0000000000      0.0009869636      0.0000000000

    Force Error: 0.558316E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010987030   79904.1  108053.1  -0.000028920
   2   0.001000355   0.010987001   79903.2  108146.0  -0.000036226
   3   0.002000000   0.010986964   80005.0  108388.1  -0.000036987
     ===========================================================


  TIME: GANDRA  STEP:    28.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0010311854      0.0000000000
        2      0.0000003682      0.0010311558      0.0000074582
        3      0.0000000000      0.0010311181      0.0000000000

    Force Error: 0.564442E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011031185   79926.1  108868.0  -0.000029245
   2   0.001000368   0.011031156   79924.0  108962.5  -0.000037842
   3   0.002000000   0.011031118   80025.0  109207.9  -0.000037367
     ===========================================================


  TIME: GANDRA  STEP:    29.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0010758664      0.0000000000
        2      0.0000003814      0.0010758366      0.0000092750
        3      0.0000000000      0.0010757985      0.0000000000

    Force Error: 0.570580E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011075866   79948.9  109695.9  -0.000029546
   2   0.001000381   0.011075837   79945.8  109792.2  -0.000039518
   3   0.002000000   0.011075799   80045.9  110041.0  -0.000037722
     ===========================================================


  TIME: GANDRA  STEP:    30.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0011210755      0.0000000000
        2      0.0000003945      0.0011210454      0.0000111995
        3      0.0000000000      0.0011210071      0.0000000000

    Force Error: 0.576728E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011121076   79972.6  110537.2  -0.000029822
   2   0.001000395   0.011121045   79968.4  110635.3  -0.000041255
   3   0.002000000   0.011121007   80067.7  110887.5  -0.000038055
     ===========================================================


  TIME: GANDRA  STEP:    31.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0011668148      0.0000000000
        2      0.0000004077      0.0011667845      0.0000132315
        3      0.0000000000      0.0011667459      0.0000000000

    Force Error: 0.582883E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011166815   79997.2  111392.1  -0.000030074
   2   0.001000408   0.011166785   79991.9  111491.9  -0.000043053
   3   0.002000000   0.011166746   80090.3  111747.5  -0.000038363
     ===========================================================


  TIME: GANDRA  STEP:    32.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0012130862      0.0000000000
        2      0.0000004208      0.0012130556      0.0000153711
        3      0.0000000000      0.0012130167      0.0000000000

    Force Error: 0.589042E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011213086   80022.7  112260.6  -0.000030303
   2   0.001000421   0.011213056   80016.3  112362.2  -0.000044913
   3   0.002000000   0.011213017   80113.9  112621.4  -0.000038649
     ===========================================================


  TIME: GANDRA  STEP:    33.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0012598912      0.0000000000
        2      0.0000004340      0.0012598605      0.0000176182
        3      0.0000000000      0.0012598214      0.0000000000

    Force Error: 0.595204E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011259891   80049.1  113143.0  -0.000030507
   2   0.001000434   0.011259861   80041.6  113246.5  -0.000046834
   3   0.002000000   0.011259821   80138.3  113509.2  -0.000038911
     ===========================================================


  TIME: GANDRA  STEP:    34.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0013072316      0.0000000000
        2      0.0000004471      0.0013072007      0.0000199727
        3      0.0000000000      0.0013071614      0.0000000000

    Force Error: 0.601365E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011307232   80076.4  114039.5  -0.000030689
   2   0.001000447   0.011307201   80067.8  114144.8  -0.000048817
   3   0.002000000   0.011307161   80163.7  114411.2  -0.000039151
     ===========================================================


  TIME: GANDRA  STEP:    35.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0013551085      0.0000000000
        2      0.0000004602      0.0013550775      0.0000224347
        3      0.0000000000      0.0013550380      0.0000000000

    Force Error: 0.607523E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011355109   80104.7  114950.2  -0.000030847
   2   0.001000460   0.011355078   80094.9  115057.3  -0.000050862
   3   0.002000000   0.011355038   80190.0  115327.4  -0.000039369
     ===========================================================


  TIME: GANDRA  STEP:    36.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0014035231      0.0000000000
        2      0.0000004732      0.0014034920      0.0000250041
        3      0.0000000000      0.0014034523      0.0000000000

    Force Error: 0.613676E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011403523   80133.8  115875.2  -0.000030982
   2   0.001000473   0.011403492   80122.9  115984.3  -0.000052968
   3   0.002000000   0.011403452   80217.2  116258.2  -0.000039564
     ===========================================================


  TIME: GANDRA  STEP:    37.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0014524763      0.0000000000
        2      0.0000004863      0.0014524452      0.0000276810
        3      0.0000000000      0.0014524053      0.0000000000

    Force Error: 0.619820E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011452476   80163.9  116814.9  -0.000031093
   2   0.001000486   0.011452445   80151.9  116925.9  -0.000055137
   3   0.002000000   0.011452405   80245.4  117203.6  -0.000039736
     ===========================================================


  TIME: GANDRA  STEP:    38.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0015019689      0.0000000000
        2      0.0000004994      0.0015019376      0.0000304654
        3      0.0000000000      0.0015018976      0.0000000000

    Force Error: 0.625952E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011501969   80195.0  117769.2  -0.000031182
   2   0.001000499   0.011501938   80181.9  117882.3  -0.000057368
   3   0.002000000   0.011501898   80274.6  118163.8  -0.000039887
     ===========================================================


  TIME: GANDRA  STEP:    39.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0015520012      0.0000000000
        2      0.0000005124      0.0015519699      0.0000333574
        3      0.0000000000      0.0015519297      0.0000000000

    Force Error: 0.632070E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011552001   80227.1  118738.5  -0.000031248
   2   0.001000512   0.011551970   80212.9  118853.5  -0.000059662
   3   0.002000000   0.011551930   80304.7  119139.0  -0.000040016
     ===========================================================


  TIME: GANDRA  STEP:    40.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0016025734      0.0000000000
        2      0.0000005254      0.0016025421      0.0000363569
        3      0.0000000000      0.0016025019      0.0000000000

    Force Error: 0.638171E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011602573   80260.1  119722.9  -0.000031292
   2   0.001000525   0.011602542   80244.8  119839.9  -0.000062018
   3   0.002000000   0.011602502   80335.9  120129.5  -0.000040123
     ===========================================================


  TIME: GANDRA  STEP:    41.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0016536857      0.0000000000
        2      0.0000005384      0.0016536544      0.0000394642
        3      0.0000000000      0.0016536141      0.0000000000

    Force Error: 0.644251E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011653686   80294.1  120722.5  -0.000031312
   2   0.001000538   0.011653654   80277.7  120841.6  -0.000064437
   3   0.002000000   0.011653614   80368.1  121135.2  -0.000040209
     ===========================================================


  TIME: GANDRA  STEP:    42.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0017053378      0.0000000000
        2      0.0000005514      0.0017053065      0.0000426791
        3      0.0000000000      0.0017052662      0.0000000000

    Force Error: 0.650307E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011705338   80329.2  121737.5  -0.000031311
   2   0.001000551   0.011705306   80311.7  121858.7  -0.000066919
   3   0.002000000   0.011705266   80401.2  122156.5  -0.000040273
     ===========================================================


  TIME: GANDRA  STEP:    43.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0017575290      0.0000000000
        2      0.0000005644      0.0017574978      0.0000460019
        3      0.0000000000      0.0017574575      0.0000000000

    Force Error: 0.656337E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011757529   80365.3  122768.1  -0.000031286
   2   0.001000564   0.011757498   80346.7  122891.4  -0.000069463
   3   0.002000000   0.011757457   80435.5  123193.4  -0.000040315
     ===========================================================


  TIME: GANDRA  STEP:    44.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0018102588      0.0000000000
        2      0.0000005774      0.0018102276      0.0000494326
        3      0.0000000000      0.0018101873      0.0000000000

    Force Error: 0.662337E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011810259   80402.5  123814.4  -0.000031240
   2   0.001000577   0.011810228   80382.8  123939.9  -0.000072071
   3   0.002000000   0.011810187   80470.8  124246.2  -0.000040336
     ===========================================================


  TIME: GANDRA  STEP:    45.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0018635260      0.0000000000
        2      0.0000005904      0.0018634949      0.0000529712
        3      0.0000000000      0.0018634546      0.0000000000

    Force Error: 0.668303E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011863526   80440.7  124876.6  -0.000031171
   2   0.001000590   0.011863495   80419.9  125004.3  -0.000074743
   3   0.002000000   0.011863455   80507.1  125315.0  -0.000040336
     ===========================================================


  TIME: GANDRA  STEP:    46.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0019173293      0.0000000000
        2      0.0000006033      0.0019172983      0.0000566178
        3      0.0000000000      0.0019172581      0.0000000000

    Force Error: 0.674232E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011917329   80480.0  125954.8  -0.000031080
   2   0.001000603   0.011917298   80458.1  126084.8  -0.000077477
   3   0.002000000   0.011917258   80544.6  126399.9  -0.000040315
     ===========================================================


  TIME: GANDRA  STEP:    47.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0019716671      0.0000000000
        2      0.0000006163      0.0019716363      0.0000603724
        3      0.0000000000      0.0019715961      0.0000000000

    Force Error: 0.680120E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011971667   80520.4  127049.3  -0.000030968
   2   0.001000616   0.011971636   80497.4  127181.5  -0.000080276
   3   0.002000000   0.011971596   80583.2  127501.1  -0.000040272
     ===========================================================


  TIME: GANDRA  STEP:    48.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0020265376      0.0000000000
        2      0.0000006292      0.0020265069      0.0000642351
        3      0.0000000000      0.0020264668      0.0000000000

    Force Error: 0.685964E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012026538   80561.9  128160.1  -0.000030832
   2   0.001000629   0.012026507   80537.8  128294.6  -0.000083138
   3   0.002000000   0.012026467   80622.8  128618.8  -0.000040209
     ===========================================================


  TIME: GANDRA  STEP:    49.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0020819384      0.0000000000
        2      0.0000006421      0.0020819079      0.0000682059
        3      0.0000000000      0.0020818679      0.0000000000

    Force Error: 0.691761E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012081938   80604.5  129287.4  -0.000030676
   2   0.001000642   0.012081908   80579.4  129424.2  -0.000086063
   3   0.002000000   0.012081868   80663.6  129753.1  -0.000040124
     ===========================================================


  TIME: GANDRA  STEP:    50.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0021378671      0.0000000000
        2      0.0000006551      0.0021378368      0.0000722848
        3      0.0000000000      0.0021377969      0.0000000000

    Force Error: 0.697506E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012137867   80648.3  130431.3  -0.000030497
   2   0.001000655   0.012137837   80622.1  130570.5  -0.000089053
   3   0.002000000   0.012137797   80705.6  130904.2  -0.000040019
     ===========================================================


  TIME: GANDRA  STEP:    51.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0021943209      0.0000000000
        2      0.0000006680      0.0021942908      0.0000764718
        3      0.0000000000      0.0021942511      0.0000000000

    Force Error: 0.703196E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012194321   80693.2  131592.0  -0.000030296
   2   0.001000668   0.012194291   80665.9  131733.6  -0.000092107
   3   0.002000000   0.012194251   80748.7  132072.1  -0.000039892
     ===========================================================


  TIME: GANDRA  STEP:    52.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0022512965      0.0000000000
        2      0.0000006809      0.0022512667      0.0000807669
        3      0.0000000000      0.0022512271      0.0000000000

    Force Error: 0.708827E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012251297   80739.3  132769.5  -0.000030073
   2   0.001000681   0.012251267   80710.9  132913.6  -0.000095224
   3   0.002000000   0.012251227   80793.0  133257.0  -0.000039745
     ===========================================================


  TIME: GANDRA  STEP:    53.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0023087906      0.0000000000
        2      0.0000006938      0.0023087610      0.0000851700
        3      0.0000000000      0.0023087216      0.0000000000

    Force Error: 0.714395E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012308791   80786.6  133964.2  -0.000029829
   2   0.001000694   0.012308761   80757.1  134110.7  -0.000098406
   3   0.002000000   0.012308722   80838.5  134459.1  -0.000039578
     ===========================================================


  TIME: GANDRA  STEP:    54.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0023667991      0.0000000000
        2      0.0000007067      0.0023667698      0.0000896809
        3      0.0000000000      0.0023667306      0.0000000000

    Force Error: 0.719895E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012366799   80835.1  135175.9  -0.000029563
   2   0.001000707   0.012366770   80804.5  135325.0  -0.000101651
   3   0.002000000   0.012366731   80885.2  135678.4  -0.000039390
     ===========================================================


  TIME: GANDRA  STEP:    55.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0024253180      0.0000000000
        2      0.0000007195      0.0024252890      0.0000942996
        3      0.0000000000      0.0024252500      0.0000000000

    Force Error: 0.725325E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012425318   80884.8  136405.0  -0.000029276
   2   0.001000720   0.012425289   80853.2  136556.6  -0.000104961
   3   0.002000000   0.012425250   80933.1  136915.2  -0.000039181
     ===========================================================


  TIME: GANDRA  STEP:    56.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0024843426      0.0000000000
        2      0.0000007324      0.0024843140      0.0000990258
        3      0.0000000000      0.0024842753      0.0000000000

    Force Error: 0.730679E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012484343   80935.8  137651.4  -0.000028967
   2   0.001000732   0.012484314   80903.0  137805.6  -0.000108335
   3   0.002000000   0.012484275   80982.3  138169.4  -0.000038952
     ===========================================================


  TIME: GANDRA  STEP:    57.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025438681      0.0000000000
        2      0.0000007452      0.0025438398      0.0001038594
        3      0.0000000000      0.0025438014      0.0000000000

    Force Error: 0.735954E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012543868   80987.9  138915.3  -0.000028637
   2   0.001000745   0.012543840   80954.1  139072.2  -0.000111773
   3   0.002000000   0.012543801   81032.7  139441.3  -0.000038702
     ===========================================================


  TIME: GANDRA  STEP:    58.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026038891      0.0000000000
        2      0.0000007581      0.0026038612      0.0001088001
        3      0.0000000000      0.0026038231      0.0000000000

    Force Error: 0.741146E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012603889   81041.4  140196.8  -0.000028285
   2   0.001000758   0.012603861   81006.5  140356.3  -0.000115274
   3   0.002000000   0.012603823   81084.4  140730.8  -0.000038433
     ===========================================================


  TIME: GANDRA  STEP:    59.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026644000      0.0000000000
        2      0.0000007709      0.0026643725      0.0001138476
        3      0.0000000000      0.0026643347      0.0000000000

    Force Error: 0.746250E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012664400   81096.1  141495.9  -0.000027912
   2   0.001000771   0.012664373   81060.1  141658.2  -0.000118839
   3   0.002000000   0.012664335   81137.3  142038.2  -0.000038143
     ===========================================================


  TIME: GANDRA  STEP:    60.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0027253947      0.0000000000
        2      0.0000007837      0.0027253676      0.0001190015
        3      0.0000000000      0.0027253301      0.0000000000

    Force Error: 0.751261E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012725395   81152.1  142812.9  -0.000027518
   2   0.001000784   0.012725368   81115.0  142977.9  -0.000122468
   3   0.002000000   0.012725330   81191.6  143363.4  -0.000037833
     ===========================================================


  TIME: GANDRA  STEP:    61.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0027868668      0.0000000000
        2      0.0000007965      0.0027868401      0.0001242613
        3      0.0000000000      0.0027868030      0.0000000000

    Force Error: 0.756177E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012786867   81209.4  144147.6  -0.000027103
   2   0.001000797   0.012786840   81171.2  144315.4  -0.000126161
   3   0.002000000   0.012786803   81247.1  144706.7  -0.000037503
     ===========================================================


  TIME: GANDRA  STEP:    62.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0028488093      0.0000000000
        2      0.0000008093      0.0028487831      0.0001296266
        3      0.0000000000      0.0028487463      0.0000000000

    Force Error: 0.760991E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012848809   81268.0  145500.3  -0.000026667
   2   0.001000809   0.012848783   81228.8  145670.9  -0.000129916
   3   0.002000000   0.012848746   81304.0  146067.9  -0.000037153
     ===========================================================


  TIME: GANDRA  STEP:    63.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0029112151      0.0000000000
        2      0.0000008221      0.0029111893      0.0001350969
        3      0.0000000000      0.0029111529      0.0000000000

    Force Error: 0.765701E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012911215   81328.0  146871.0  -0.000026210
   2   0.001000822   0.012911189   81287.6  147044.4  -0.000133734
   3   0.002000000   0.012911153   81362.2  147447.3  -0.000036784
     ===========================================================


  TIME: GANDRA  STEP:    64.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0029740763      0.0000000000
        2      0.0000008349      0.0029740511      0.0001406714
        3      0.0000000000      0.0029740151      0.0000000000

    Force Error: 0.770301E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012974076   81389.3  148259.6  -0.000025732
   2   0.001000835   0.012974051   81347.8  148436.0  -0.000137615
   3   0.002000000   0.012974015   81421.8  148844.8  -0.000036395
     ===========================================================


  TIME: GANDRA  STEP:    65.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0030373850      0.0000000000
        2      0.0000008477      0.0030373603      0.0001463494
        3      0.0000000000      0.0030373248      0.0000000000

    Force Error: 0.774787E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013037385   81451.9  149666.4  -0.000025234
   2   0.001000848   0.013037360   81409.4  149845.7  -0.000141558
   3   0.002000000   0.013037325   81482.7  150260.5  -0.000035986
     ===========================================================


  TIME: GANDRA  STEP:    66.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0031011327      0.0000000000
        2      0.0000008604      0.0031011085      0.0001521302
        3      0.0000000000      0.0031010734      0.0000000000

    Force Error: 0.779155E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013101133   81515.9  151091.2  -0.000024715
   2   0.001000860   0.013101108   81472.3  151273.5  -0.000145563
   3   0.002000000   0.013101073   81545.0  151694.4  -0.000035558
     ===========================================================


  TIME: GANDRA  STEP:    67.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0031653102      0.0000000000
        2      0.0000008731      0.0031652866      0.0001580129
        3      0.0000000000      0.0031652520      0.0000000000

    Force Error: 0.783399E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013165310   81581.3  152534.2  -0.000024176
   2   0.001000873   0.013165287   81536.6  152719.5  -0.000149629
   3   0.002000000   0.013165252   81608.7  153146.6  -0.000035111
     ===========================================================


  TIME: GANDRA  STEP:    68.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032299084      0.0000000000
        2      0.0000008858      0.0032298854      0.0001639965
        3      0.0000000000      0.0032298512      0.0000000000

    Force Error: 0.787516E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013229908   81648.1  153995.3  -0.000023616
   2   0.001000886   0.013229885   81602.3  154183.7  -0.000153756
   3   0.002000000   0.013229851   81673.8  154617.1  -0.000034645
     ===========================================================


  TIME: GANDRA  STEP:    69.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032949173      0.0000000000
        2      0.0000008985      0.0032948949      0.0001700800
        3      0.0000000000      0.0032948612      0.0000000000

    Force Error: 0.791502E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013294917   81716.3  155474.6  -0.000023037
   2   0.001000899   0.013294895   81669.4  155666.1  -0.000157943
   3   0.002000000   0.013294861   81740.3  156105.8  -0.000034160
     ===========================================================


  TIME: GANDRA  STEP:    70.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0033603268      0.0000000000
        2      0.0000009112      0.0033603050      0.0001762620
        3      0.0000000000      0.0033602718      0.0000000000

    Force Error: 0.795351E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013360327   81785.9  156972.0  -0.000022438
   2   0.001000911   0.013360305   81738.0  157166.6  -0.000162190
   3   0.002000000   0.013360272   81808.2  157612.8  -0.000033657
     ===========================================================


  TIME: GANDRA  STEP:    71.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0034261261      0.0000000000
        2      0.0000009238      0.0034261049      0.0001825415
        3      0.0000000000      0.0034260723      0.0000000000

    Force Error: 0.799059E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013426126   81856.9  158487.5  -0.000021819
   2   0.001000924   0.013426105   81807.9  158685.3  -0.000166495
   3   0.002000000   0.013426072   81877.6  159138.1  -0.000033135
     ===========================================================


  TIME: GANDRA  STEP:    72.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0034923040      0.0000000000
        2      0.0000009365      0.0034922835      0.0001889169
        3      0.0000000000      0.0034922515      0.0000000000

    Force Error: 0.802621E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013492304   81929.3  160021.1  -0.000021181
   2   0.001000936   0.013492284   81879.3  160222.1  -0.000170859
   3   0.002000000   0.013492251   81948.4  160681.5  -0.000032595
     ===========================================================


  TIME: GANDRA  STEP:    73.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0035588491      0.0000000000
        2      0.0000009491      0.0035588293      0.0001953868
        3      0.0000000000      0.0035587978      0.0000000000

    Force Error: 0.806034E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013558849   82003.2  161572.8  -0.000020523
   2   0.001000949   0.013558829   81952.1  161777.0  -0.000175279
   3   0.002000000   0.013558798   82020.6  162243.2  -0.000032037
     ===========================================================


  TIME: GANDRA  STEP:    74.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0036257493      0.0000000000
        2      0.0000009616      0.0036257301      0.0002019496
        3      0.0000000000      0.0036256993      0.0000000000

    Force Error: 0.809293E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013625749   82078.6  163142.4  -0.000019847
   2   0.001000962   0.013625730   82026.4  163349.9  -0.000179756
   3   0.002000000   0.013625699   82094.4  163822.9  -0.000031461
     ===========================================================


  TIME: GANDRA  STEP:    75.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0036929921      0.0000000000
        2      0.0000009742      0.0036929737      0.0002086035
        3      0.0000000000      0.0036929434      0.0000000000

    Force Error: 0.812393E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013692992   82155.4  164730.0  -0.000019152
   2   0.001000974   0.013692974   82102.2  164940.8  -0.000184288
   3   0.002000000   0.013692943   82169.6  165420.7  -0.000030868
     ===========================================================


  TIME: GANDRA  STEP:    76.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0037605646      0.0000000000
        2      0.0000009867      0.0037605469      0.0002153467
        3      0.0000000000      0.0037605173      0.0000000000

    Force Error: 0.815331E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013760565   82233.7  166335.3  -0.000018439
   2   0.001000987   0.013760547   82179.4  166549.5  -0.000188874
   3   0.002000000   0.013760517   82246.2  167036.5  -0.000030257
     ===========================================================


  TIME: GANDRA  STEP:    77.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0038284535      0.0000000000
        2      0.0000009992      0.0038284365      0.0002221770
        3      0.0000000000      0.0038284075      0.0000000000

    Force Error: 0.818101E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013828453   82313.5  167958.4  -0.000017708
   2   0.001000999   0.013828437   82258.1  168176.0  -0.000193514
   3   0.002000000   0.013828408   82324.4  168670.1  -0.000029630
     ===========================================================


  TIME: GANDRA  STEP:    78.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0038966449      0.0000000000
        2      0.0000010117      0.0038966287      0.0002290925
        3      0.0000000000      0.0038966004      0.0000000000

    Force Error: 0.820700E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013896645   82394.8  169599.2  -0.000016959
   2   0.001001012   0.013896629   82338.3  169820.2  -0.000198204
   3   0.002000000   0.013896600   82404.1  170321.5  -0.000028987
     ===========================================================


  TIME: GANDRA  STEP:    79.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0039651247      0.0000000000
        2      0.0000010241      0.0039651093      0.0002360908
        3      0.0000000000      0.0039650816      0.0000000000

    Force Error: 0.823123E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013965125   82477.6  171257.4  -0.000016193
   2   0.001001024   0.013965109   82420.0  171481.9  -0.000202946
   3   0.002000000   0.013965082   82485.3  171990.5  -0.000028327
     ===========================================================


  TIME: GANDRA  STEP:    80.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0040338781      0.0000000000
        2      0.0000010365      0.0040338635      0.0002431695
        3      0.0000000000      0.0040338366      0.0000000000

    Force Error: 0.825367E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014033878   82561.8  172933.0  -0.000015410
   2   0.001001037   0.014033864   82503.3  173161.0  -0.000207736
   3   0.002000000   0.014033837   82568.0  173677.0  -0.000027652
     ===========================================================


  TIME: GANDRA  STEP:    81.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0041028902      0.0000000000
        2      0.0000010489      0.0041028764      0.0002503261
        3      0.0000000000      0.0041028501      0.0000000000

    Force Error: 0.827427E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014102890   82647.6  174625.8  -0.000014610
   2   0.001001049   0.014102876   82588.0  174857.3  -0.000212574
   3   0.002000000   0.014102850   82652.2  175380.8  -0.000026961
     ===========================================================


  TIME: GANDRA  STEP:    82.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0041721453      0.0000000000
        2      0.0000010612      0.0041721323      0.0002575577
        3      0.0000000000      0.0041721068      0.0000000000

    Force Error: 0.829300E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014172145   82734.9  176335.6  -0.000013794
   2   0.001001061   0.014172132   82674.2  176570.7  -0.000217458
   3   0.002000000   0.014172107   82738.0  177101.8  -0.000026256
     ===========================================================


  TIME: GANDRA  STEP:    83.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0042416276      0.0000000000
        2      0.0000010735      0.0042416155      0.0002648617
        3      0.0000000000      0.0042415907      0.0000000000

    Force Error: 0.830982E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014241628   82823.8  178062.3  -0.000012963
   2   0.001001073   0.014241615   82762.0  178300.9  -0.000222385
   3   0.002000000   0.014241591   82825.3  178839.7  -0.000025536
     ===========================================================


  TIME: GANDRA  STEP:    84.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0043113207      0.0000000000
        2      0.0000010857      0.0043113095      0.0002722349
        3      0.0000000000      0.0043112854      0.0000000000

    Force Error: 0.832469E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014311321   82914.1  179805.5  -0.000012116
   2   0.001001086   0.014311309   82851.3  180047.8  -0.000227356
   3   0.002000000   0.014311285   82914.1  180594.4  -0.000024802
     ===========================================================


  TIME: GANDRA  STEP:    85.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0043812080      0.0000000000
        2      0.0000010979      0.0043811976      0.0002796742
        3      0.0000000000      0.0043811743      0.0000000000

    Force Error: 0.833757E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014381208   83006.0  181565.2  -0.000011255
   2   0.001001098   0.014381198   82942.2  181811.1  -0.000232367
   3   0.002000000   0.014381174   83004.5  182365.6  -0.000024055
     ===========================================================


  TIME: GANDRA  STEP:    86.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0044512723      0.0000000000
        2      0.0000011100      0.0044512628      0.0002871763
        3      0.0000000000      0.0044512403      0.0000000000

    Force Error: 0.834844E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014451272   83099.5  183341.0  -0.000010380
   2   0.001001110   0.014451263   83034.5  183590.7  -0.000237417
   3   0.002000000   0.014451240   83096.4  184153.1  -0.000023295
     ===========================================================


  TIME: GANDRA  STEP:    87.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0045214961      0.0000000000
        2      0.0000011221      0.0045214875      0.0002947378
        3      0.0000000000      0.0045214657      0.0000000000

    Force Error: 0.835726E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014521496   83194.4  185132.8  -0.000009491
   2   0.001001122   0.014521487   83128.5  185386.1  -0.000242503
   3   0.002000000   0.014521466   83189.9  185956.6  -0.000022523
     ===========================================================


  TIME: GANDRA  STEP:    88.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0045918616      0.0000000000
        2      0.0000011342      0.0045918539      0.0003023549
        3      0.0000000000      0.0045918329      0.0000000000

    Force Error: 0.836400E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014591862   83290.9  186940.2  -0.000008589
   2   0.001001134   0.014591854   83223.9  187197.2  -0.000247624
   3   0.002000000   0.014591833   83285.0  187775.8  -0.000021739
     ===========================================================


  TIME: GANDRA  STEP:    89.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0046623506      0.0000000000
        2      0.0000011461      0.0046623438      0.0003100240
        3      0.0000000000      0.0046623237      0.0000000000

    Force Error: 0.836863E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014662351   83389.0  188762.9  -0.000007675
   2   0.001001146   0.014662344   83320.9  189023.7  -0.000252777
   3   0.002000000   0.014662324   83381.6  189610.5  -0.000020944
     ===========================================================


  TIME: GANDRA  STEP:    90.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0047329446      0.0000000000
        2      0.0000011581      0.0047329387      0.0003177411
        3      0.0000000000      0.0047329194      0.0000000000

    Force Error: 0.837112E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014732945   83488.6  190600.6  -0.000006749
   2   0.001001158   0.014732939   83419.5  190865.2  -0.000257960
   3   0.002000000   0.014732919   83479.7  191460.3  -0.000020139
     ===========================================================


  TIME: GANDRA  STEP:    91.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0048036247      0.0000000000
        2      0.0000011699      0.0048036198      0.0003255022
        3      0.0000000000      0.0048036013      0.0000000000

    Force Error: 0.837145E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014803625   83589.7  192453.0  -0.000005812
   2   0.001001170   0.014803620   83519.6  192721.4  -0.000263170
   3   0.002000000   0.014803601   83579.4  193325.0  -0.000019324
     ===========================================================


  TIME: GANDRA  STEP:    92.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0048743719      0.0000000000
        2      0.0000011817      0.0048743680      0.0003333031
        3      0.0000000000      0.0048743503      0.0000000000

    Force Error: 0.836960E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014874372   83692.4  194319.7  -0.000004865
   2   0.001001182   0.014874368   83621.3  194591.9  -0.000268406
   3   0.002000000   0.014874350   83680.7  195204.0  -0.000018500
     ===========================================================


  TIME: GANDRA  STEP:    93.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0049451667      0.0000000000
        2      0.0000011935      0.0049451637      0.0003411393
        3      0.0000000000      0.0049451469      0.0000000000

    Force Error: 0.836554E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014945167   83796.6  196200.5  -0.000003908
   2   0.001001193   0.014945164   83724.5  196476.5  -0.000273664
   3   0.002000000   0.014945147   83783.6  197097.2  -0.000017668
     ===========================================================


  TIME: GANDRA  STEP:    94.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0050159894      0.0000000000
        2      0.0000012051      0.0050159874      0.0003490065
        3      0.0000000000      0.0050159715      0.0000000000

    Force Error: 0.835926E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015015989   83902.3  198094.8  -0.000002942
   2   0.001001205   0.015015987   83829.2  198374.7  -0.000278941
   3   0.002000000   0.015015971   83887.9  199004.1  -0.000016829
     ===========================================================


  TIME: GANDRA  STEP:    95.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0050868202      0.0000000000
        2      0.0000012167      0.0050868192      0.0003569000
        3      0.0000000000      0.0050868041      0.0000000000

    Force Error: 0.835075E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015086820   84009.6  200002.3  -0.000001969
   2   0.001001217   0.015086819   83935.5  200286.1  -0.000284236
   3   0.002000000   0.015086804   83993.9  200924.2  -0.000015982
     ===========================================================


  TIME: GANDRA  STEP:    96.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0051576389      0.0000000000
        2      0.0000012282      0.0051576389      0.0003648151
        3      0.0000000000      0.0051576247      0.0000000000

    Force Error: 0.833997E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015157639   84118.4  201922.6  -0.000000988
   2   0.001001228   0.015157639   84043.3  202210.2  -0.000289545
   3   0.002000000   0.015157625   84101.4  202857.2  -0.000015130
     ===========================================================


  TIME: GANDRA  STEP:    97.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0052284253      0.0000000000
        2      0.0000012397      0.0052284263      0.0003727468
        3      0.0000000000      0.0052284129      0.0000000000

    Force Error: 0.832694E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015228425   84228.8  203855.2  -0.000000001
   2   0.001001240   0.015228426   84152.6  204146.7  -0.000294866
   3   0.002000000   0.015228413   84210.5  204802.6  -0.000014273
     ===========================================================


  TIME: GANDRA  STEP:    98.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0052991588      0.0000000000
        2      0.0000012510      0.0052991608      0.0003806903
        3      0.0000000000      0.0052991483      0.0000000000

    Force Error: 0.831163E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015299159   84340.7  205799.6   0.000000992
   2   0.001001251   0.015299161   84263.5  206095.1  -0.000300195
   3   0.002000000   0.015299148   84321.0  206760.0  -0.000013412
     ===========================================================


  TIME: GANDRA  STEP:    99.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0053698189      0.0000000000
        2      0.0000012623      0.0053698219      0.0003886405
        3      0.0000000000      0.0053698102      0.0000000000

    Force Error: 0.829405E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015369819   84454.0  207755.4   0.000001989
   2   0.001001262   0.015369822   84375.9  208054.8  -0.000305529
   3   0.002000000   0.015369810   84433.2  208728.9  -0.000012548
     ===========================================================


  TIME: GANDRA  STEP:   100.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0054403848      0.0000000000
        2      0.0000012735      0.0054403888      0.0003965922
        3      0.0000000000      0.0054403780      0.0000000000

    Force Error: 0.827419E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015440385   84568.9  209722.2   0.000002990
   2   0.001001273   0.015440389   84489.8  210025.5  -0.000310865
   3   0.002000000   0.015440378   84546.9  210708.7  -0.000011682
     ===========================================================


  TIME: GANDRA  STEP:   101.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0055108358      0.0000000000
        2      0.0000012846      0.0055108408      0.0004045402
        3      0.0000000000      0.0055108308      0.0000000000

    Force Error: 0.825205E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015510836   84685.3  211699.3   0.000003994
   2   0.001001285   0.015510841   84605.3  212006.5  -0.000316201
   3   0.002000000   0.015510831   84662.0  212699.0  -0.000010814
     ===========================================================


  TIME: GANDRA  STEP:   102.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0055811509      0.0000000000
        2      0.0000012956      0.0055811569      0.0004124791
        3      0.0000000000      0.0055811479      0.0000000000

    Force Error: 0.822763E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015581151   84803.2  213686.2   0.000005000
   2   0.001001296   0.015581157   84722.2  213997.4  -0.000321533
   3   0.002000000   0.015581148   84778.8  214699.3  -0.000009946
     ===========================================================


  TIME: GANDRA  STEP:   103.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0056513094      0.0000000000
        2      0.0000013065      0.0056513164      0.0004204035
        3      0.0000000000      0.0056513082      0.0000000000

    Force Error: 0.820095E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015651309   84922.6  215682.4   0.000006006
   2   0.001001307   0.015651316   84840.6  215997.6  -0.000326858
   3   0.002000000   0.015651308   84897.0  216708.9  -0.000009079
     ===========================================================


  TIME: GANDRA  STEP:   104.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0057212903      0.0000000000
        2      0.0000013173      0.0057212983      0.0004283081
        3      0.0000000000      0.0057212909      0.0000000000

    Force Error: 0.817201E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015721290   85043.4  217687.4   0.000007012
   2   0.001001317   0.015721298   84960.5  218006.5  -0.000332172
   3   0.002000000   0.015721291   85016.7  218727.3  -0.000008213
     ===========================================================


  TIME: GANDRA  STEP:   105.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0057910728      0.0000000000
        2      0.0000013280      0.0057910818      0.0004361874
        3      0.0000000000      0.0057910753      0.0000000000

    Force Error: 0.814083E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015791073   85165.7  219700.5   0.000008017
   2   0.001001328   0.015791082   85081.8  220023.6  -0.000337472
   3   0.002000000   0.015791075   85137.9  220754.0  -0.000007350
     ===========================================================


  TIME: GANDRA  STEP:   106.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0058606361      0.0000000000
        2      0.0000013387      0.0058606461      0.0004440358
        3      0.0000000000      0.0058606405      0.0000000000

    Force Error: 0.810742E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015860636   85289.5  221721.2   0.000009020
   2   0.001001339   0.015860646   85204.7  222048.2  -0.000342756
   3   0.002000000   0.015860641   85260.6  222788.3  -0.000006491
     ===========================================================


  TIME: GANDRA  STEP:   107.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0059299596      0.0000000000
        2      0.0000013492      0.0059299707      0.0004518479
        3      0.0000000000      0.0059299659      0.0000000000

    Force Error: 0.807180E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015929960   85414.6  223748.8   0.000010019
   2   0.001001349   0.015929971   85328.9  224079.8  -0.000348019
   3   0.002000000   0.015929966   85384.8  224829.6  -0.000005637
     ===========================================================


  TIME: GANDRA  STEP:   108.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0059990228      0.0000000000
        2      0.0000013595      0.0059990348      0.0004596181
        3      0.0000000000      0.0059990309      0.0000000000

    Force Error: 0.803399E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015999023   85541.3  225782.8   0.000011014
   2   0.001001360   0.015999035   85454.6  226117.7  -0.000353259
   3   0.002000000   0.015999031   85510.4  226877.4  -0.000004789
     ===========================================================


  TIME: GANDRA  STEP:   109.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0060678053      0.0000000000
        2      0.0000013698      0.0060678183      0.0004673411
        3      0.0000000000      0.0060678152      0.0000000000

    Force Error: 0.799404E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016067805   85669.3  227822.4   0.000012004
   2   0.001001370   0.016067818   85581.7  228161.3  -0.000358472
   3   0.002000000   0.016067815   85637.4  228930.9  -0.000003948
     ===========================================================


  TIME: GANDRA  STEP:   110.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0061362870      0.0000000000
        2      0.0000013800      0.0061363010      0.0004750112
        3      0.0000000000      0.0061362987      0.0000000000

    Force Error: 0.795195E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016136287   85798.7  229867.1   0.000012988
   2   0.001001380   0.016136301   85710.2  230209.9  -0.000363654
   3   0.002000000   0.016136299   85765.9  230989.5  -0.000003115
     ===========================================================


  TIME: GANDRA  STEP:   111.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0062044479      0.0000000000
        2      0.0000013900      0.0062044628      0.0004826232
        3      0.0000000000      0.0062044614      0.0000000000

    Force Error: 0.790777E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016204448   85929.4  231916.2   0.000013964
   2   0.001001390   0.016204463   85840.1  232262.9  -0.000368804
   3   0.002000000   0.016204461   85895.8  233052.6  -0.000002291
     ===========================================================


  TIME: GANDRA  STEP:   112.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0062722684      0.0000000000
        2      0.0000014000      0.0062722843      0.0004901717
        3      0.0000000000      0.0062722836      0.0000000000

    Force Error: 0.786153E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016272268   86061.6  233969.0   0.000014931
   2   0.001001400   0.016272284   85971.4  234319.6  -0.000373917
   3   0.002000000   0.016272284   86027.0  235119.4  -0.000001477
     ===========================================================


  TIME: GANDRA  STEP:   113.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0063397291      0.0000000000
        2      0.0000014098      0.0063397460      0.0004976514
        3      0.0000000000      0.0063397461      0.0000000000

    Force Error: 0.781327E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016339729   86195.0  236024.9   0.000015889
   2   0.001001410   0.016339746   86104.0  236379.3  -0.000378990
   3   0.002000000   0.016339746   86159.7  237189.4  -0.000000675
     ===========================================================


  TIME: GANDRA  STEP:   114.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0064068111      0.0000000000
        2      0.0000014194      0.0064068289      0.0005050572
        3      0.0000000000      0.0064068298      0.0000000000

    Force Error: 0.776304E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016406811   86329.8  238083.1   0.000016837
   2   0.001001419   0.016406829   86237.9  238441.4  -0.000384020
   3   0.002000000   0.016406830   86293.7  239261.8   0.000000115
     ===========================================================


  TIME: GANDRA  STEP:   115.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0064734956      0.0000000000
        2      0.0000014290      0.0064735143      0.0005123840
        3      0.0000000000      0.0064735160      0.0000000000

    Force Error: 0.771088E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016473496   86465.9  240142.9   0.000017773
   2   0.001001429   0.016473514   86373.2  240505.1  -0.000389005
   3   0.002000000   0.016473516   86429.0  241335.9   0.000000892
     ===========================================================


  TIME: GANDRA  STEP:   116.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0065397644      0.0000000000
        2      0.0000014384      0.0065397840      0.0005196268
        3      0.0000000000      0.0065397864      0.0000000000

    Force Error: 0.765684E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016539764   86603.3  242203.7   0.000018697
   2   0.001001438   0.016539784   86509.7  242569.8  -0.000393941
   3   0.002000000   0.016539786   86565.7  243411.0   0.000001654
     ===========================================================


  TIME: GANDRA  STEP:   117.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0066055997      0.0000000000
        2      0.0000014477      0.0066056202      0.0005267808
        3      0.0000000000      0.0066056233      0.0000000000

    Force Error: 0.760097E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016605600   86741.9  244264.8   0.000019607
   2   0.001001448   0.016605620   86647.5  244634.7  -0.000398825
   3   0.002000000   0.016605623   86703.6  245486.4   0.000002401
     ===========================================================


  TIME: GANDRA  STEP:   118.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0066709840      0.0000000000
        2      0.0000014569      0.0066710054      0.0005338414
        3      0.0000000000      0.0066710092      0.0000000000

    Force Error: 0.754332E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016670984   86881.8  246325.4   0.000020502
   2   0.001001457   0.016671005   86786.5  246699.1  -0.000403654
   3   0.002000000   0.016671009   86842.9  247561.4   0.000003131
     ===========================================================


  TIME: GANDRA  STEP:   119.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0067359004      0.0000000000
        2      0.0000014659      0.0067359227      0.0005408041
        3      0.0000000000      0.0067359272      0.0000000000

    Force Error: 0.748396E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016735900   87022.8  248384.8   0.000021382
   2   0.001001466   0.016735923   86926.8  248762.3  -0.000408426
   3   0.002000000   0.016735927   86983.3  249635.3   0.000003845
     ===========================================================


  TIME: GANDRA  STEP:   120.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0068003326      0.0000000000
        2      0.0000014748      0.0068003557      0.0005476645
        3      0.0000000000      0.0068003609      0.0000000000

    Force Error: 0.742293E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016800333   87165.1  250442.3   0.000022246
   2   0.001001475   0.016800356   87068.2  250823.6  -0.000413138
   3   0.002000000   0.016800361   87125.0  251707.4   0.000004540
     ===========================================================


  TIME: GANDRA  STEP:   121.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0068642646      0.0000000000
        2      0.0000014835      0.0068642885      0.0005544185
        3      0.0000000000      0.0068642944      0.0000000000

    Force Error: 0.736031E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016864265   87308.5  252497.3   0.000023093
   2   0.001001484   0.016864289   87210.9  252882.3  -0.000417788
   3   0.002000000   0.016864294   87267.9  253777.0   0.000005215
     ===========================================================


  TIME: GANDRA  STEP:   122.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0069276811      0.0000000000
        2      0.0000014921      0.0069277058      0.0005610621
        3      0.0000000000      0.0069277124      0.0000000000

    Force Error: 0.729615E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016927681   87453.0  254548.9   0.000023922
   2   0.001001492   0.016927706   87354.6  254937.7  -0.000422372
   3   0.002000000   0.016927712   87412.0  255843.3   0.000005871
     ===========================================================


  TIME: GANDRA  STEP:   123.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0069905673      0.0000000000
        2      0.0000015006      0.0069905929      0.0005675917
        3      0.0000000000      0.0069906000      0.0000000000

    Force Error: 0.723053E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016990567   87598.6  256596.5   0.000024731
   2   0.001001501   0.016990593   87499.5  256989.0  -0.000426890
   3   0.002000000   0.016990600   87557.2  257905.6   0.000006506
     ===========================================================


  TIME: GANDRA  STEP:   124.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0070529091      0.0000000000
        2      0.0000015089      0.0070529354      0.0005740036
        3      0.0000000000      0.0070529431      0.0000000000

    Force Error: 0.716349E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.017052909   87745.3  258639.4   0.000025522
   2   0.001001509   0.017052935   87645.5  259035.6  -0.000431338
   3   0.002000000   0.017052943   87703.6  259963.3   0.000007119
     ===========================================================


  TIME: GANDRA  STEP:   125.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0071146928      0.0000000000
        2      0.0000015171      0.0071147198      0.0005802946
        3      0.0000000000      0.0071147281      0.0000000000

    Force Error: 0.709513E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.017114693   87893.1  260676.9   0.000026291
   2   0.001001517   0.017114720   87792.5  261076.7  -0.000435715
   3   0.002000000   0.017114728   87851.0  262015.6   0.000007709
     ===========================================================


  TIME: GANDRA  STEP:   126.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0071759055      0.0000000000
        2      0.0000015252      0.0071759333      0.0005864615
        3      0.0000000000      0.0071759421      0.0000000000

    Force Error: 0.702549E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.017175905   88041.8  262708.3   0.000027040
   2   0.001001525   0.017175933   87940.6  263111.7  -0.000440018
   3   0.002000000   0.017175942   87999.5  264061.8   0.000008277
     ===========================================================


  TIME: GANDRA  STEP:   127.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0072365349      0.0000000000
        2      0.0000015331      0.0072365633      0.0005925017
        3      0.0000000000      0.0072365727      0.0000000000

    Force Error: 0.695466E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.017236535   88191.6  264732.9   0.000027768
   2   0.001001533   0.017236563   88089.6  265139.9  -0.000444247
   3   0.002000000   0.017236573   88149.0  266101.3   0.000008821
     ===========================================================


  TIME: GANDRA  STEP:   128.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0072965692      0.0000000000
        2      0.0000015408      0.0072965984      0.0005984123
        3      0.0000000000      0.0072966082      0.0000000000

    Force Error: 0.688271E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.017296569   88342.3  266749.9   0.000028473
   2   0.001001541   0.017296598   88239.6  267160.6  -0.000448399
   3   0.002000000   0.017296608   88299.5  268133.4   0.000009340
     ===========================================================


  TIME: GANDRA  STEP:   129.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0073559975      0.0000000000
        2      0.0000015484      0.0073560274      0.0006041911
        3      0.0000000000      0.0073560377      0.0000000000

    Force Error: 0.680970E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.017355998   88493.9  268758.9   0.000029155
   2   0.001001548   0.017356027   88390.6  269173.0  -0.000452472
   3   0.002000000   0.017356038   88451.0  270157.3   0.000009834
     ===========================================================


  TIME: GANDRA  STEP:   130.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0074148095      0.0000000000
        2      0.0000015559      0.0074148399      0.0006098360
        3      0.0000000000      0.0074148507      0.0000000000

    Force Error: 0.673572E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.017414809   88646.4  270759.0   0.000029813
   2   0.001001556   0.017414840   88542.4  271176.7  -0.000456466
   3   0.002000000   0.017414851   88603.4  272172.6   0.000010303
     ===========================================================


  TIME: GANDRA  STEP:   131.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0074729953      0.0000000000
        2      0.0000015632      0.0074730263      0.0006153451
        3      0.0000000000      0.0074730375      0.0000000000

    Force Error: 0.666082E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.017472995   88799.7  272749.7   0.000030449
   2   0.001001563   0.017473026   88695.1  273170.9  -0.000460379
   3   0.002000000   0.017473037   88756.8  274178.4   0.000010746
     ===========================================================


  TIME: GANDRA  STEP:   132.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0075305459      0.0000000000
        2      0.0000015704      0.0075305776      0.0006207167
        3      0.0000000000      0.0075305891      0.0000000000

    Force Error: 0.658509E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.017530546   88953.9  274730.3   0.000031059
   2   0.001001570   0.017530578   88848.7  275155.0  -0.000464211
   3   0.002000000   0.017530589   88911.0  276174.2   0.000011163
     ===========================================================


  TIME: GANDRA  STEP:   133.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0075874531      0.0000000000
        2      0.0000015774      0.0075874853      0.0006259495
        3      0.0000000000      0.0075874972      0.0000000000

    Force Error: 0.650860E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.017587453   89108.9  276700.3   0.000031646
   2   0.001001577   0.017587485   89003.0  277128.4  -0.000467959
   3   0.002000000   0.017587497   89066.0  278159.4   0.000011553
     ===========================================================


  TIME: GANDRA  STEP:   134.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0076437091      0.0000000000
        2      0.0000015843      0.0076437418      0.0006310424
        3      0.0000000000      0.0076437541      0.0000000000

    Force Error: 0.643141E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.017643709   89264.6  278658.9   0.000032207
   2   0.001001584   0.017643742   89158.1  279090.4  -0.000471624
   3   0.002000000   0.017643754   89221.8  280133.3   0.000011916
     ===========================================================


  TIME: GANDRA  STEP:   135.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0076993068      0.0000000000
        2      0.0000015910      0.0076993400      0.0006359944
        3      0.0000000000      0.0076993526      0.0000000000

    Force Error: 0.635361E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.017699307   89421.0  280605.7   0.000032744
   2   0.001001591   0.017699340   89314.0  281040.6  -0.000475205
   3   0.002000000   0.017699353   89378.4  282095.5   0.000012252
     ===========================================================


  TIME: GANDRA  STEP:   136.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0077542399      0.0000000000
        2      0.0000015976      0.0077542736      0.0006408050
        3      0.0000000000      0.0077542865      0.0000000000

    Force Error: 0.627525E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.017754240   89578.1  282540.0   0.000033255
   2   0.001001598   0.017754274   89470.5  282978.3  -0.000478701
   3   0.002000000   0.017754286   89535.8  284045.2   0.000012560
     ===========================================================


  TIME: GANDRA  STEP:   137.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0078085027      0.0000000000
        2      0.0000016041      0.0078085369      0.0006454736
        3      0.0000000000      0.0078085500      0.0000000000

    Force Error: 0.619642E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.017808503   89735.9  284461.4   0.000033741
   2   0.001001604   0.017808537   89627.7  284903.0  -0.000482112
   3   0.002000000   0.017808550   89693.8  285982.0   0.000012840
     ===========================================================


  TIME: GANDRA  STEP:   138.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0078620901      0.0000000000
        2      0.0000016104      0.0078621247      0.0006500002
        3      0.0000000000      0.0078621380      0.0000000000

    Force Error: 0.611717E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.017862090   89894.2  286369.2   0.000034201
   2   0.001001610   0.017862125   89785.5  286814.1  -0.000485438
   3   0.002000000   0.017862138   89852.5  287905.3   0.000013093
     ===========================================================


  TIME: GANDRA  STEP:   139.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0079149976      0.0000000000
        2      0.0000016166      0.0079150327      0.0006543847
        3      0.0000000000      0.0079150462      0.0000000000

    Force Error: 0.603758E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.017914998   90053.2  288263.1   0.000034635
   2   0.001001617   0.017915033   89943.9  288711.2  -0.000488678
   3   0.002000000   0.017915046   90011.8  289814.7   0.000013318
     ===========================================================


  TIME: GANDRA  STEP:   140.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0079672215      0.0000000000
        2      0.0000016226      0.0079672570      0.0006586273
        3      0.0000000000      0.0079672707      0.0000000000

    Force Error: 0.595771E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.017967222   90212.7  290142.4   0.000035044
   2   0.001001623   0.017967257   90102.9  290593.7  -0.000491833
   3   0.002000000   0.017967271   90171.7  291709.6   0.000013516
     ===========================================================


  TIME: GANDRA  STEP:   141.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0080187586      0.0000000000
        2      0.0000016285      0.0080187944      0.0006627286
        3      0.0000000000      0.0080188082      0.0000000000

    Force Error: 0.587763E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.018018759   90372.7  292006.7   0.000035428
   2   0.001001628   0.018018794   90262.3  292461.3  -0.000494903
   3   0.002000000   0.018018808   90332.2  293589.6   0.000013686
     ===========================================================


  TIME: GANDRA  STEP:   142.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0080696062      0.0000000000
        2      0.0000016342      0.0080696424      0.0006666891
        3      0.0000000000      0.0080696563      0.0000000000

    Force Error: 0.579739E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.018069606   90533.1  293855.6   0.000035786
   2   0.001001634   0.018069642   90422.3  294313.3  -0.000497887
   3   0.002000000   0.018069656   90493.1  295454.2   0.000013828
     ===========================================================


  TIME: GANDRA  STEP:   143.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0081197624      0.0000000000
        2      0.0000016399      0.0081197988      0.0006705097
        3      0.0000000000      0.0081198128      0.0000000000

    Force Error: 0.571707E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.018119762   90694.0  295688.6   0.000036119
   2   0.001001640   0.018119799   90582.7  296149.5  -0.000500787
   3   0.002000000   0.018119813   90654.6  297302.9   0.000013943
     ===========================================================


  TIME: GANDRA  STEP:   144.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0081692256      0.0000000000
        2      0.0000016454      0.0081692623      0.0006741915
        3      0.0000000000      0.0081692764      0.0000000000

    Force Error: 0.563671E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.018169226   90855.3  297505.4   0.000036426
   2   0.001001645   0.018169262   90743.5  297969.4  -0.000503603
   3   0.002000000   0.018169276   90816.5  299135.5   0.000014030
     ===========================================================


  TIME: GANDRA  STEP:   145.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0082179950      0.0000000000
        2      0.0000016507      0.0082180320      0.0006777355
        3      0.0000000000      0.0082180461      0.0000000000

    Force Error: 0.555638E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.018217995   91016.9  299305.5   0.000036709
   2   0.001001651   0.018218032   90904.7  299772.6  -0.000506335
   3   0.002000000   0.018218046   90978.8  300951.5   0.000014091
     ===========================================================


  TIME: GANDRA  STEP:   146.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0082660703      0.0000000000
        2      0.0000016559      0.0082661075      0.0006811432
        3      0.0000000000      0.0082661216      0.0000000000

    Force Error: 0.547613E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.018266070   91178.9  301088.7   0.000036967
   2   0.001001656   0.018266107   91066.2  301558.8  -0.000508985
   3   0.002000000   0.018266122   91141.5  302750.4   0.000014125
     ===========================================================


  TIME: GANDRA  STEP:   147.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0083134515      0.0000000000
        2      0.0000016610      0.0083134889      0.0006844161
        3      0.0000000000      0.0083135030      0.0000000000

    Force Error: 0.539601E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.018313451   91341.2  302854.4   0.000037200
   2   0.001001661   0.018313489   91228.1  303327.6  -0.000511552
   3   0.002000000   0.018313503   91304.5  304532.1   0.000014132
     ===========================================================


  TIME: GANDRA  STEP:   148.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0083601393      0.0000000000
        2      0.0000016660      0.0083601769      0.0006875558
        3      0.0000000000      0.0083601910      0.0000000000

    Force Error: 0.531608E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.018360139   91503.7  304602.5   0.000037410
   2   0.001001666   0.018360177   91390.2  305078.7  -0.000514038
   3   0.002000000   0.018360191   91467.9  306296.1   0.000014114
     ===========================================================


  TIME: GANDRA  STEP:   149.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0084061349      0.0000000000
        2      0.0000016708      0.0084061726      0.0006905641
        3      0.0000000000      0.0084061866      0.0000000000

    Force Error: 0.523639E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.018406135   91666.4  306332.6   0.000037595
   2   0.001001671   0.018406173   91552.5  306811.7  -0.000516444
   3   0.002000000   0.018406187   91631.5  308042.3   0.000014070
     ===========================================================


  TIME: GANDRA  STEP:   150.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0084514397      0.0000000000
        2      0.0000016756      0.0084514776      0.0006934429
        3      0.0000000000      0.0084514916      0.0000000000

    Force Error: 0.515697E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.018451440   91829.4  308044.4   0.000037758
   2   0.001001676   0.018451478   91715.1  308526.5  -0.000518770
   3   0.002000000   0.018451492   91795.4  309770.1   0.000014000
     ===========================================================


  TIME: GANDRA  STEP:   151.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0084960559      0.0000000000
        2      0.0000016802      0.0084960940      0.0006961942
        3      0.0000000000      0.0084961077      0.0000000000

    Force Error: 0.507788E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.018496056   91992.5  309737.8   0.000037897
   2   0.001001680   0.018496094   91877.8  310222.8  -0.000521018
   3   0.002000000   0.018496108   91959.5  311479.6   0.000013906
     ===========================================================


  TIME: GANDRA  STEP:   152.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0085399859      0.0000000000
        2      0.0000016846      0.0085400240      0.0006988202
        3      0.0000000000      0.0085400377      0.0000000000

    Force Error: 0.499916E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.018539986   92155.8  311412.4   0.000038014
   2   0.001001685   0.018540024   92040.7  311900.3  -0.000523189
   3   0.002000000   0.018540038   92123.7  313170.3   0.000013788
     ===========================================================


  TIME: GANDRA  STEP:   153.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0085832325      0.0000000000
        2      0.0000016890      0.0085832707      0.0007013230
        3      0.0000000000      0.0085832841      0.0000000000

    Force Error: 0.492085E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.018583232   92319.2  313068.0   0.000038109
   2   0.001001689   0.018583271   92203.8  313558.8  -0.000525284
   3   0.002000000   0.018583284   92288.2  314842.1   0.000013646
     ===========================================================


  TIME: GANDRA  STEP:   154.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0086257988      0.0000000000
        2      0.0000016933      0.0086258371      0.0007037049
        3      0.0000000000      0.0086258504      0.0000000000

    Force Error: 0.484299E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.018625799   92482.6  314704.5   0.000038182
   2   0.001001693   0.018625837   92366.9  315198.1  -0.000527304
   3   0.002000000   0.018625850   92452.7  316494.8   0.000013480
     ===========================================================


  TIME: GANDRA  STEP:   155.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0086676886      0.0000000000
        2      0.0000016974      0.0086677268      0.0007059684
        3      0.0000000000      0.0086677399      0.0000000000

    Force Error: 0.476561E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.018667689   92646.1  316321.7   0.000038235
   2   0.001001697   0.018667727   92530.0  316818.1  -0.000529251
   3   0.002000000   0.018667740   92617.3  318128.2   0.000013292
     ===========================================================


  TIME: GANDRA  STEP:   156.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0087089056      0.0000000000
        2      0.0000017014      0.0087089439      0.0007081158
        3      0.0000000000      0.0087089567      0.0000000000

    Force Error: 0.468875E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.018708906   92809.6  317919.3   0.000038267
   2   0.001001701   0.018708944   92693.2  318418.5  -0.000531126
   3   0.002000000   0.018708957   92782.0  319742.1   0.000013081
     ===========================================================


  TIME: GANDRA  STEP:   157.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0087494541      0.0000000000
        2      0.0000017053      0.0087494924      0.0007101497
        3      0.0000000000      0.0087495050      0.0000000000

    Force Error: 0.461243E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.018749454   92973.2  319497.4   0.000038279
   2   0.001001705   0.018749492   92856.4  319999.3  -0.000532930
   3   0.002000000   0.018749505   92946.8  321336.5   0.000012849
     ===========================================================


  TIME: GANDRA  STEP:   158.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0087893387      0.0000000000
        2      0.0000017092      0.0087893769      0.0007120726
        3      0.0000000000      0.0087893893      0.0000000000

    Force Error: 0.453670E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.018789339   93136.7  321055.7   0.000038271
   2   0.001001709   0.018789377   93019.6  321560.4  -0.000534664
   3   0.002000000   0.018789389   93111.6  322911.1   0.000012596
     ===========================================================


  TIME: GANDRA  STEP:   159.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0088285641      0.0000000000
        2      0.0000017129      0.0088286023      0.0007138871
        3      0.0000000000      0.0088286143      0.0000000000

    Force Error: 0.446157E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.018828564   93300.1  322594.2   0.000038245
   2   0.001001713   0.018828602   93182.8  323101.5  -0.000536331
   3   0.002000000   0.018828614   93276.3  324466.0   0.000012322
     ===========================================================


  TIME: GANDRA  STEP:   160.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0088671354      0.0000000000
        2      0.0000017165      0.0088671735      0.0007155957
        3      0.0000000000      0.0088671852      0.0000000000

    Force Error: 0.438708E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.018867135   93463.5  324112.8   0.000038200
   2   0.001001716   0.018867173   93345.9  324622.8  -0.000537931
   3   0.002000000   0.018867185   93441.1  326000.9   0.000012029
     ===========================================================


  TIME: GANDRA  STEP:   161.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0089050579      0.0000000000
        2      0.0000017200      0.0089050959      0.0007172013
        3      0.0000000000      0.0089051073      0.0000000000

    Force Error: 0.431325E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.018905058   93626.8  325611.4   0.000038138
   2   0.001001720   0.018905096   93508.9  326124.0  -0.000539467
   3   0.002000000   0.018905107   93605.8  327515.9   0.000011716
     ===========================================================


  TIME: GANDRA  STEP:   162.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0089423371      0.0000000000
        2      0.0000017234      0.0089423751      0.0007187063
        3      0.0000000000      0.0089423861      0.0000000000

    Force Error: 0.424009E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.018942337   93789.9  327089.9   0.000038058
   2   0.001001723   0.018942375   93671.8  327605.2  -0.000540938
   3   0.002000000   0.018942386   93770.4  329010.9   0.000011385
     ===========================================================


  TIME: GANDRA  STEP:   163.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0089789789      0.0000000000
        2      0.0000017267      0.0089790167      0.0007201136
        3      0.0000000000      0.0089790274      0.0000000000

    Force Error: 0.416764E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.018978979   93952.9  328548.4   0.000037962
   2   0.001001727   0.018979017   93834.6  329066.2  -0.000542348
   3   0.002000000   0.018979027   93934.9  330485.9   0.000011036
     ===========================================================


  TIME: GANDRA  STEP:   164.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0090149891      0.0000000000
        2      0.0000017299      0.0090150268      0.0007214257
        3      0.0000000000      0.0090150371      0.0000000000

    Force Error: 0.409590E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019014989   94115.8  329986.9   0.000037850
   2   0.001001730   0.019015027   93997.2  330507.2  -0.000543698
   3   0.002000000   0.019015037   94099.3  331940.8   0.000010670
     ===========================================================


  TIME: GANDRA  STEP:   165.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0090503738      0.0000000000
        2      0.0000017330      0.0090504114      0.0007226455
        3      0.0000000000      0.0090504213      0.0000000000

    Force Error: 0.402490E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019050374   94278.5  331405.2   0.000037722
   2   0.001001733   0.019050411   94159.7  331928.1  -0.000544988
   3   0.002000000   0.019050421   94263.6  333375.6   0.000010286
     ===========================================================


  TIME: GANDRA  STEP:   166.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0090851395      0.0000000000
        2      0.0000017361      0.0090851769      0.0007237755
        3      0.0000000000      0.0090851864      0.0000000000

    Force Error: 0.395465E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019085139   94441.1  332803.4   0.000037580
   2   0.001001736   0.019085177   94322.0  333328.8  -0.000546221
   3   0.002000000   0.019085186   94427.7  334790.4   0.000009887
     ===========================================================


  TIME: GANDRA  STEP:   167.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0091192924      0.0000000000
        2      0.0000017390      0.0091193296      0.0007248184
        3      0.0000000000      0.0091193387      0.0000000000

    Force Error: 0.388517E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019119292   94603.4  334181.6   0.000037424
   2   0.001001739   0.019119330   94484.1  334709.5  -0.000547398
   3   0.002000000   0.019119339   94591.6  336185.1   0.000009472
     ===========================================================


  TIME: GANDRA  STEP:   168.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0091528391      0.0000000000
        2      0.0000017419      0.0091528762      0.0007257769
        3      0.0000000000      0.0091528848      0.0000000000

    Force Error: 0.381647E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019152839   94765.5  335539.8   0.000037253
   2   0.001001742   0.019152876   94646.0  336070.1  -0.000548521
   3   0.002000000   0.019152885   94755.4  337559.8   0.000009043
     ===========================================================


  TIME: GANDRA  STEP:   169.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0091857864      0.0000000000
        2      0.0000017446      0.0091858233      0.0007266537
        3      0.0000000000      0.0091858314      0.0000000000

    Force Error: 0.374856E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019185786   94927.4  336878.0   0.000037070
   2   0.001001745   0.019185823   94807.7  337410.7  -0.000549591
   3   0.002000000   0.019185831   94919.0  338914.6   0.000008599
     ===========================================================


  TIME: GANDRA  STEP:   170.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0092181411      0.0000000000
        2      0.0000017473      0.0092181777      0.0007274513
        3      0.0000000000      0.0092181854      0.0000000000

    Force Error: 0.368144E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019218141   95089.0  338196.3   0.000036875
   2   0.001001747   0.019218178   94969.2  338731.4  -0.000550609
   3   0.002000000   0.019218185   95082.4  340249.5   0.000008142
     ===========================================================


  TIME: GANDRA  STEP:   171.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0092499099      0.0000000000
        2      0.0000017499      0.0092499464      0.0007281723
        3      0.0000000000      0.0092499536      0.0000000000

    Force Error: 0.361513E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019249910   95250.4  339494.8   0.000036667
   2   0.001001750   0.019249946   95130.4  340032.3  -0.000551577
   3   0.002000000   0.019249954   95245.6  341564.6   0.000007671
     ===========================================================


  TIME: GANDRA  STEP:   172.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0092811000      0.0000000000
        2      0.0000017525      0.0092811362      0.0007288194
        3      0.0000000000      0.0092811429      0.0000000000

    Force Error: 0.354964E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019281100   95411.5  340773.5   0.000036448
   2   0.001001752   0.019281136   95291.3  341313.3  -0.000552497
   3   0.002000000   0.019281143   95408.5  342859.9   0.000007188
     ===========================================================


  TIME: GANDRA  STEP:   173.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0093117183      0.0000000000
        2      0.0000017549      0.0093117543      0.0007293950
        3      0.0000000000      0.0093117605      0.0000000000

    Force Error: 0.348497E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019311718   95572.4  342032.6   0.000036218
   2   0.001001755   0.019311754   95452.0  342574.7  -0.000553370
   3   0.002000000   0.019311760   95571.3  344135.5   0.000006693
     ===========================================================


  TIME: GANDRA  STEP:   174.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0093417720      0.0000000000
        2      0.0000017573      0.0093418077      0.0007299016
        3      0.0000000000      0.0093418134      0.0000000000

    Force Error: 0.342113E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019341772   95732.9  343272.1   0.000035978
   2   0.001001757   0.019341808   95612.5  343816.5  -0.000554197
   3   0.002000000   0.019341813   95733.7  345391.6   0.000006187
     ===========================================================


  TIME: GANDRA  STEP:   175.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0093712682      0.0000000000
        2      0.0000017596      0.0093713036      0.0007303418
        3      0.0000000000      0.0093713088      0.0000000000

    Force Error: 0.335811E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019371268   95893.2  344492.1   0.000035728
   2   0.001001760   0.019371304   95772.6  345038.8  -0.000554980
   3   0.002000000   0.019371309   95896.0  346628.3   0.000005671
     ===========================================================


  TIME: GANDRA  STEP:   176.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0094002141      0.0000000000
        2      0.0000017619      0.0094002493      0.0007307178
        3      0.0000000000      0.0094002539      0.0000000000

    Force Error: 0.329593E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019400214   96053.2  345692.8   0.000035469
   2   0.001001762   0.019400249   95932.5  346241.7  -0.000555721
   3   0.002000000   0.019400254   96057.9  347845.6   0.000005144
     ===========================================================


  TIME: GANDRA  STEP:   177.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0094286169      0.0000000000
        2      0.0000017641      0.0094286519      0.0007310321
        3      0.0000000000      0.0094286559      0.0000000000

    Force Error: 0.323459E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019428617   96212.9  346874.3   0.000035202
   2   0.001001764   0.019428652   96092.1  347425.4  -0.000556420
   3   0.002000000   0.019428656   96219.6  349043.7   0.000004607
     ===========================================================


  TIME: GANDRA  STEP:   178.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0094564840      0.0000000000
        2      0.0000017662      0.0094565187      0.0007312870
        3      0.0000000000      0.0094565222      0.0000000000

    Force Error: 0.317408E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019456484   96372.3  348036.8   0.000034926
   2   0.001001766   0.019456519   96251.3  348590.1  -0.000557079
   3   0.002000000   0.019456522   96381.0  350222.8   0.000004062
     ===========================================================


  TIME: GANDRA  STEP:   179.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0094838226      0.0000000000
        2      0.0000017682      0.0094838570      0.0007314849
        3      0.0000000000      0.0094838599      0.0000000000

    Force Error: 0.311441E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019483823   96531.4  349180.3   0.000034642
   2   0.001001768   0.019483857   96410.3  349735.7  -0.000557699
   3   0.002000000   0.019483860   96542.2  351382.9   0.000003508
     ===========================================================


  TIME: GANDRA  STEP:   180.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0095106400      0.0000000000
        2      0.0000017702      0.0095106741      0.0007316278
        3      0.0000000000      0.0095106765      0.0000000000

    Force Error: 0.305557E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019510640   96690.2  350305.0   0.000034351
   2   0.001001770   0.019510674   96569.0  350862.6  -0.000558282
   3   0.002000000   0.019510676   96703.1  352524.2   0.000002946
     ===========================================================


  TIME: GANDRA  STEP:   181.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0095369435      0.0000000000
        2      0.0000017721      0.0095369773      0.0007317181
        3      0.0000000000      0.0095369791      0.0000000000

    Force Error: 0.299758E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019536944   96848.6  351411.1   0.000034053
   2   0.001001772   0.019536977   96727.3  351970.7  -0.000558828
   3   0.002000000   0.019536979   96863.7  353646.9   0.000002376
     ===========================================================


  TIME: GANDRA  STEP:   182.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0095627404      0.0000000000
        2      0.0000017740      0.0095627738      0.0007317578
        3      0.0000000000      0.0095627750      0.0000000000

    Force Error: 0.294041E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019562740   97006.7  352498.6   0.000033749
   2   0.001001774   0.019562774   96885.4  353060.4  -0.000559340
   3   0.002000000   0.019562775   97024.0  354751.1   0.000001799
     ===========================================================


  TIME: GANDRA  STEP:   183.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0095880379      0.0000000000
        2      0.0000017758      0.0095880710      0.0007317490
        3      0.0000000000      0.0095880716      0.0000000000

    Force Error: 0.288408E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019588038   97164.6  353567.9   0.000033439
   2   0.001001776   0.019588071   97043.1  354131.7  -0.000559819
   3   0.002000000   0.019588072   97184.0  355837.0   0.000001216
     ===========================================================


  TIME: GANDRA  STEP:   184.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0096128433      0.0000000000
        2      0.0000017775      0.0096128761      0.0007316939
        3      0.0000000000      0.0096128762      0.0000000000

    Force Error: 0.282858E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019612843   97322.0  354619.1   0.000033123
   2   0.001001778   0.019612876   97200.6  355184.9  -0.000560265
   3   0.002000000   0.019612876   97343.7  356904.7   0.000000626
     ===========================================================


  TIME: GANDRA  STEP:   185.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0096371639      0.0000000000
        2      0.0000017792      0.0096371964      0.0007315943
        3      0.0000000000      0.0096371958      0.0000000000

    Force Error: 0.277390E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019637164   97479.2  355652.2   0.000032803
   2   0.001001779   0.019637196   97357.7  356220.1  -0.000560679
   3   0.002000000   0.019637196   97503.1  357954.5   0.000000031
     ===========================================================


  TIME: GANDRA  STEP:   186.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0096610069      0.0000000000
        2      0.0000017808      0.0096610390      0.0007314523
        3      0.0000000000      0.0096610379      0.0000000000

    Force Error: 0.272004E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019661007   97636.1  356667.6   0.000032477
   2   0.001001781   0.019661039   97514.5  357237.4  -0.000561064
   3   0.002000000   0.019661038   97662.3  358986.4  -0.000000570
     ===========================================================


  TIME: GANDRA  STEP:   187.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0096843794      0.0000000000
        2      0.0000017824      0.0096844113      0.0007312696
        3      0.0000000000      0.0096844095      0.0000000000

    Force Error: 0.266700E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019684379   97792.6  357665.3   0.000032148
   2   0.001001782   0.019684411   97670.9  358237.1  -0.000561420
   3   0.002000000   0.019684409   97821.1  360000.7  -0.000001175
     ===========================================================


  TIME: GANDRA  STEP:   188.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0097072887      0.0000000000
        2      0.0000017839      0.0097073202      0.0007310482
        3      0.0000000000      0.0097073178      0.0000000000

    Force Error: 0.261477E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019707289   97948.8  358645.6   0.000031814
   2   0.001001784   0.019707320   97827.1  359219.3  -0.000561748
   3   0.002000000   0.019707318   97979.7  360997.6  -0.000001785
     ===========================================================


  TIME: GANDRA  STEP:   189.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0097297418      0.0000000000
        2      0.0000017854      0.0097297730      0.0007307899
        3      0.0000000000      0.0097297699      0.0000000000

    Force Error: 0.256335E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019729742   98104.7  359608.6   0.000031477
   2   0.001001785   0.019729773   97982.9  360184.3  -0.000562049
   3   0.002000000   0.019729770   98138.0  361977.2  -0.000002399
     ===========================================================


  TIME: GANDRA  STEP:   190.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0097517458      0.0000000000
        2      0.0000017868      0.0097517766      0.0007304963
        3      0.0000000000      0.0097517730      0.0000000000

    Force Error: 0.251273E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019751746   98260.2  360554.6   0.000031137
   2   0.001001787   0.019751777   98138.5  361132.2  -0.000562324
   3   0.002000000   0.019751773   98295.9  362939.7  -0.000003016
     ===========================================================


  TIME: GANDRA  STEP:   191.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0097733078      0.0000000000
        2      0.0000017882      0.0097733382      0.0007301691
        3      0.0000000000      0.0097733340      0.0000000000

    Force Error: 0.246291E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019773308   98415.4  361483.7   0.000030793
   2   0.001001788   0.019773338   98293.7  362063.1  -0.000562575
   3   0.002000000   0.019773334   98453.6  363885.3  -0.000003638
     ===========================================================


  TIME: GANDRA  STEP:   192.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0097944346      0.0000000000
        2      0.0000017895      0.0097944647      0.0007298100
        3      0.0000000000      0.0097944598      0.0000000000

    Force Error: 0.241387E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019794435   98570.4  362396.1   0.000030448
   2   0.001001790   0.019794465   98448.6  362977.4  -0.000562802
   3   0.002000000   0.019794460   98611.0  364814.2  -0.000004262
     ===========================================================


  TIME: GANDRA  STEP:   193.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0098151333      0.0000000000
        2      0.0000017908      0.0098151631      0.0007294206
        3      0.0000000000      0.0098151576      0.0000000000

    Force Error: 0.236562E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019815133   98725.0  363292.0   0.000030100
   2   0.001001791   0.019815163   98603.2  363875.2  -0.000563007
   3   0.002000000   0.019815158   98768.1  365726.7  -0.000004888
     ===========================================================


  TIME: GANDRA  STEP:   194.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0098354107      0.0000000000
        2      0.0000017920      0.0098354401      0.0007290024
        3      0.0000000000      0.0098354340      0.0000000000

    Force Error: 0.231815E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019835411   98879.2  364171.6   0.000029749
   2   0.001001792   0.019835440   98757.5  364756.6  -0.000563190
   3   0.002000000   0.019835434   98925.0  366622.8  -0.000005517
     ===========================================================


  TIME: GANDRA  STEP:   195.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0098552737      0.0000000000
        2      0.0000017932      0.0098553027      0.0007285569
        3      0.0000000000      0.0098552959      0.0000000000

    Force Error: 0.227144E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019855274   99033.2  365035.2   0.000029398
   2   0.001001793   0.019855303   98911.4  365621.9  -0.000563351
   3   0.002000000   0.019855296   99081.5  367502.8  -0.000006148
     ===========================================================


  TIME: GANDRA  STEP:   196.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0098747289      0.0000000000
        2      0.0000017944      0.0098747576      0.0007280855
        3      0.0000000000      0.0098747502      0.0000000000

    Force Error: 0.222550E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019874729   99186.9  365882.8   0.000029045
   2   0.001001794   0.019874758   99065.1  366471.3  -0.000563493
   3   0.002000000   0.019874750   99237.8  368366.9  -0.000006781
     ===========================================================


  TIME: GANDRA  STEP:   197.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0098937831      0.0000000000
        2      0.0000017955      0.0098938114      0.0007275897
        3      0.0000000000      0.0098938034      0.0000000000

    Force Error: 0.218031E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019893783   99340.2  366714.8   0.000028690
   2   0.001001795   0.019893811   99218.5  367305.0  -0.000563616
   3   0.002000000   0.019893803   99393.8  369215.3  -0.000007415
     ===========================================================


  TIME: GANDRA  STEP:   198.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0099124429      0.0000000000
        2      0.0000017965      0.0099124709      0.0007270706
        3      0.0000000000      0.0099124622      0.0000000000

    Force Error: 0.213586E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019912443   99493.2  367531.2   0.000028335
   2   0.001001797   0.019912471   99371.5  368123.2  -0.000563721
   3   0.002000000   0.019912462   99549.5  370048.1  -0.000008051
     ===========================================================


  TIME: GANDRA  STEP:   199.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0099307149      0.0000000000
        2      0.0000017976      0.0099307425      0.0007265298
        3      0.0000000000      0.0099307332      0.0000000000

    Force Error: 0.209216E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019930715   99646.0  368332.3   0.000027979
   2   0.001001798   0.019930743   99524.3  368926.0  -0.000563808
   3   0.002000000   0.019930733   99704.9  370865.7  -0.000008687
     ===========================================================


  TIME: GANDRA  STEP:   200.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0099486056      0.0000000000
        2      0.0000017986      0.0099486329      0.0007259684
        3      0.0000000000      0.0099486229      0.0000000000

    Force Error: 0.204919E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.019948606   99798.4  369118.4   0.000027623
   2   0.001001799   0.019948633   99676.7  369713.8  -0.000563878
   3   0.002000000   0.019948623   99860.1  371668.1  -0.000009324
