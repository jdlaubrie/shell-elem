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
         GandR variable 1 ...................... GNR1    =   0.110000    
         GandR variable 2 ...................... GNR2    =   0.110000    
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
        1      0.0000000000      0.0000461740      0.0000000000
        2      0.0000000178      0.0000461692     -0.0000015276
        3      0.0000000000      0.0000461623      0.0000000000

    Force Error: 0.582974E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010046174   81261.5   90097.7   0.000000000
   2   0.001000018   0.010046169   81283.9   90124.5   0.000000000
   3   0.002000000   0.010046162   81335.2   90185.6  -0.000000000
     ===========================================================


  TIME: GANDRA  STEP:     3.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0000739561      0.0000000000
        2      0.0000000294      0.0000739482     -0.0000023645
        3      0.0000000000      0.0000739370      0.0000000000

    Force Error: 0.361867E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010073956   81717.0   92569.2  -0.000004846
   2   0.001000029   0.010073948   81734.4   92602.1  -0.000004648
   3   0.002000000   0.010073937   81800.3   92692.9  -0.000006859
     ===========================================================


  TIME: GANDRA  STEP:     4.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0001072354      0.0000000000
        2      0.0000000431      0.0001072251     -0.0000029205
        3      0.0000000000      0.0001072104      0.0000000000

    Force Error: 0.434259E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010107235   80900.1   92496.2  -0.000007852
   2   0.001000043   0.010107225   80920.7   92537.9  -0.000007662
   3   0.002000000   0.010107210   81003.7   92654.2  -0.000011202
     ===========================================================


  TIME: GANDRA  STEP:     5.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0001385116      0.0000000000
        2      0.0000000561      0.0001384994     -0.0000032428
        3      0.0000000000      0.0001384821      0.0000000000

    Force Error: 0.409877E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010138512   80697.7   93279.5  -0.000010310
   2   0.001000056   0.010138499   80717.8   93326.5  -0.000010180
   3   0.002000000   0.010138482   80810.5   93460.7  -0.000014655
     ===========================================================


  TIME: GANDRA  STEP:     6.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0001704366      0.0000000000
        2      0.0000000693      0.0001704229     -0.0000032625
        3      0.0000000000      0.0001704035      0.0000000000

    Force Error: 0.418462E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010170437   80436.3   93777.9  -0.000012213
   2   0.001000069   0.010170423   80456.4   93829.4  -0.000012192
   3   0.002000000   0.010170404   80556.3   93977.5  -0.000017286
     ===========================================================


  TIME: GANDRA  STEP:     7.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0002022294      0.0000000000
        2      0.0000000824      0.0002022145     -0.0000030087
        3      0.0000000000      0.0002021936      0.0000000000

    Force Error: 0.416810E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010202229   80303.1   94373.9  -0.000013726
   2   0.001000082   0.010202215   80322.7   94428.9  -0.000013961
   3   0.002000000   0.010202194   80427.1   94587.5  -0.000019341
     ===========================================================


  TIME: GANDRA  STEP:     8.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0002341887      0.0000000000
        2      0.0000000953      0.0002341728     -0.0000024669
        3      0.0000000000      0.0002341507      0.0000000000

    Force Error: 0.418863E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010234189   80208.2   94942.9  -0.000014921
   2   0.001000095   0.010234173   80227.1   95000.7  -0.000015557
   3   0.002000000   0.010234151   80334.4   95167.5  -0.000020938
     ===========================================================


  TIME: GANDRA  STEP:     9.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0002662454      0.0000000000
        2      0.0000001081      0.0002662288     -0.0000016462
        3      0.0000000000      0.0002662057      0.0000000000

    Force Error: 0.420018E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010266245   80158.6   95525.7  -0.000015861
   2   0.001000108   0.010266229   80176.6   95585.9  -0.000017075
   3   0.002000000   0.010266206   80285.6   95759.2  -0.000022179
     ===========================================================


  TIME: GANDRA  STEP:    10.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0002984386      0.0000000000
        2      0.0000001208      0.0002984214     -0.0000005483
        3      0.0000000000      0.0002983976      0.0000000000

    Force Error: 0.421681E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010298439   80135.7   96109.3  -0.000016594
   2   0.001000121   0.010298421   80152.8   96171.6  -0.000018569
   3   0.002000000   0.010298398   80262.8   96350.3  -0.000023140
     ===========================================================


  TIME: GANDRA  STEP:    11.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0003307659      0.0000000000
        2      0.0000001334      0.0003307483      0.0000008211
        3      0.0000000000      0.0003307239      0.0000000000

    Force Error: 0.423334E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010330766   80133.9   96698.4  -0.000017154
   2   0.001000133   0.010330748   80150.0   96762.4  -0.000020083
   3   0.002000000   0.010330724   80260.4   96945.6  -0.000023876
     ===========================================================


  TIME: GANDRA  STEP:    12.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0003632338      0.0000000000
        2      0.0000001459      0.0003632159      0.0000024576
        3      0.0000000000      0.0003631911      0.0000000000

    Force Error: 0.425090E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010363234   80146.6   97291.6  -0.000017568
   2   0.001000146   0.010363216   80161.7   97357.2  -0.000021646
   3   0.002000000   0.010363191   80272.1   97544.3  -0.000024428
     ===========================================================


  TIME: GANDRA  STEP:    13.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0003958430      0.0000000000
        2      0.0000001582      0.0003958249      0.0000043560
        3      0.0000000000      0.0003957999      0.0000000000

    Force Error: 0.426872E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010395843   80170.1   97889.5  -0.000017856
   2   0.001000158   0.010395825   80184.1   97956.5  -0.000023280
   3   0.002000000   0.010395800   80294.3   98147.2  -0.000024827
     ===========================================================


  TIME: GANDRA  STEP:    14.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0004285938      0.0000000000
        2      0.0000001705      0.0004285757      0.0000065116
        3      0.0000000000      0.0004285504      0.0000000000

    Force Error: 0.428672E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010428594   80201.3   98492.0  -0.000018032
   2   0.001000171   0.010428576   80214.4   98560.5  -0.000024999
   3   0.002000000   0.010428550   80324.1   98754.2  -0.000025095
     ===========================================================


  TIME: GANDRA  STEP:    15.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0004614850      0.0000000000
        2      0.0000001827      0.0004614669      0.0000089198
        3      0.0000000000      0.0004614416      0.0000000000

    Force Error: 0.430468E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010461485   80238.3   99099.4  -0.000018107
   2   0.001000183   0.010461467   80250.3   99169.1  -0.000026815
   3   0.002000000   0.010461442   80359.6   99365.8  -0.000025250
     ===========================================================


  TIME: GANDRA  STEP:    16.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0004945148      0.0000000000
        2      0.0000001947      0.0004944968      0.0000115758
        3      0.0000000000      0.0004944716      0.0000000000

    Force Error: 0.432247E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010494515   80279.7   99711.5  -0.000018092
   2   0.001000195   0.010494497   80290.6   99782.5  -0.000028733
   3   0.002000000   0.010494472   80399.3   99982.0  -0.000025303
     ===========================================================


  TIME: GANDRA  STEP:    17.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0005276806      0.0000000000
        2      0.0000002067      0.0005276628      0.0000144753
        3      0.0000000000      0.0005276377      0.0000000000

    Force Error: 0.434000E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010527681   80324.4  100328.5  -0.000017991
   2   0.001000207   0.010527663   80334.2  100400.7  -0.000030758
   3   0.002000000   0.010527638   80442.2  100602.8  -0.000025265
     ===========================================================


  TIME: GANDRA  STEP:    18.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0005609792      0.0000000000
        2      0.0000002186      0.0005609617      0.0000176137
        3      0.0000000000      0.0005609368      0.0000000000

    Force Error: 0.435718E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010560979   80371.6  100950.3  -0.000017811
   2   0.001000219   0.010560962   80380.5  101023.7  -0.000032894
   3   0.002000000   0.010560937   80487.8  101228.4  -0.000025142
     ===========================================================


  TIME: GANDRA  STEP:    19.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0005944072      0.0000000000
        2      0.0000002304      0.0005943899      0.0000209867
        3      0.0000000000      0.0005943653      0.0000000000

    Force Error: 0.437393E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010594407   80421.0  101576.9  -0.000017556
   2   0.001000230   0.010594390   80428.8  101651.5  -0.000035141
   3   0.002000000   0.010594365   80535.4  101858.7  -0.000024940
     ===========================================================


  TIME: GANDRA  STEP:    20.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0006279604      0.0000000000
        2      0.0000002420      0.0006279436      0.0000245900
        3      0.0000000000      0.0006279193      0.0000000000

    Force Error: 0.439021E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010627960   80472.0  102208.3  -0.000017230
   2   0.001000242   0.010627944   80478.8  102284.1  -0.000037500
   3   0.002000000   0.010627919   80584.7  102493.7  -0.000024665
     ===========================================================


  TIME: GANDRA  STEP:    21.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0006616348      0.0000000000
        2      0.0000002536      0.0006616184      0.0000284196
        3      0.0000000000      0.0006615945      0.0000000000

    Force Error: 0.440597E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010661635   80524.6  102844.5  -0.000016834
   2   0.001000254   0.010661618   80530.3  102921.4  -0.000039971
   3   0.002000000   0.010661595   80635.5  103133.6  -0.000024318
     ===========================================================


  TIME: GANDRA  STEP:    22.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0006954258      0.0000000000
        2      0.0000002651      0.0006954100      0.0000324711
        3      0.0000000000      0.0006953865      0.0000000000

    Force Error: 0.442117E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010695426   80578.4  103485.4  -0.000016372
   2   0.001000265   0.010695410   80583.1  103563.5  -0.000042553
   3   0.002000000   0.010695387   80687.6  103778.1  -0.000023904
     ===========================================================


  TIME: GANDRA  STEP:    23.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0007293286      0.0000000000
        2      0.0000002765      0.0007293134      0.0000367406
        3      0.0000000000      0.0007292905      0.0000000000

    Force Error: 0.443577E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010729329   80633.3  104131.1  -0.000015845
   2   0.001000277   0.010729313   80637.0  104210.3  -0.000045245
   3   0.002000000   0.010729291   80740.8  104427.4  -0.000023425
     ===========================================================


  TIME: GANDRA  STEP:    24.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0007633384      0.0000000000
        2      0.0000002879      0.0007633238      0.0000412240
        3      0.0000000000      0.0007633015      0.0000000000

    Force Error: 0.444974E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010763338   80689.4  104781.4  -0.000015256
   2   0.001000288   0.010763324   80692.1  104861.7  -0.000048047
   3   0.002000000   0.010763301   80795.1  105081.3  -0.000022882
     ===========================================================


  TIME: GANDRA  STEP:    25.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0007974498      0.0000000000
        2      0.0000002991      0.0007974359      0.0000459172
        3      0.0000000000      0.0007974143      0.0000000000

    Force Error: 0.446307E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010797450   80746.4  105436.3  -0.000014606
   2   0.001000299   0.010797436   80748.1  105517.8  -0.000050956
   3   0.002000000   0.010797414   80850.5  105739.8  -0.000022278
     ===========================================================


  TIME: GANDRA  STEP:    26.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0008316576      0.0000000000
        2      0.0000003102      0.0008316444      0.0000508164
        3      0.0000000000      0.0008316236      0.0000000000

    Force Error: 0.447572E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010831658   80804.4  106095.8  -0.000013897
   2   0.001000310   0.010831644   80805.1  106178.4  -0.000053970
   3   0.002000000   0.010831624   80906.8  106402.8  -0.000021614
     ===========================================================


  TIME: GANDRA  STEP:    27.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0008659562      0.0000000000
        2      0.0000003213      0.0008659439      0.0000559176
        3      0.0000000000      0.0008659238      0.0000000000

    Force Error: 0.448766E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010865956   80863.3  106759.7  -0.000013129
   2   0.001000321   0.010865944   80863.0  106843.5  -0.000057090
   3   0.002000000   0.010865924   80964.0  107070.4  -0.000020892
     ===========================================================


  TIME: GANDRA  STEP:    28.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0009003399      0.0000000000
        2      0.0000003322      0.0009003285      0.0000612168
        3      0.0000000000      0.0009003092      0.0000000000

    Force Error: 0.449889E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010900340   80923.1  107428.1  -0.000012305
   2   0.001000332   0.010900328   80921.8  107513.0  -0.000060311
   3   0.002000000   0.010900309   81022.1  107742.3  -0.000020114
     ===========================================================


  TIME: GANDRA  STEP:    29.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0009348029      0.0000000000
        2      0.0000003431      0.0009347924      0.0000667103
        3      0.0000000000      0.0009347740      0.0000000000

    Force Error: 0.450937E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010934803   80983.7  108100.8  -0.000011424
   2   0.001000343   0.010934792   80981.5  108186.9  -0.000063634
   3   0.002000000   0.010934774   81081.2  108418.7  -0.000019279
     ===========================================================


  TIME: GANDRA  STEP:    30.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0009693391      0.0000000000
        2      0.0000003539      0.0009693296      0.0000723940
        3      0.0000000000      0.0009693122      0.0000000000

    Force Error: 0.451909E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010969339   81045.3  108777.7  -0.000010490
   2   0.001000354   0.010969330   81042.1  108865.0  -0.000067055
   3   0.002000000   0.010969312   81141.1  109099.3  -0.000018391
     ===========================================================


  TIME: GANDRA  STEP:    31.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0010039425      0.0000000000
        2      0.0000003645      0.0010039341      0.0000782641
        3      0.0000000000      0.0010039176      0.0000000000

    Force Error: 0.452803E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011003943   81107.7  109458.9  -0.000009503
   2   0.001000365   0.011003934   81103.5  109547.3  -0.000070573
   3   0.002000000   0.011003918   81201.9  109784.1  -0.000017449
     ===========================================================


  TIME: GANDRA  STEP:    32.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0010386067      0.0000000000
        2      0.0000003751      0.0010385994      0.0000843167
        3      0.0000000000      0.0010385839      0.0000000000

    Force Error: 0.453617E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011038607   81170.9  110144.2  -0.000008463
   2   0.001000375   0.011038599   81165.8  110233.7  -0.000074186
   3   0.002000000   0.011038584   81263.5  110473.0  -0.000016455
     ===========================================================


  TIME: GANDRA  STEP:    33.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0010733253      0.0000000000
        2      0.0000003857      0.0010733191      0.0000905481
        3      0.0000000000      0.0010733048      0.0000000000

    Force Error: 0.454349E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011073325   81235.0  110833.4  -0.000007372
   2   0.001000386   0.011073319   81229.0  110924.1  -0.000077892
   3   0.002000000   0.011073305   81326.0  111165.9  -0.000015411
     ===========================================================


  TIME: GANDRA  STEP:    34.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0011080918      0.0000000000
        2      0.0000003961      0.0011080868      0.0000969542
        3      0.0000000000      0.0011080736      0.0000000000

    Force Error: 0.454999E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011108092   81299.9  111526.6  -0.000006232
   2   0.001000396   0.011108087   81293.0  111618.5  -0.000081689
   3   0.002000000   0.011108074   81389.4  111862.8  -0.000014316
     ===========================================================


  TIME: GANDRA  STEP:    35.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0011428995      0.0000000000
        2      0.0000004064      0.0011428957      0.0001035312
        3      0.0000000000      0.0011428837      0.0000000000

    Force Error: 0.455563E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011142899   81365.7  112223.6  -0.000005042
   2   0.001000406   0.011142896   81357.8  112316.6  -0.000085575
   3   0.002000000   0.011142884   81453.6  112563.5  -0.000013173
     ===========================================================


  TIME: GANDRA  STEP:    36.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0011777415      0.0000000000
        2      0.0000004167      0.0011777390      0.0001102753
        3      0.0000000000      0.0011777282      0.0000000000

    Force Error: 0.456042E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011177742   81432.3  112924.3  -0.000003805
   2   0.001000417   0.011177739   81423.5  113018.5  -0.000089548
   3   0.002000000   0.011177728   81518.7  113267.9  -0.000011982
     ===========================================================


  TIME: GANDRA  STEP:    37.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0012126110      0.0000000000
        2      0.0000004268      0.0012126098      0.0001171825
        3      0.0000000000      0.0012126003      0.0000000000

    Force Error: 0.456432E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011212611   81499.7  113628.6  -0.000002521
   2   0.001000427   0.011212610   81490.0  113724.0  -0.000093606
   3   0.002000000   0.011212600   81584.6  113975.9  -0.000010745
     ===========================================================


  TIME: GANDRA  STEP:    38.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0012475009      0.0000000000
        2      0.0000004369      0.0012475011      0.0001242490
        3      0.0000000000      0.0012474930      0.0000000000

    Force Error: 0.456733E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011247501   81567.9  114336.4  -0.000001191
   2   0.001000437   0.011247501   81557.3  114433.0  -0.000097747
   3   0.002000000   0.011247493   81651.3  114687.5  -0.000009462
     ===========================================================


  TIME: GANDRA  STEP:    39.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0012824042      0.0000000000
        2      0.0000004469      0.0012824058      0.0001314707
        3      0.0000000000      0.0012823990      0.0000000000

    Force Error: 0.456944E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011282404   81637.0  115047.6   0.000000183
   2   0.001000447   0.011282406   81625.5  115145.4  -0.000101969
   3   0.002000000   0.011282399   81718.9  115402.4  -0.000008134
     ===========================================================


  TIME: GANDRA  STEP:    40.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0013173135      0.0000000000
        2      0.0000004568      0.0013173165      0.0001388437
        3      0.0000000000      0.0013173112      0.0000000000

    Force Error: 0.457063E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011317313   81706.9  115762.1   0.000001601
   2   0.001000457   0.011317317   81694.5  115861.0  -0.000106270
   3   0.002000000   0.011317311   81787.4  116120.6  -0.000006763
     ===========================================================


  TIME: GANDRA  STEP:    41.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0013522215      0.0000000000
        2      0.0000004666      0.0013522261      0.0001463641
        3      0.0000000000      0.0013522222      0.0000000000

    Force Error: 0.457089E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011352222   81777.6  116479.7   0.000003061
   2   0.001000467   0.011352226   81764.4  116579.8  -0.000110648
   3   0.002000000   0.011352222   81856.6  116841.9  -0.000005349
     ===========================================================


  TIME: GANDRA  STEP:    42.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0013871209      0.0000000000
        2      0.0000004763      0.0013871270      0.0001540279
        3      0.0000000000      0.0013871246      0.0000000000

    Force Error: 0.457020E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011387121   81849.1  117200.3   0.000004563
   2   0.001000476   0.011387127   81835.0  117301.5  -0.000115101
   3   0.002000000   0.011387125   81926.7  117566.3  -0.000003894
     ===========================================================


  TIME: GANDRA  STEP:    43.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0014220040      0.0000000000
        2      0.0000004860      0.0014220117      0.0001618310
        3      0.0000000000      0.0014220108      0.0000000000

    Force Error: 0.456856E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011422004   81921.5  117923.8   0.000006106
   2   0.001000486   0.011422012   81906.5  118026.2  -0.000119626
   3   0.002000000   0.011422011   81997.6  118293.5  -0.000002399
     ===========================================================


  TIME: GANDRA  STEP:    44.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0014568634      0.0000000000
        2      0.0000004955      0.0014568727      0.0001697694
        3      0.0000000000      0.0014568734      0.0000000000

    Force Error: 0.456595E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011456863   81994.6  118650.0   0.000007688
   2   0.001000496   0.011456873   81978.7  118753.6  -0.000124222
   3   0.002000000   0.011456873   82069.3  119023.5  -0.000000864
     ===========================================================


  TIME: GANDRA  STEP:    45.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0014916913      0.0000000000
        2      0.0000005050      0.0014917022      0.0001778389
        3      0.0000000000      0.0014917046      0.0000000000

    Force Error: 0.456238E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011491691   82068.5  119378.8   0.000009308
   2   0.001000505   0.011491702   82051.8  119483.6  -0.000128886
   3   0.002000000   0.011491705   82141.8  119756.0   0.000000709
     ===========================================================


  TIME: GANDRA  STEP:    46.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0015264800      0.0000000000
        2      0.0000005144      0.0015264927      0.0001860356
        3      0.0000000000      0.0015264966      0.0000000000

    Force Error: 0.455782E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011526480   82143.2  120110.1   0.000010965
   2   0.001000514   0.011526493   82125.7  120216.0  -0.000133617
   3   0.002000000   0.011526497   82215.1  120491.1   0.000002320
     ===========================================================


  TIME: GANDRA  STEP:    47.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0015612217      0.0000000000
        2      0.0000005236      0.0015612361      0.0001943553
        3      0.0000000000      0.0015612418      0.0000000000

    Force Error: 0.455227E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011561222   82218.7  120843.7   0.000012659
   2   0.001000524   0.011561236   82200.3  120950.8  -0.000138411
   3   0.002000000   0.011561242   82289.3  121228.4   0.000003966
     ===========================================================


  TIME: GANDRA  STEP:    48.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0015959087      0.0000000000
        2      0.0000005328      0.0015959248      0.0002027937
        3      0.0000000000      0.0015959322      0.0000000000

    Force Error: 0.454572E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011595909   82294.9  121579.5   0.000014388
   2   0.001000533   0.011595925   82275.8  121687.7  -0.000143268
   3   0.002000000   0.011595932   82364.2  121967.9   0.000005648
     ===========================================================


  TIME: GANDRA  STEP:    49.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0016305329      0.0000000000
        2      0.0000005419      0.0016305508      0.0002113468
        3      0.0000000000      0.0016305599      0.0000000000

    Force Error: 0.453817E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011630533   82372.0  122317.2   0.000016151
   2   0.001000542   0.011630551   82352.0  122426.6  -0.000148183
   3   0.002000000   0.011630560   82439.9  122709.4   0.000007364
     ===========================================================


  TIME: GANDRA  STEP:    50.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0016650865      0.0000000000
        2      0.0000005509      0.0016651062      0.0002200102
        3      0.0000000000      0.0016651171      0.0000000000

    Force Error: 0.452961E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011665086   82449.8  123056.8   0.000017947
   2   0.001000551   0.011665106   82428.9  123167.4  -0.000153157
   3   0.002000000   0.011665117   82516.3  123452.8   0.000009112
     ===========================================================


  TIME: GANDRA  STEP:    51.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0016995614      0.0000000000
        2      0.0000005599      0.0016995830      0.0002287797
        3      0.0000000000      0.0016995957      0.0000000000

    Force Error: 0.452003E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011699561   82528.3  123798.1   0.000019775
   2   0.001000560   0.011699583   82506.7  123909.8  -0.000158185
   3   0.002000000   0.011699596   82593.6  124197.8   0.000010893
     ===========================================================


  TIME: GANDRA  STEP:    52.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0017339498      0.0000000000
        2      0.0000005687      0.0017339733      0.0002376510
        3      0.0000000000      0.0017339878      0.0000000000

    Force Error: 0.450944E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011733950   82607.6  124540.9   0.000021634
   2   0.001000569   0.011733973   82585.2  124653.8  -0.000163266
   3   0.002000000   0.011733988   82671.6  124944.4   0.000012705
     ===========================================================


  TIME: GANDRA  STEP:    53.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0017682435      0.0000000000
        2      0.0000005775      0.0017682690      0.0002466198
        3      0.0000000000      0.0017682854      0.0000000000

    Force Error: 0.449784E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011768244   82687.6  125285.1   0.000023522
   2   0.001000577   0.011768269   82664.4  125399.1  -0.000168398
   3   0.002000000   0.011768285   82750.3  125692.3   0.000014546
     ===========================================================


  TIME: GANDRA  STEP:    54.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0018024347      0.0000000000
        2      0.0000005861      0.0018024621      0.0002556819
        3      0.0000000000      0.0018024804      0.0000000000

    Force Error: 0.448521E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011802435   82768.3  126030.5   0.000025440
   2   0.001000586   0.011802462   82744.4  126145.5  -0.000173578
   3   0.002000000   0.011802480   82829.8  126441.3   0.000016416
     ===========================================================


  TIME: GANDRA  STEP:    55.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0018365152      0.0000000000
        2      0.0000005947      0.0018365445      0.0002648327
        3      0.0000000000      0.0018365648      0.0000000000

    Force Error: 0.447156E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011836515   82849.8  126776.8   0.000027384
   2   0.001000595   0.011836545   82825.1  126893.0  -0.000178804
   3   0.002000000   0.011836565   82910.0  127191.4   0.000018313
     ===========================================================


  TIME: GANDRA  STEP:    56.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0018704771      0.0000000000
        2      0.0000006031      0.0018705084      0.0002740679
        3      0.0000000000      0.0018705306      0.0000000000

    Force Error: 0.445688E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011870477   82932.0  127524.0   0.000029355
   2   0.001000603   0.011870508   82906.5  127641.3  -0.000184073
   3   0.002000000   0.011870531   82991.0  127942.2   0.000020237
     ===========================================================


  TIME: GANDRA  STEP:    57.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0019043123      0.0000000000
        2      0.0000006115      0.0019043457      0.0002833831
        3      0.0000000000      0.0019043698      0.0000000000

    Force Error: 0.444119E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011904312   83014.8  128271.8   0.000031352
   2   0.001000612   0.011904346   82988.6  128390.3  -0.000189384
   3   0.002000000   0.011904370   83072.6  128693.7   0.000022186
     ===========================================================


  TIME: GANDRA  STEP:    58.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0019380130      0.0000000000
        2      0.0000006198      0.0019380484      0.0002927738
        3      0.0000000000      0.0019380745      0.0000000000

    Force Error: 0.442449E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011938013   83098.4  129020.1   0.000033372
   2   0.001000620   0.011938048   83071.4  129139.7  -0.000194734
   3   0.002000000   0.011938075   83155.0  129445.7   0.000024160
     ===========================================================


  TIME: GANDRA  STEP:    59.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0019715711      0.0000000000
        2      0.0000006280      0.0019716086      0.0003022356
        3      0.0000000000      0.0019716368      0.0000000000

    Force Error: 0.440677E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011971571   83182.6  129768.7   0.000035416
   2   0.001000628   0.011971609   83154.9  129889.3  -0.000200120
   3   0.002000000   0.011971637   83238.0  130197.9   0.000026156
     ===========================================================


  TIME: GANDRA  STEP:    60.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0020049788      0.0000000000
        2      0.0000006361      0.0020050184      0.0003117641
        3      0.0000000000      0.0020050486      0.0000000000

    Force Error: 0.438804E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012004979   83267.5  130517.3   0.000037481
   2   0.001000636   0.012005018   83239.0  130639.1  -0.000205540
   3   0.002000000   0.012005049   83321.7  130950.2   0.000028175
     ===========================================================


  TIME: GANDRA  STEP:    61.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0020382283      0.0000000000
        2      0.0000006441      0.0020382700      0.0003213547
        3      0.0000000000      0.0020383023      0.0000000000

    Force Error: 0.436831E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012038228   83353.0  131265.9   0.000039568
   2   0.001000644   0.012038270   83323.8  131388.7  -0.000210993
   3   0.002000000   0.012038302   83406.1  131702.4   0.000030214
     ===========================================================


  TIME: GANDRA  STEP:    62.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0020713118      0.0000000000
        2      0.0000006521      0.0020713556      0.0003310029
        3      0.0000000000      0.0020713900      0.0000000000

    Force Error: 0.434759E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012071312   83439.2  132014.1   0.000041673
   2   0.001000652   0.012071356   83409.3  132138.0  -0.000216474
   3   0.002000000   0.012071390   83491.2  132454.2   0.000032273
     ===========================================================


  TIME: GANDRA  STEP:    63.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0021042216      0.0000000000
        2      0.0000006599      0.0021042675      0.0003407043
        3      0.0000000000      0.0021043040      0.0000000000

    Force Error: 0.432588E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012104222   83526.0  132761.9   0.000043798
   2   0.001000660   0.012104268   83495.4  132886.9  -0.000221983
   3   0.002000000   0.012104304   83576.9  133205.6   0.000034350
     ===========================================================


  TIME: GANDRA  STEP:    64.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0021369500      0.0000000000
        2      0.0000006676      0.0021369981      0.0003504543
        3      0.0000000000      0.0021370367      0.0000000000

    Force Error: 0.430319E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012136950   83613.4  133509.0   0.000045939
   2   0.001000668   0.012136998   83582.1  133635.0  -0.000227516
   3   0.002000000   0.012137037   83663.2  133956.3   0.000036445
     ===========================================================


  TIME: GANDRA  STEP:    65.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0021694896      0.0000000000
        2      0.0000006753      0.0021695398      0.0003602485
        3      0.0000000000      0.0021695805      0.0000000000

    Force Error: 0.427953E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012169490   83701.4  134255.2   0.000048097
   2   0.001000675   0.012169540   83669.4  134382.3  -0.000233071
   3   0.002000000   0.012169581   83750.1  134706.0   0.000038556
     ===========================================================


  TIME: GANDRA  STEP:    66.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0022018328      0.0000000000
        2      0.0000006828      0.0022018853      0.0003700823
        3      0.0000000000      0.0022019281      0.0000000000

    Force Error: 0.425492E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012201833   83790.0  135000.3   0.000050270
   2   0.001000683   0.012201885   83757.4  135128.4  -0.000238646
   3   0.002000000   0.012201928   83837.6  135454.7   0.000040682
     ===========================================================


  TIME: GANDRA  STEP:    67.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0022339724      0.0000000000
        2      0.0000006903      0.0022340270      0.0003799512
        3      0.0000000000      0.0022340720      0.0000000000

    Force Error: 0.422937E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012233972   83879.1  135744.2   0.000052456
   2   0.001000690   0.012234027   83845.8  135873.3  -0.000244238
   3   0.002000000   0.012234072   83925.7  136202.1   0.000042823
     ===========================================================


  TIME: GANDRA  STEP:    68.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0022659011      0.0000000000
        2      0.0000006976      0.0022659579      0.0003898508
        3      0.0000000000      0.0022660051      0.0000000000

    Force Error: 0.420288E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012265901   83968.8  136486.5   0.000054656
   2   0.001000698   0.012265958   83934.9  136616.7  -0.000249846
   3   0.002000000   0.012266005   84014.4  136947.9   0.000044975
     ===========================================================


  TIME: GANDRA  STEP:    69.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0022976118      0.0000000000
        2      0.0000007049      0.0022976709      0.0003997766
        3      0.0000000000      0.0022977202      0.0000000000

    Force Error: 0.417549E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012297612   84059.1  137227.3   0.000056867
   2   0.001000705   0.012297671   84024.5  137358.4  -0.000255466
   3   0.002000000   0.012297720   84103.7  137692.1   0.000047140
     ===========================================================


  TIME: GANDRA  STEP:    70.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0023290976      0.0000000000
        2      0.0000007121      0.0023291589      0.0004097242
        3      0.0000000000      0.0023292104      0.0000000000

    Force Error: 0.414719E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012329098   84149.9  137966.1   0.000059088
   2   0.001000712   0.012329159   84114.7  138098.3  -0.000261096
   3   0.002000000   0.012329210   84193.5  138434.4   0.000049315
     ===========================================================


  TIME: GANDRA  STEP:    71.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0023603516      0.0000000000
        2      0.0000007192      0.0023604152      0.0004196891
        3      0.0000000000      0.0023604689      0.0000000000

    Force Error: 0.411801E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012360352   84241.2  138702.9   0.000061318
   2   0.001000719   0.012360415   84205.4  138836.0  -0.000266734
   3   0.002000000   0.012360469   84283.8  139174.6   0.000051499
     ===========================================================


  TIME: GANDRA  STEP:    72.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0023913672      0.0000000000
        2      0.0000007261      0.0023914330      0.0004296669
        3      0.0000000000      0.0023914889      0.0000000000

    Force Error: 0.408797E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012391367   84333.0  139437.3   0.000063557
   2   0.001000726   0.012391433   84296.5  139571.5  -0.000272377
   3   0.002000000   0.012391489   84374.7  139912.5   0.000053692
     ===========================================================


  TIME: GANDRA  STEP:    73.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0024221378      0.0000000000
        2      0.0000007330      0.0024222059      0.0004396534
        3      0.0000000000      0.0024222640      0.0000000000

    Force Error: 0.405708E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012422138   84425.3  140169.4   0.000065802
   2   0.001000733   0.012422206   84388.2  140304.5  -0.000278024
   3   0.002000000   0.012422264   84466.0  140647.9   0.000055892
     ===========================================================


  TIME: GANDRA  STEP:    74.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0024526571      0.0000000000
        2      0.0000007398      0.0024527274      0.0004496441
        3      0.0000000000      0.0024527877      0.0000000000

    Force Error: 0.402536E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012452657   84518.0  140898.7   0.000068054
   2   0.001000740   0.012452727   84480.4  141034.8  -0.000283671
   3   0.002000000   0.012452788   84557.8  141380.5   0.000058097
     ===========================================================


  TIME: GANDRA  STEP:    75.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0024829189      0.0000000000
        2      0.0000007465      0.0024829914      0.0004596348
        3      0.0000000000      0.0024830539      0.0000000000

    Force Error: 0.399284E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012482919   84611.2  141625.2   0.000070310
   2   0.001000747   0.012482991   84573.0  141762.2  -0.000289318
   3   0.002000000   0.012483054   84650.1  142110.4   0.000060308
     ===========================================================


  TIME: GANDRA  STEP:    76.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025129171      0.0000000000
        2      0.0000007532      0.0025129919      0.0004696213
        3      0.0000000000      0.0025130567      0.0000000000

    Force Error: 0.395953E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012512917   84704.9  142348.6   0.000072570
   2   0.001000753   0.012512992   84666.0  142486.6  -0.000294960
   3   0.002000000   0.012513057   84742.9  142837.1   0.000062522
     ===========================================================


  TIME: GANDRA  STEP:    77.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025426459      0.0000000000
        2      0.0000007597      0.0025427230      0.0004795993
        3      0.0000000000      0.0025427900      0.0000000000

    Force Error: 0.392547E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012542646   84798.9  143068.8   0.000074832
   2   0.001000760   0.012542723   84759.5  143207.7  -0.000300596
   3   0.002000000   0.012542790   84836.1  143560.5   0.000064739
     ===========================================================


  TIME: GANDRA  STEP:    78.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025720998      0.0000000000
        2      0.0000007661      0.0025721792      0.0004895649
        3      0.0000000000      0.0025722484      0.0000000000

    Force Error: 0.389066E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012572100   84893.4  143785.5   0.000077096
   2   0.001000766   0.012572179   84853.4  143925.3  -0.000306225
   3   0.002000000   0.012572248   84929.7  144280.5   0.000066958
     ===========================================================


  TIME: GANDRA  STEP:    79.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026012732      0.0000000000
        2      0.0000007724      0.0026013549      0.0004995139
        3      0.0000000000      0.0026014263      0.0000000000

    Force Error: 0.385515E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012601273   84988.2  144498.6   0.000079360
   2   0.001000772   0.012601355   84947.7  144639.2  -0.000311843
   3   0.002000000   0.012601426   85023.7  144996.7   0.000069177
     ===========================================================


  TIME: GANDRA  STEP:    80.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026301610      0.0000000000
        2      0.0000007787      0.0026302449      0.0005094423
        3      0.0000000000      0.0026303185      0.0000000000

    Force Error: 0.381894E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012630161   85083.5  145207.8   0.000081623
   2   0.001000779   0.012630245   85042.4  145349.4  -0.000317449
   3   0.002000000   0.012630318   85118.1  145709.2   0.000071395
     ===========================================================


  TIME: GANDRA  STEP:    81.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026587580      0.0000000000
        2      0.0000007848      0.0026588442      0.0005193463
        3      0.0000000000      0.0026589200      0.0000000000

    Force Error: 0.378207E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012658758   85179.0  145913.1   0.000083885
   2   0.001000785   0.012658844   85137.4  146055.5  -0.000323040
   3   0.002000000   0.012658920   85212.9  146417.6   0.000073612
     ===========================================================


  TIME: GANDRA  STEP:    82.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026870595      0.0000000000
        2      0.0000007909      0.0026871479      0.0005292219
        3      0.0000000000      0.0026872260      0.0000000000

    Force Error: 0.374456E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012687060   85274.9  146614.1   0.000086144
   2   0.001000791   0.012687148   85232.8  146757.4  -0.000328614
   3   0.002000000   0.012687226   85308.0  147121.7   0.000075826
     ===========================================================


  TIME: GANDRA  STEP:    83.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0027150609      0.0000000000
        2      0.0000007968      0.0027151515      0.0005390654
        3      0.0000000000      0.0027152318      0.0000000000

    Force Error: 0.370644E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012715061   85371.2  147310.8   0.000088399
   2   0.001000797   0.012715152   85328.5  147454.9  -0.000334170
   3   0.002000000   0.012715232   85403.5  147821.5   0.000078037
     ===========================================================


  TIME: GANDRA  STEP:    84.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0027427578      0.0000000000
        2      0.0000008027      0.0027428506      0.0005488732
        3      0.0000000000      0.0027429331      0.0000000000

    Force Error: 0.366774E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012742758   85467.7  148002.9   0.000090649
   2   0.001000803   0.012742851   85424.5  148147.8  -0.000339705
   3   0.002000000   0.012742933   85499.3  148516.7   0.000080243
     ===========================================================


  TIME: GANDRA  STEP:    85.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0027701459      0.0000000000
        2      0.0000008085      0.0027702411      0.0005586416
        3      0.0000000000      0.0027703257      0.0000000000

    Force Error: 0.362848E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012770146   85564.5  148690.3   0.000092894
   2   0.001000808   0.012770241   85520.8  148836.1  -0.000345218
   3   0.002000000   0.012770326   85595.4  149207.1   0.000082443
     ===========================================================


  TIME: GANDRA  STEP:    86.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0027972215      0.0000000000
        2      0.0000008141      0.0027973189      0.0005683671
        3      0.0000000000      0.0027974057      0.0000000000

    Force Error: 0.358869E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012797222   85661.6  149372.8   0.000095132
   2   0.001000814   0.012797319   85617.4  149519.4  -0.000350706
   3   0.002000000   0.012797406   85691.8  149892.6   0.000084637
     ===========================================================


  TIME: GANDRA  STEP:    87.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0028239809      0.0000000000
        2      0.0000008197      0.0028240804      0.0005780463
        3      0.0000000000      0.0028241694      0.0000000000

    Force Error: 0.354840E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012823981   85758.9  150050.3   0.000097362
   2   0.001000820   0.012824080   85714.3  150197.6  -0.000356168
   3   0.002000000   0.012824169   85788.4  150573.0   0.000086823
     ===========================================================


  TIME: GANDRA  STEP:    88.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0028504204      0.0000000000
        2      0.0000008252      0.0028505222      0.0005876759
        3      0.0000000000      0.0028506134      0.0000000000

    Force Error: 0.350765E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012850420   85856.5  150722.5   0.000099584
   2   0.001000825   0.012850522   85811.4  150870.6  -0.000361603
   3   0.002000000   0.012850613   85885.4  151248.2   0.000089001
     ===========================================================


  TIME: GANDRA  STEP:    89.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0028765370      0.0000000000
        2      0.0000008306      0.0028766410      0.0005972527
        3      0.0000000000      0.0028767343      0.0000000000

    Force Error: 0.346645E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012876537   85954.3  151389.3   0.000101796
   2   0.001000831   0.012876641   85908.7  151538.2  -0.000367007
   3   0.002000000   0.012876734   85982.5  151918.0   0.000091170
     ===========================================================


  TIME: GANDRA  STEP:    90.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0029023276      0.0000000000
        2      0.0000008360      0.0029024338      0.0006067736
        3      0.0000000000      0.0029025292      0.0000000000

    Force Error: 0.342484E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012902328   86052.3  152050.7   0.000103998
   2   0.001000836   0.012902434   86006.3  152200.3  -0.000372380
   3   0.002000000   0.012902529   86079.9  152582.2   0.000093328
     ===========================================================


  TIME: GANDRA  STEP:    91.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0029277894      0.0000000000
        2      0.0000008412      0.0029278978      0.0006162355
        3      0.0000000000      0.0029279954      0.0000000000

    Force Error: 0.338285E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012927789   86150.5  152706.3   0.000106188
   2   0.001000841   0.012927898   86104.0  152856.7  -0.000377720
   3   0.002000000   0.012927995   86177.5  153240.6   0.000095475
     ===========================================================


  TIME: GANDRA  STEP:    92.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0029529200      0.0000000000
        2      0.0000008463      0.0029530306      0.0006256357
        3      0.0000000000      0.0029531303      0.0000000000

    Force Error: 0.334050E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012952920   86248.9  153356.1   0.000108367
   2   0.001000846   0.012953031   86201.9  153507.2  -0.000383025
   3   0.002000000   0.012953130   86275.3  153893.3   0.000097611
     ===========================================================


  TIME: GANDRA  STEP:    93.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0029777171      0.0000000000
        2      0.0000008514      0.0029778298      0.0006349711
        3      0.0000000000      0.0029779316      0.0000000000

    Force Error: 0.329783E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012977717   86347.4  154000.0   0.000110533
   2   0.001000851   0.012977830   86300.0  154151.8  -0.000388294
   3   0.002000000   0.012977932   86373.2  154540.0   0.000099733
     ===========================================================


  TIME: GANDRA  STEP:    94.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0030021786      0.0000000000
        2      0.0000008563      0.0030022935      0.0006442394
        3      0.0000000000      0.0030023974      0.0000000000

    Force Error: 0.325487E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013002179   86446.0  154637.8   0.000112685
   2   0.001000856   0.013002293   86398.3  154790.3  -0.000393526
   3   0.002000000   0.013002397   86471.3  155180.5   0.000101843
     ===========================================================


  TIME: GANDRA  STEP:    95.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0030263028      0.0000000000
        2      0.0000008612      0.0030264197      0.0006534377
        3      0.0000000000      0.0030265257      0.0000000000

    Force Error: 0.321165E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013026303   86544.8  155269.3   0.000114823
   2   0.001000861   0.013026420   86496.6  155422.5  -0.000398719
   3   0.002000000   0.013026526   86569.6  155814.8   0.000103938
     ===========================================================


  TIME: GANDRA  STEP:    96.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0030500879      0.0000000000
        2      0.0000008660      0.0030502070      0.0006625638
        3      0.0000000000      0.0030503151      0.0000000000

    Force Error: 0.316819E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013050088   86643.7  155894.6   0.000116947
   2   0.001000866   0.013050207   86595.1  156048.4  -0.000403872
   3   0.002000000   0.013050315   86668.0  156442.7   0.000106019
     ===========================================================


  TIME: GANDRA  STEP:    97.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0030735328      0.0000000000
        2      0.0000008707      0.0030736540      0.0006716152
        3      0.0000000000      0.0030737641      0.0000000000

    Force Error: 0.312453E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013073533   86742.7  156513.3   0.000119054
   2   0.001000871   0.013073654   86693.7  156667.8  -0.000408983
   3   0.002000000   0.013073764   86766.5  157064.1   0.000108084
     ===========================================================


  TIME: GANDRA  STEP:    98.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0030966363      0.0000000000
        2      0.0000008753      0.0030967596      0.0006805898
        3      0.0000000000      0.0030968717      0.0000000000

    Force Error: 0.308069E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013096636   86841.7  157125.5   0.000121145
   2   0.001000875   0.013096760   86792.4  157280.7  -0.000414052
   3   0.002000000   0.013096872   86865.1  157679.0   0.000110133
     ===========================================================


  TIME: GANDRA  STEP:    99.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0031193976      0.0000000000
        2      0.0000008799      0.0031195228      0.0006894855
        3      0.0000000000      0.0031196370      0.0000000000

    Force Error: 0.303670E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013119398   86940.9  157731.0   0.000123220
   2   0.001000880   0.013119523   86891.1  157886.8  -0.000419077
   3   0.002000000   0.013119637   86963.7  158287.1   0.000112165
     ===========================================================


  TIME: GANDRA  STEP:   100.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0031418159      0.0000000000
        2      0.0000008843      0.0031419432      0.0006983002
        3      0.0000000000      0.0031420594      0.0000000000

    Force Error: 0.299260E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013141816   87040.0  158329.8   0.000125277
   2   0.001000884   0.013141943   86990.0  158486.2  -0.000424057
   3   0.002000000   0.013142059   87062.5  158888.4   0.000114179
     ===========================================================


  TIME: GANDRA  STEP:   101.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0031638908      0.0000000000
        2      0.0000008887      0.0031640202      0.0007070322
        3      0.0000000000      0.0031641383      0.0000000000

    Force Error: 0.294841E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013163891   87139.2  158921.6   0.000127315
   2   0.001000889   0.013164020   87088.8  159078.7  -0.000428991
   3   0.002000000   0.013164138   87161.3  159482.9   0.000116176
     ===========================================================


  TIME: GANDRA  STEP:   102.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0031856222      0.0000000000
        2      0.0000008930      0.0031857536      0.0007156797
        3      0.0000000000      0.0031858737      0.0000000000

    Force Error: 0.290415E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013185622   87238.5  159506.6   0.000129335
   2   0.001000893   0.013185754   87187.7  159664.2  -0.000433878
   3   0.002000000   0.013185874   87260.1  160070.3   0.000118154
     ===========================================================


  TIME: GANDRA  STEP:   103.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032070101      0.0000000000
        2      0.0000008972      0.0032071434      0.0007242411
        3      0.0000000000      0.0032072655      0.0000000000

    Force Error: 0.285987E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013207010   87337.7  160084.4   0.000131337
   2   0.001000897   0.013207143   87286.6  160242.7  -0.000438718
   3   0.002000000   0.013207265   87358.9  160650.7   0.000120114
     ===========================================================


  TIME: GANDRA  STEP:   104.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032280546      0.0000000000
        2      0.0000009013      0.0032281899      0.0007327148
        3      0.0000000000      0.0032283139      0.0000000000

    Force Error: 0.281557E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013228055   87436.9  160655.2   0.000133318
   2   0.001000901   0.013228190   87385.4  160814.0  -0.000443510
   3   0.002000000   0.013228314   87457.8  161223.9   0.000122054
     ===========================================================


  TIME: GANDRA  STEP:   105.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032487562      0.0000000000
        2      0.0000009054      0.0032488935      0.0007410995
        3      0.0000000000      0.0032490193      0.0000000000

    Force Error: 0.277130E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013248756   87536.1  161218.8   0.000135279
   2   0.001000905   0.013248893   87484.3  161378.2  -0.000448252
   3   0.002000000   0.013249019   87556.6  161790.0   0.000123974
     ===========================================================


  TIME: GANDRA  STEP:   106.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032691156      0.0000000000
        2      0.0000009093      0.0032692547      0.0007493940
        3      0.0000000000      0.0032693825      0.0000000000

    Force Error: 0.272707E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013269116   87635.2  161775.1   0.000137221
   2   0.001000909   0.013269255   87583.1  161935.0  -0.000452944
   3   0.002000000   0.013269382   87655.5  162348.7   0.000125873
     ===========================================================


  TIME: GANDRA  STEP:   107.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032891335      0.0000000000
        2      0.0000009132      0.0032892745      0.0007575969
        3      0.0000000000      0.0032894041      0.0000000000

    Force Error: 0.268291E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013289133   87734.3  162324.1   0.000139141
   2   0.001000913   0.013289275   87681.9  162484.6  -0.000457586
   3   0.002000000   0.013289404   87754.3  162900.1   0.000127752
     ===========================================================


  TIME: GANDRA  STEP:   108.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0033088109      0.0000000000
        2      0.0000009170      0.0033089539      0.0007657074
        3      0.0000000000      0.0033090853      0.0000000000

    Force Error: 0.263885E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013308811   87833.4  162865.8   0.000141040
   2   0.001000917   0.013308954   87780.7  163026.8  -0.000462177
   3   0.002000000   0.013309085   87853.0  163444.2   0.000129611
     ===========================================================


  TIME: GANDRA  STEP:   109.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0033281492      0.0000000000
        2      0.0000009208      0.0033282940      0.0007737244
        3      0.0000000000      0.0033284272      0.0000000000

    Force Error: 0.259491E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013328149   87932.3  163400.0   0.000142917
   2   0.001000921   0.013328294   87879.3  163561.6  -0.000466717
   3   0.002000000   0.013328427   87951.7  163980.8   0.000131447
     ===========================================================


  TIME: GANDRA  STEP:   110.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0033471496      0.0000000000
        2      0.0000009245      0.0033472962      0.0007816471
        3      0.0000000000      0.0033474313      0.0000000000

    Force Error: 0.255111E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013347150   88031.2  163926.8   0.000144773
   2   0.001000924   0.013347296   87977.9  164088.9  -0.000471204
   3   0.002000000   0.013347431   88050.3  164509.9   0.000133262
     ===========================================================


  TIME: GANDRA  STEP:   111.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0033658137      0.0000000000
        2      0.0000009280      0.0033659621      0.0007894748
        3      0.0000000000      0.0033660990      0.0000000000

    Force Error: 0.250748E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013365814   88130.0  164446.1   0.000146607
   2   0.001000928   0.013365962   88076.4  164608.7  -0.000475639
   3   0.002000000   0.013366099   88148.9  165031.5   0.000135055
     ===========================================================


  TIME: GANDRA  STEP:   112.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0033841433      0.0000000000
        2      0.0000009316      0.0033842935      0.0007972069
        3      0.0000000000      0.0033844321      0.0000000000

    Force Error: 0.246403E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013384143   88228.6  164957.9   0.000148418
   2   0.001000932   0.013384294   88174.8  165121.0  -0.000480022
   3   0.002000000   0.013384432   88247.3  165545.5   0.000136826
     ===========================================================


  TIME: GANDRA  STEP:   113.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0034021403      0.0000000000
        2      0.0000009350      0.0034022923      0.0008048429
        3      0.0000000000      0.0034024326      0.0000000000

    Force Error: 0.242080E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013402140   88327.1  165462.1   0.000150207
   2   0.001000935   0.013402292   88273.0  165625.7  -0.000484351
   3   0.002000000   0.013402433   88345.6  166052.0   0.000138575
     ===========================================================


  TIME: GANDRA  STEP:   114.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0034198066      0.0000000000
        2      0.0000009384      0.0034199604      0.0008123822
        3      0.0000000000      0.0034201024      0.0000000000

    Force Error: 0.237780E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013419807   88425.5  165958.8   0.000151974
   2   0.001000938   0.013419960   88371.2  166122.9  -0.000488627
   3   0.002000000   0.013420102   88443.8  166550.9   0.000140301
     ===========================================================


  TIME: GANDRA  STEP:   115.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0034371446      0.0000000000
        2      0.0000009417      0.0034373001      0.0008198247
        3      0.0000000000      0.0034374438      0.0000000000

    Force Error: 0.233505E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013437145   88523.7  166447.9   0.000153717
   2   0.001000942   0.013437300   88469.1  166612.4  -0.000492850
   3   0.002000000   0.013437444   88541.9  167042.3   0.000142004
     ===========================================================


  TIME: GANDRA  STEP:   116.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0034541566      0.0000000000
        2      0.0000009450      0.0034543137      0.0008271701
        3      0.0000000000      0.0034544591      0.0000000000

    Force Error: 0.229257E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013454157   88621.8  166929.4   0.000155438
   2   0.001000945   0.013454314   88567.0  167094.4  -0.000497019
   3   0.002000000   0.013454459   88639.8  167526.0   0.000143685
     ===========================================================


  TIME: GANDRA  STEP:   117.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0034708450      0.0000000000
        2      0.0000009481      0.0034710039      0.0008344182
        3      0.0000000000      0.0034711508      0.0000000000

    Force Error: 0.225038E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013470845   88719.6  167403.3   0.000157135
   2   0.001000948   0.013471004   88664.6  167568.8  -0.000501135
   3   0.002000000   0.013471151   88737.6  168002.1   0.000145343
     ===========================================================


  TIME: GANDRA  STEP:   118.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0034872126      0.0000000000
        2      0.0000009512      0.0034873730      0.0008415689
        3      0.0000000000      0.0034875216      0.0000000000

    Force Error: 0.220849E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013487213   88817.3  167869.7   0.000158809
   2   0.001000951   0.013487373   88762.1  168035.6  -0.000505197
   3   0.002000000   0.013487522   88835.1  168470.6   0.000146977
     ===========================================================


  TIME: GANDRA  STEP:   119.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0035032620      0.0000000000
        2      0.0000009543      0.0035034241      0.0008486224
        3      0.0000000000      0.0035035742      0.0000000000

    Force Error: 0.216693E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013503262   88914.8  168328.4   0.000160460
   2   0.001000954   0.013503424   88859.4  168494.8  -0.000509205
   3   0.002000000   0.013503574   88932.5  168931.4   0.000148588
     ===========================================================


  TIME: GANDRA  STEP:   120.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0035189961      0.0000000000
        2      0.0000009573      0.0035191598      0.0008555787
        3      0.0000000000      0.0035193115      0.0000000000

    Force Error: 0.212571E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013518996   89012.1  168779.6   0.000162088
   2   0.001000957   0.013519160   88956.4  168946.4  -0.000513160
   3   0.002000000   0.013519312   89029.7  169384.7   0.000150177
     ===========================================================


  TIME: GANDRA  STEP:   121.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0035344179      0.0000000000
        2      0.0000009602      0.0035345832      0.0008624379
        3      0.0000000000      0.0035347365      0.0000000000

    Force Error: 0.208485E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013534418   89109.1  169223.3   0.000163692
   2   0.001000960   0.013534583   89053.3  169390.5  -0.000517062
   3   0.002000000   0.013534736   89126.7  169830.5   0.000151742
     ===========================================================


  TIME: GANDRA  STEP:   122.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0035495305      0.0000000000
        2      0.0000009630      0.0035496974      0.0008692005
        3      0.0000000000      0.0035498522      0.0000000000

    Force Error: 0.204436E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013549531   89206.0  169659.4   0.000165273
   2   0.001000963   0.013549697   89149.9  169827.0  -0.000520910
   3   0.002000000   0.013549852   89223.5  170268.7   0.000153284
     ===========================================================


  TIME: GANDRA  STEP:   123.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0035643372      0.0000000000
        2      0.0000009658      0.0035645055      0.0008758666
        3      0.0000000000      0.0035646618      0.0000000000

    Force Error: 0.200425E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013564337   89302.5  170088.0   0.000166831
   2   0.001000966   0.013564506   89246.3  170256.1  -0.000524705
   3   0.002000000   0.013564662   89320.1  170699.3   0.000154803
     ===========================================================


  TIME: GANDRA  STEP:   124.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0035788411      0.0000000000
        2      0.0000009685      0.0035790110      0.0008824368
        3      0.0000000000      0.0035791688      0.0000000000

    Force Error: 0.196453E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013578841   89398.9  170509.1   0.000168366
   2   0.001000969   0.013579011   89342.4  170677.6  -0.000528447
   3   0.002000000   0.013579169   89416.4  171122.5   0.000156299
     ===========================================================


  TIME: GANDRA  STEP:   125.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0035930458      0.0000000000
        2      0.0000009712      0.0035932171      0.0008889114
        3      0.0000000000      0.0035933764      0.0000000000

    Force Error: 0.192523E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013593046   89494.9  170922.8   0.000169877
   2   0.001000971   0.013593217   89438.3  171091.7  -0.000532137
   3   0.002000000   0.013593376   89512.4  171538.2   0.000157772
     ===========================================================


  TIME: GANDRA  STEP:   126.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0036069546      0.0000000000
        2      0.0000009738      0.0036071274      0.0008952910
        3      0.0000000000      0.0036072880      0.0000000000

    Force Error: 0.188635E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013606955   89590.7  171329.1   0.000171366
   2   0.001000974   0.013607127   89533.9  171498.3  -0.000535774
   3   0.002000000   0.013607288   89608.2  171946.4   0.000159222
     ===========================================================


  TIME: GANDRA  STEP:   127.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0036205711      0.0000000000
        2      0.0000009764      0.0036207453      0.0009015762
        3      0.0000000000      0.0036209074      0.0000000000

    Force Error: 0.184790E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013620571   89686.1  171728.0   0.000172831
   2   0.001000976   0.013620745   89629.2  171897.6  -0.000539359
   3   0.002000000   0.013620907   89703.7  172347.3   0.000160649
     ===========================================================


  TIME: GANDRA  STEP:   128.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0036338989      0.0000000000
        2      0.0000009789      0.0036340746      0.0009077676
        3      0.0000000000      0.0036342380      0.0000000000

    Force Error: 0.180990E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013633899   89781.3  172119.6   0.000174274
   2   0.001000979   0.013634075   89724.2  172289.6  -0.000542892
   3   0.002000000   0.013634238   89799.0  172740.9   0.000162053
     ===========================================================


  TIME: GANDRA  STEP:   129.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0036469417      0.0000000000
        2      0.0000009813      0.0036471188      0.0009138660
        3      0.0000000000      0.0036472836      0.0000000000

    Force Error: 0.177234E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013646942   89876.2  172503.9   0.000175694
   2   0.001000981   0.013647119   89818.9  172674.3  -0.000546374
   3   0.002000000   0.013647284   89893.9  173127.1   0.000163435
     ===========================================================


  TIME: GANDRA  STEP:   130.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0036597033      0.0000000000
        2      0.0000009837      0.0036598818      0.0009198720
        3      0.0000000000      0.0036600479      0.0000000000

    Force Error: 0.173525E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013659703   89970.7  172881.0   0.000177091
   2   0.001000984   0.013659882   89913.3  173051.8  -0.000549806
   3   0.002000000   0.013660048   89988.5  173506.2   0.000164795
     ===========================================================


  TIME: GANDRA  STEP:   131.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0036721875      0.0000000000
        2      0.0000009860      0.0036723673      0.0009257865
        3      0.0000000000      0.0036725347      0.0000000000

    Force Error: 0.169863E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013672187   90064.9  173251.0   0.000178466
   2   0.001000986   0.013672367   90007.3  173422.1  -0.000553186
   3   0.002000000   0.013672535   90082.8  173878.0   0.000166132
     ===========================================================


  TIME: GANDRA  STEP:   132.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0036843980      0.0000000000
        2      0.0000009883      0.0036845792      0.0009316102
        3      0.0000000000      0.0036847479      0.0000000000

    Force Error: 0.166248E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013684398   90158.7  173613.8   0.000179819
   2   0.001000988   0.013684579   90101.1  173785.3  -0.000556517
   3   0.002000000   0.013684748   90176.8  174242.7   0.000167447
     ===========================================================


  TIME: GANDRA  STEP:   133.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0036963389      0.0000000000
        2      0.0000009906      0.0036965213      0.0009373442
        3      0.0000000000      0.0036966914      0.0000000000

    Force Error: 0.162682E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013696339   90252.2  173969.6   0.000181150
   2   0.001000991   0.013696521   90194.4  174141.4  -0.000559798
   3   0.002000000   0.013696691   90270.4  174600.4   0.000168741
     ===========================================================


  TIME: GANDRA  STEP:   134.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0037080140      0.0000000000
        2      0.0000009927      0.0037081977      0.0009429892
        3      0.0000000000      0.0037083690      0.0000000000

    Force Error: 0.159165E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013708014   90345.4  174318.4   0.000182459
   2   0.001000993   0.013708198   90287.4  174490.6  -0.000563030
   3   0.002000000   0.013708369   90363.6  174951.0   0.000170013
     ===========================================================


  TIME: GANDRA  STEP:   135.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0037194273      0.0000000000
        2      0.0000009949      0.0037196123      0.0009485462
        3      0.0000000000      0.0037197848      0.0000000000

    Force Error: 0.155697E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013719427   90438.1  174660.3   0.000183746
   2   0.001000995   0.013719612   90380.0  174832.8  -0.000566213
   3   0.002000000   0.013719785   90456.5  175294.8   0.000171263
     ===========================================================


  TIME: GANDRA  STEP:   136.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0037305828      0.0000000000
        2      0.0000009970      0.0037307691      0.0009540163
        3      0.0000000000      0.0037309428      0.0000000000

    Force Error: 0.152279E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013730583   90530.4  174995.3   0.000185012
   2   0.001000997   0.013730769   90472.3  175168.2  -0.000569348
   3   0.002000000   0.013730943   90549.0  175631.6   0.000172492
     ===========================================================


  TIME: GANDRA  STEP:   137.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0037414846      0.0000000000
        2      0.0000009990      0.0037416720      0.0009594003
        3      0.0000000000      0.0037418469      0.0000000000

    Force Error: 0.148912E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013741485   90622.4  175323.6   0.000186257
   2   0.001000999   0.013741672   90564.1  175496.8  -0.000572436
   3   0.002000000   0.013741847   90641.1  175961.7   0.000173700
     ===========================================================


  TIME: GANDRA  STEP:   138.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0037521366      0.0000000000
        2      0.0000010010      0.0037523253      0.0009646993
        3      0.0000000000      0.0037525013      0.0000000000

    Force Error: 0.145595E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013752137   90713.9  175645.1   0.000187481
   2   0.001001001   0.013752325   90655.5  175818.7  -0.000575477
   3   0.002000000   0.013752501   90732.9  176285.1   0.000174888
     ===========================================================


  TIME: GANDRA  STEP:   139.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0037625430      0.0000000000
        2      0.0000010029      0.0037627328      0.0009699144
        3      0.0000000000      0.0037629100      0.0000000000

    Force Error: 0.142330E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013762543   90805.0  175960.1   0.000188684
   2   0.001001003   0.013762733   90746.5  176134.0  -0.000578471
   3   0.002000000   0.013762910   90824.2  176601.8   0.000176055
     ===========================================================


  TIME: GANDRA  STEP:   140.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0037727078      0.0000000000
        2      0.0000010048      0.0037728988      0.0009750467
        3      0.0000000000      0.0037730771      0.0000000000

    Force Error: 0.139115E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013772708   90895.6  176268.5   0.000189866
   2   0.001001005   0.013772899   90837.1  176442.7  -0.000581419
   3   0.002000000   0.013773077   90915.0  176911.9   0.000177201
     ===========================================================


  TIME: GANDRA  STEP:   141.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0037826350      0.0000000000
        2      0.0000010067      0.0037828272      0.0009800972
        3      0.0000000000      0.0037830066      0.0000000000

    Force Error: 0.135953E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013782635   90985.8  176570.4   0.000191029
   2   0.001001007   0.013782827   90927.2  176744.9  -0.000584322
   3   0.002000000   0.013783007   91005.5  177215.6   0.000178328
     ===========================================================


  TIME: GANDRA  STEP:   142.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0037923289      0.0000000000
        2      0.0000010085      0.0037925222      0.0009850670
        3      0.0000000000      0.0037927027      0.0000000000

    Force Error: 0.132842E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013792329   91075.6  176865.9   0.000192172
   2   0.001001009   0.013792522   91016.8  177040.7  -0.000587180
   3   0.002000000   0.013792703   91095.4  177512.9   0.000179435
     ===========================================================


  TIME: GANDRA  STEP:   143.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0038017935      0.0000000000
        2      0.0000010103      0.0038019879      0.0009899573
        3      0.0000000000      0.0038021695      0.0000000000

    Force Error: 0.129783E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013801793   91164.8  177155.1   0.000193295
   2   0.001001010   0.013801988   91106.0  177330.3  -0.000589995
   3   0.002000000   0.013802169   91184.9  177803.8   0.000180523
     ===========================================================


  TIME: GANDRA  STEP:   144.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0038110328      0.0000000000
        2      0.0000010120      0.0038112283      0.0009947692
        3      0.0000000000      0.0038114109      0.0000000000

    Force Error: 0.126775E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013811033   91253.6  177438.1   0.000194399
   2   0.001001012   0.013811228   91194.7  177613.6  -0.000592765
   3   0.002000000   0.013811411   91274.0  178088.5   0.000181591
     ===========================================================


  TIME: GANDRA  STEP:   145.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0038200509      0.0000000000
        2      0.0000010137      0.0038202475      0.0009995038
        3      0.0000000000      0.0038204311      0.0000000000

    Force Error: 0.123820E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013820051   91341.9  177715.0   0.000195483
   2   0.001001014   0.013820247   91282.9  177890.7  -0.000595493
   3   0.002000000   0.013820431   91362.5  178367.1   0.000182641
     ===========================================================


  TIME: GANDRA  STEP:   146.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0038288520      0.0000000000
        2      0.0000010153      0.0038290496      0.0010041623
        3      0.0000000000      0.0038292342      0.0000000000

    Force Error: 0.120916E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013828852   91429.6  177985.8   0.000196549
   2   0.001001015   0.013829050   91370.6  178161.8  -0.000598179
   3   0.002000000   0.013829234   91450.6  178639.5   0.000183672
     ===========================================================


  TIME: GANDRA  STEP:   147.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0038374400      0.0000000000
        2      0.0000010169      0.0038376386      0.0010087459
        3      0.0000000000      0.0038378243      0.0000000000

    Force Error: 0.118065E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013837440   91516.8  178250.6   0.000197597
   2   0.001001017   0.013837639   91457.7  178426.9  -0.000600822
   3   0.002000000   0.013837824   91538.1  178906.0   0.000184685
     ===========================================================


  TIME: GANDRA  STEP:   148.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0038458190      0.0000000000
        2      0.0000010185      0.0038460186      0.0010132556
        3      0.0000000000      0.0038462053      0.0000000000

    Force Error: 0.115264E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013845819   91603.5  178509.6   0.000198626
   2   0.001001019   0.013846019   91544.4  178686.2  -0.000603425
   3   0.002000000   0.013846205   91625.1  179166.6   0.000185681
     ===========================================================


  TIME: GANDRA  STEP:   149.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0038539930      0.0000000000
        2      0.0000010201      0.0038541936      0.0010176926
        3      0.0000000000      0.0038543812      0.0000000000

    Force Error: 0.112516E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013853993   91689.7  178762.7   0.000199638
   2   0.001001020   0.013854194   91630.5  178939.6  -0.000605987
   3   0.002000000   0.013854381   91711.6  179421.4   0.000186658
     ===========================================================


  TIME: GANDRA  STEP:   150.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0038619660      0.0000000000
        2      0.0000010215      0.0038621676      0.0010220582
        3      0.0000000000      0.0038623562      0.0000000000

    Force Error: 0.109818E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013861966   91775.3  179010.2   0.000200632
   2   0.001001022   0.013862168   91716.0  179187.4  -0.000608510
   3   0.002000000   0.013862356   91797.5  179670.5   0.000187618
     ===========================================================


  TIME: GANDRA  STEP:   151.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0038697420      0.0000000000
        2      0.0000010230      0.0038699446      0.0010263534
        3      0.0000000000      0.0038701341      0.0000000000

    Force Error: 0.107172E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013869742   91860.3  179252.0   0.000201609
   2   0.001001023   0.013869945   91800.9  179429.5  -0.000610993
   3   0.002000000   0.013870134   91882.8  179913.9   0.000188561
     ===========================================================


  TIME: GANDRA  STEP:   152.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0038773250      0.0000000000
        2      0.0000010244      0.0038775285      0.0010305795
        3      0.0000000000      0.0038777189      0.0000000000

    Force Error: 0.104576E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013877325   91944.7  179488.4   0.000202568
   2   0.001001024   0.013877528   91885.3  179666.1  -0.000613437
   3   0.002000000   0.013877719   91967.6  180151.8   0.000189488
     ===========================================================


  TIME: GANDRA  STEP:   153.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0038847188      0.0000000000
        2      0.0000010258      0.0038849232      0.0010347375
        3      0.0000000000      0.0038851145      0.0000000000

    Force Error: 0.102031E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013884719   92028.5  179719.2   0.000203512
   2   0.001001026   0.013884923   91969.1  179897.2  -0.000615844
   3   0.002000000   0.013885114   92051.8  180384.3   0.000190398
     ===========================================================


  TIME: GANDRA  STEP:   154.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0038919273      0.0000000000
        2      0.0000010272      0.0038921327      0.0010388286
        3      0.0000000000      0.0038923248      0.0000000000

    Force Error: 0.995365E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013891927   92111.7  179944.8   0.000204438
   2   0.001001027   0.013892133   92052.3  180123.0  -0.000618213
   3   0.002000000   0.013892325   92135.4  180611.4   0.000191291
     ===========================================================


  TIME: GANDRA  STEP:   155.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0038989544      0.0000000000
        2      0.0000010285      0.0038991607      0.0010428540
        3      0.0000000000      0.0038993537      0.0000000000

    Force Error: 0.970915E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013898954   92194.3  180165.1   0.000205349
   2   0.001001029   0.013899161   92134.8  180343.6  -0.000620545
   3   0.002000000   0.013899354   92218.3  180833.2   0.000192169
     ===========================================================


  TIME: GANDRA  STEP:   156.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0039058040      0.0000000000
        2      0.0000010298      0.0039060111      0.0010468148
        3      0.0000000000      0.0039062050      0.0000000000

    Force Error: 0.946959E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013905804   92276.2  180380.2   0.000206244
   2   0.001001030   0.013906011   92216.7  180559.0  -0.000622841
   3   0.002000000   0.013906205   92300.7  181049.9   0.000193032
     ===========================================================


  TIME: GANDRA  STEP:   157.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0039124797      0.0000000000
        2      0.0000010311      0.0039126877      0.0010507121
        3      0.0000000000      0.0039128824      0.0000000000

    Force Error: 0.923494E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013912480   92357.6  180590.3   0.000207123
   2   0.001001031   0.013912688   92298.0  180769.3  -0.000625101
   3   0.002000000   0.013912882   92382.4  181261.4   0.000193879
     ===========================================================


  TIME: GANDRA  STEP:   158.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0039189854      0.0000000000
        2      0.0000010323      0.0039191942      0.0010545470
        3      0.0000000000      0.0039193898      0.0000000000

    Force Error: 0.900515E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013918985   92438.2  180795.3   0.000207988
   2   0.001001032   0.013919194   92378.6  180974.6  -0.000627327
   3   0.002000000   0.013919390   92463.4  181468.0   0.000194712
     ===========================================================


  TIME: GANDRA  STEP:   159.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0039253247      0.0000000000
        2      0.0000010335      0.0039255344      0.0010583207
        3      0.0000000000      0.0039257307      0.0000000000

    Force Error: 0.878018E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013925325   92518.2  180995.5   0.000208837
   2   0.001001033   0.013925534   92458.6  181175.1  -0.000629517
   3   0.002000000   0.013925731   92543.8  181669.7   0.000195530
     ===========================================================


  TIME: GANDRA  STEP:   160.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0039315013      0.0000000000
        2      0.0000010346      0.0039317118      0.0010620341
        3      0.0000000000      0.0039319090      0.0000000000

    Force Error: 0.855997E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013931501   92597.5  181190.9   0.000209672
   2   0.001001035   0.013931712   92537.9  181370.7  -0.000631674
   3   0.002000000   0.013931909   92623.5  181866.5   0.000196333
     ===========================================================


  TIME: GANDRA  STEP:   161.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0039375189      0.0000000000
        2      0.0000010358      0.0039377302      0.0010656885
        3      0.0000000000      0.0039379281      0.0000000000

    Force Error: 0.834449E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013937519   92676.1  181381.6   0.000210493
   2   0.001001036   0.013937730   92616.5  181561.6  -0.000633798
   3   0.002000000   0.013937928   92702.5  182058.7   0.000197123
     ===========================================================


  TIME: GANDRA  STEP:   162.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0039433809      0.0000000000
        2      0.0000010369      0.0039435930      0.0010692849
        3      0.0000000000      0.0039437917      0.0000000000

    Force Error: 0.813368E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013943381   92754.0  181567.6   0.000211300
   2   0.001001037   0.013943593   92694.4  181747.9  -0.000635889
   3   0.002000000   0.013943792   92780.9  182246.2   0.000197899
     ===========================================================


  TIME: GANDRA  STEP:   163.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0039490910      0.0000000000
        2      0.0000010380      0.0039493039      0.0010728243
        3      0.0000000000      0.0039495033      0.0000000000

    Force Error: 0.792748E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013949091   92831.1  181749.2   0.000212092
   2   0.001001038   0.013949304   92771.5  181929.7  -0.000637948
   3   0.002000000   0.013949503   92858.5  182429.1   0.000198661
     ===========================================================


  TIME: GANDRA  STEP:   164.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0039546526      0.0000000000
        2      0.0000010390      0.0039548663      0.0010763077
        3      0.0000000000      0.0039550664      0.0000000000

    Force Error: 0.772585E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013954653   92907.6  181926.2   0.000212872
   2   0.001001039   0.013954866   92848.0  182107.0  -0.000639975
   3   0.002000000   0.013955066   92935.4  182607.6   0.000199410
     ===========================================================


  TIME: GANDRA  STEP:   165.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0039600692      0.0000000000
        2      0.0000010401      0.0039602835      0.0010797363
        3      0.0000000000      0.0039604844      0.0000000000

    Force Error: 0.752873E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013960069   92983.3  182099.0   0.000213638
   2   0.001001040   0.013960284   92923.7  182280.0  -0.000641971
   3   0.002000000   0.013960484   93011.6  182781.7   0.000200147
     ===========================================================


  TIME: GANDRA  STEP:   166.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0039653440      0.0000000000
        2      0.0000010411      0.0039655592      0.0010831110
        3      0.0000000000      0.0039657607      0.0000000000

    Force Error: 0.733606E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013965344   93058.3  182267.4   0.000214392
   2   0.001001041   0.013965559   92998.7  182448.7  -0.000643936
   3   0.002000000   0.013965761   93087.0  182951.6   0.000200871
     ===========================================================


  TIME: GANDRA  STEP:   167.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0039704806      0.0000000000
        2      0.0000010420      0.0039706965      0.0010864328
        3      0.0000000000      0.0039708987      0.0000000000

    Force Error: 0.714778E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013970481   93132.5  182431.7   0.000215133
   2   0.001001042   0.013970696   93072.9  182613.2  -0.000645871
   3   0.002000000   0.013970899   93161.7  183117.2   0.000201582
     ===========================================================


  TIME: GANDRA  STEP:   168.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0039754821      0.0000000000
        2      0.0000010430      0.0039756987      0.0010897027
        3      0.0000000000      0.0039759017      0.0000000000

    Force Error: 0.696384E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013975482   93205.9  182591.9   0.000215862
   2   0.001001043   0.013975699   93146.3  182773.6  -0.000647777
   3   0.002000000   0.013975902   93235.6  183278.7   0.000202282
     ===========================================================


  TIME: GANDRA  STEP:   169.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0039803519      0.0000000000
        2      0.0000010439      0.0039805691      0.0010929217
        3      0.0000000000      0.0039807728      0.0000000000

    Force Error: 0.678417E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013980352   93278.6  182748.1   0.000216578
   2   0.001001044   0.013980569   93219.0  182930.0  -0.000649654
   3   0.002000000   0.013980773   93308.7  183436.3   0.000202970
     ===========================================================


  TIME: GANDRA  STEP:   170.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0039850930      0.0000000000
        2      0.0000010448      0.0039853110      0.0010960906
        3      0.0000000000      0.0039855153      0.0000000000

    Force Error: 0.660871E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013985093   93350.5  182900.3   0.000217283
   2   0.001001045   0.013985311   93290.9  183082.5  -0.000651502
   3   0.002000000   0.013985515   93381.1  183589.8   0.000203646
     ===========================================================


  TIME: GANDRA  STEP:   171.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0039897087      0.0000000000
        2      0.0000010457      0.0039899273      0.0010992106
        3      0.0000000000      0.0039901323      0.0000000000

    Force Error: 0.643741E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013989709   93421.6  183048.7   0.000217976
   2   0.001001046   0.013989927   93362.0  183231.1  -0.000653322
   3   0.002000000   0.013990132   93452.7  183739.5   0.000204311
     ===========================================================


  TIME: GANDRA  STEP:   172.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0039942020      0.0000000000
        2      0.0000010465      0.0039944213      0.0011022824
        3      0.0000000000      0.0039946269      0.0000000000

    Force Error: 0.627019E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013994202   93491.9  183193.4   0.000218658
   2   0.001001047   0.013994421   93432.3  183376.0  -0.000655114
   3   0.002000000   0.013994627   93523.5  183885.5   0.000204965
     ===========================================================


  TIME: GANDRA  STEP:   173.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0039985760      0.0000000000
        2      0.0000010474      0.0039987960      0.0011053069
        3      0.0000000000      0.0039990022      0.0000000000

    Force Error: 0.610700E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013998576   93561.4  183334.4   0.000219329
   2   0.001001047   0.013998796   93501.8  183517.2  -0.000656880
   3   0.002000000   0.013999002   93593.4  184027.7   0.000205609
     ===========================================================


  TIME: GANDRA  STEP:   174.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0040028336      0.0000000000
        2      0.0000010482      0.0040030543      0.0011082851
        3      0.0000000000      0.0040032611      0.0000000000

    Force Error: 0.594778E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014002834   93630.1  183471.7   0.000219990
   2   0.001001048   0.014003054   93570.5  183654.7  -0.000658619
   3   0.002000000   0.014003261   93662.6  184166.4   0.000206241
     ===========================================================


  TIME: GANDRA  STEP:   175.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0040069779      0.0000000000
        2      0.0000010490      0.0040071992      0.0011112179
        3      0.0000000000      0.0040074066      0.0000000000

    Force Error: 0.579245E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014006978   93697.9  183605.6   0.000220639
   2   0.001001049   0.014007199   93638.4  183788.8  -0.000660332
   3   0.002000000   0.014007407   93731.0  184301.5   0.000206864
     ===========================================================


  TIME: GANDRA  STEP:   176.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0040110116      0.0000000000
        2      0.0000010497      0.0040112335      0.0011141060
        3      0.0000000000      0.0040114416      0.0000000000

    Force Error: 0.564096E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014011012   93764.9  183736.0   0.000221279
   2   0.001001050   0.014011233   93705.4  183919.5  -0.000662019
   3   0.002000000   0.014011442   93798.5  184433.2   0.000207477
     ===========================================================


  TIME: GANDRA  STEP:   177.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0040149376      0.0000000000
        2      0.0000010505      0.0040151601      0.0011169504
        3      0.0000000000      0.0040153688      0.0000000000

    Force Error: 0.549324E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014014938   93831.1  183863.1   0.000221908
   2   0.001001050   0.014015160   93771.6  184046.7  -0.000663680
   3   0.002000000   0.014015369   93865.2  184561.4   0.000208080
     ===========================================================


  TIME: GANDRA  STEP:   178.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0040187587      0.0000000000
        2      0.0000010512      0.0040189818      0.0011197518
        3      0.0000000000      0.0040191911      0.0000000000

    Force Error: 0.534922E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014018759   93896.4  183986.9   0.000222527
   2   0.001001051   0.014018982   93837.0  184170.7  -0.000665317
   3   0.002000000   0.014019191   93931.0  184686.4   0.000208673
     ===========================================================


  TIME: GANDRA  STEP:   179.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0040224776      0.0000000000
        2      0.0000010519      0.0040227013      0.0011225110
        3      0.0000000000      0.0040229111      0.0000000000

    Force Error: 0.520885E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014022478   93960.9  184107.5   0.000223137
   2   0.001001052   0.014022701   93901.5  184291.5  -0.000666930
   3   0.002000000   0.014022911   93996.0  184808.2   0.000209257
     ===========================================================


  TIME: GANDRA  STEP:   180.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0040260970      0.0000000000
        2      0.0000010526      0.0040263213      0.0011252289
        3      0.0000000000      0.0040265317      0.0000000000

    Force Error: 0.507205E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014026097   94024.5  184225.0   0.000223738
   2   0.001001053   0.014026321   93965.2  184409.2  -0.000668518
   3   0.002000000   0.014026532   94060.1  184926.8   0.000209832
     ===========================================================


  TIME: GANDRA  STEP:   181.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0040296194      0.0000000000
        2      0.0000010533      0.0040298443      0.0011279062
        3      0.0000000000      0.0040300553      0.0000000000

    Force Error: 0.493876E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014029619   94087.3  184339.4   0.000224329
   2   0.001001053   0.014029844   94028.0  184523.8  -0.000670083
   3   0.002000000   0.014030055   94123.4  185042.4   0.000210398
     ===========================================================


  TIME: GANDRA  STEP:   182.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0040330476      0.0000000000
        2      0.0000010539      0.0040332731      0.0011305436
        3      0.0000000000      0.0040334846      0.0000000000

    Force Error: 0.480892E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014033048   94149.2  184450.8   0.000224911
   2   0.001001054   0.014033273   94090.0  184635.4  -0.000671625
   3   0.002000000   0.014033485   94185.9  185155.0   0.000210955
     ===========================================================


  TIME: GANDRA  STEP:   183.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0040363840      0.0000000000
        2      0.0000010545      0.0040366100      0.0011331419
        3      0.0000000000      0.0040368221      0.0000000000

    Force Error: 0.468247E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014036384   94210.3  184559.3   0.000225484
   2   0.001001055   0.014036610   94151.1  184744.1  -0.000673144
   3   0.002000000   0.014036822   94247.4  185264.6   0.000211504
     ===========================================================


  TIME: GANDRA  STEP:   184.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0040396310      0.0000000000
        2      0.0000010551      0.0040398576      0.0011357018
        3      0.0000000000      0.0040400702      0.0000000000

    Force Error: 0.455933E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014039631   94270.5  184665.0   0.000226049
   2   0.001001055   0.014039858   94211.3  184849.9  -0.000674640
   3   0.002000000   0.014040070   94308.1  185371.4   0.000212044
     ===========================================================


  TIME: GANDRA  STEP:   185.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0040427911      0.0000000000
        2      0.0000010557      0.0040430183      0.0011382241
        3      0.0000000000      0.0040432314      0.0000000000

    Force Error: 0.443945E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014042791   94329.8  184767.9   0.000226606
   2   0.001001056   0.014043018   94270.6  184953.0  -0.000676115
   3   0.002000000   0.014043231   94368.0  185475.4   0.000212577
     ===========================================================


  TIME: GANDRA  STEP:   186.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0040458667      0.0000000000
        2      0.0000010563      0.0040460944      0.0011407094
        3      0.0000000000      0.0040463080      0.0000000000

    Force Error: 0.432275E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014045867   94388.2  184868.1   0.000227154
   2   0.001001056   0.014046094   94329.1  185053.4  -0.000677568
   3   0.002000000   0.014046308   94426.9  185576.7   0.000213101
     ===========================================================


  TIME: GANDRA  STEP:   187.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0040488601      0.0000000000
        2      0.0000010569      0.0040490883      0.0011431584
        3      0.0000000000      0.0040493024      0.0000000000

    Force Error: 0.420919E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014048860   94445.8  184965.7   0.000227694
   2   0.001001057   0.014049088   94386.7  185151.2  -0.000679000
   3   0.002000000   0.014049302   94485.0  185675.3   0.000213618
     ===========================================================


  TIME: GANDRA  STEP:   188.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0040517735      0.0000000000
        2      0.0000010574      0.0040520022      0.0011455717
        3      0.0000000000      0.0040522169      0.0000000000

    Force Error: 0.409869E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014051773   94502.5  185060.7   0.000228227
   2   0.001001057   0.014052002   94443.5  185246.3  -0.000680410
   3   0.002000000   0.014052217   94542.3  185771.4   0.000214127
     ===========================================================


  TIME: GANDRA  STEP:   189.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0040546092      0.0000000000
        2      0.0000010579      0.0040548385      0.0011479501
        3      0.0000000000      0.0040550536      0.0000000000

    Force Error: 0.399119E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014054609   94558.3  185153.2   0.000228751
   2   0.001001058   0.014054838   94499.4  185339.0  -0.000681800
   3   0.002000000   0.014055054   94598.6  185864.9   0.000214629
     ===========================================================


  TIME: GANDRA  STEP:   190.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0040573693      0.0000000000
        2      0.0000010584      0.0040575991      0.0011502941
        3      0.0000000000      0.0040578147      0.0000000000

    Force Error: 0.388663E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014057369   94613.3  185243.3   0.000229268
   2   0.001001058   0.014057599   94554.4  185429.2  -0.000683170
   3   0.002000000   0.014057815   94654.1  185956.0   0.000215123
     ===========================================================


  TIME: GANDRA  STEP:   191.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0040600560      0.0000000000
        2      0.0000010589      0.0040602863      0.0011526044
        3      0.0000000000      0.0040605024      0.0000000000

    Force Error: 0.378495E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014060056   94667.4  185331.0   0.000229778
   2   0.001001059   0.014060286   94608.5  185517.1  -0.000684520
   3   0.002000000   0.014060502   94708.7  186044.7   0.000215611
     ===========================================================


  TIME: GANDRA  STEP:   192.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0040626714      0.0000000000
        2      0.0000010594      0.0040629022      0.0011548815
        3      0.0000000000      0.0040631187      0.0000000000

    Force Error: 0.368608E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014062671   94720.6  185416.3   0.000230281
   2   0.001001059   0.014062902   94661.7  185602.6  -0.000685850
   3   0.002000000   0.014063119   94762.4  186131.0   0.000216092
     ===========================================================


  TIME: GANDRA  STEP:   193.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0040652174      0.0000000000
        2      0.0000010599      0.0040654487      0.0011571261
        3      0.0000000000      0.0040656657      0.0000000000

    Force Error: 0.358997E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014065217   94772.9  185499.5   0.000230777
   2   0.001001060   0.014065449   94714.1  185685.9  -0.000687162
   3   0.002000000   0.014065666   94815.2  186215.1   0.000216566
     ===========================================================


  TIME: GANDRA  STEP:   194.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0040676962      0.0000000000
        2      0.0000010603      0.0040679279      0.0011593387
        3      0.0000000000      0.0040681454      0.0000000000

    Force Error: 0.349656E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014067696   94824.4  185580.4   0.000231265
   2   0.001001060   0.014067928   94765.6  185767.0  -0.000688454
   3   0.002000000   0.014068145   94867.2  186297.0   0.000217033
     ===========================================================


  TIME: GANDRA  STEP:   195.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0040701095      0.0000000000
        2      0.0000010608      0.0040703417      0.0011615200
        3      0.0000000000      0.0040705597      0.0000000000

    Force Error: 0.340578E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014070109   94875.0  185659.2   0.000231748
   2   0.001001061   0.014070342   94816.3  185845.9  -0.000689727
   3   0.002000000   0.014070560   94918.3  186376.7   0.000217494
     ===========================================================


  TIME: GANDRA  STEP:   196.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0040724593      0.0000000000
        2      0.0000010612      0.0040726920      0.0011636703
        3      0.0000000000      0.0040729104      0.0000000000

    Force Error: 0.331758E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014072459   94924.7  185735.9   0.000232223
   2   0.001001061   0.014072692   94866.1  185922.8  -0.000690982
   3   0.002000000   0.014072910   94968.6  186454.3   0.000217949
     ===========================================================


  TIME: GANDRA  STEP:   197.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0040747475      0.0000000000
        2      0.0000010616      0.0040749806      0.0011657904
        3      0.0000000000      0.0040751995      0.0000000000

    Force Error: 0.323191E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014074747   94973.6  185810.6   0.000232692
   2   0.001001062   0.014074981   94915.0  185997.6  -0.000692220
   3   0.002000000   0.014075199   95018.0  186529.9   0.000218397
     ===========================================================


  TIME: GANDRA  STEP:   198.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0040769758      0.0000000000
        2      0.0000010620      0.0040772094      0.0011678807
        3      0.0000000000      0.0040774287      0.0000000000

    Force Error: 0.314869E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014076976   95021.6  185883.3   0.000233155
   2   0.001001062   0.014077209   94963.1  186070.5  -0.000693439
   3   0.002000000   0.014077429   95066.5  186603.6   0.000218840
     ===========================================================


  TIME: GANDRA  STEP:   199.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0040791461      0.0000000000
        2      0.0000010624      0.0040793802      0.0011699418
        3      0.0000000000      0.0040795999      0.0000000000

    Force Error: 0.306788E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014079146   95068.8  185954.1   0.000233612
   2   0.001001062   0.014079380   95010.3  186141.4  -0.000694641
   3   0.002000000   0.014079600   95114.2  186675.2   0.000219277
     ===========================================================


  TIME: GANDRA  STEP:   200.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0040812600      0.0000000000
        2      0.0000010627      0.0040814945      0.0011719741
        3      0.0000000000      0.0040817146      0.0000000000

    Force Error: 0.298942E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014081260   95115.1  186023.1   0.000234062
   2   0.001001063   0.014081495   95056.7  186210.5  -0.000695826
   3   0.002000000   0.014081715   95161.0  186745.0   0.000219708
