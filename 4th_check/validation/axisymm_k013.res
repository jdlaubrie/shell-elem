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
         GandR variable 1 ...................... GNR1    =   0.130000    
         GandR variable 2 ...................... GNR2    =   0.130000    
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
        1      0.0000000000      0.0000461741      0.0000000000
        2      0.0000000178      0.0000461693     -0.0000015276
        3      0.0000000000      0.0000461624      0.0000000000

    Force Error: 0.582975E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010046174   81261.5   90097.7  -0.000000000
   2   0.001000018   0.010046169   81283.9   90124.5   0.000000000
   3   0.002000000   0.010046162   81335.2   90185.6  -0.000000000
     ===========================================================


  TIME: GANDRA  STEP:     3.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0000737732      0.0000000000
        2      0.0000000293      0.0000737653     -0.0000023578
        3      0.0000000000      0.0000737542      0.0000000000

    Force Error: 0.359570E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010073773   81733.1   92587.1  -0.000004846
   2   0.001000029   0.010073765   81750.4   92620.0  -0.000004648
   3   0.002000000   0.010073754   81816.0   92710.5  -0.000006859
     ===========================================================


  TIME: GANDRA  STEP:     4.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0001066538      0.0000000000
        2      0.0000000429      0.0001066436     -0.0000027914
        3      0.0000000000      0.0001066290      0.0000000000

    Force Error: 0.429309E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010106654   80935.5   92531.3  -0.000007832
   2   0.001000043   0.010106644   80955.9   92572.8  -0.000007644
   3   0.002000000   0.010106629   81038.5   92688.7  -0.000011174
     ===========================================================


  TIME: GANDRA  STEP:     5.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0001374514      0.0000000000
        2      0.0000000557      0.0001374393     -0.0000029576
        3      0.0000000000      0.0001374222      0.0000000000

    Force Error: 0.403940E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010137451   80744.6   93315.3  -0.000010234
   2   0.001000056   0.010137439   80764.5   93362.0  -0.000010196
   3   0.002000000   0.010137422   80856.6   93495.4  -0.000014561
     ===========================================================


  TIME: GANDRA  STEP:     6.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0001687690      0.0000000000
        2      0.0000000687      0.0001687555     -0.0000027535
        3      0.0000000000      0.0001687364      0.0000000000

    Force Error: 0.410964E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010168769   80497.3   93817.1  -0.000012068
   2   0.001000069   0.010168755   80517.2   93868.2  -0.000012258
   3   0.002000000   0.010168736   80616.4   94015.3  -0.000017113
     ===========================================================


  TIME: GANDRA  STEP:     7.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0001998610      0.0000000000
        2      0.0000000815      0.0001998465     -0.0000022249
        3      0.0000000000      0.0001998259      0.0000000000

    Force Error: 0.408192E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010199861   80375.9   94410.7  -0.000013492
   2   0.001000081   0.010199846   80395.2   94465.2  -0.000014110
   3   0.002000000   0.010199826   80498.7   94622.6  -0.000019070
     ===========================================================


  TIME: GANDRA  STEP:     8.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0002310180      0.0000000000
        2      0.0000000941      0.0002310025     -0.0000013547
        3      0.0000000000      0.0002309809      0.0000000000

    Force Error: 0.409028E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010231018   80292.9   94976.2  -0.000014581
   2   0.001000094   0.010231003   80311.5   95033.4  -0.000015813
   3   0.002000000   0.010230981   80417.9   95198.8  -0.000020553
     ===========================================================


  TIME: GANDRA  STEP:     9.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0002621776      0.0000000000
        2      0.0000001066      0.0002621617     -0.0000001569
        3      0.0000000000      0.0002621392      0.0000000000

    Force Error: 0.409054E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010262178   80254.5   95552.9  -0.000015401
   2   0.001000107   0.010262162   80272.3   95612.4  -0.000017465
   3   0.002000000   0.010262139   80380.3   95784.1  -0.000021666
     ===========================================================


  TIME: GANDRA  STEP:    10.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0002933781      0.0000000000
        2      0.0000001190      0.0002933617      0.0000013645
        3      0.0000000000      0.0002933387      0.0000000000

    Force Error: 0.409576E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010293378   80242.8   96128.7  -0.000015998
   2   0.001000119   0.010293362   80259.6   96190.1  -0.000019118
   3   0.002000000   0.010293339   80368.6   96367.1  -0.000022486
     ===========================================================


  TIME: GANDRA  STEP:    11.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0003246181      0.0000000000
        2      0.0000001312      0.0003246014      0.0000032009
        3      0.0000000000      0.0003245780      0.0000000000

    Force Error: 0.410100E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010324618   80251.9   96707.8  -0.000016409
   2   0.001000131   0.010324601   80267.7   96771.0  -0.000020815
   3   0.002000000   0.010324578   80377.1   96952.3  -0.000023068
     ===========================================================


  TIME: GANDRA  STEP:    12.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0003559034      0.0000000000
        2      0.0000001433      0.0003558867      0.0000053453
        3      0.0000000000      0.0003558630      0.0000000000

    Force Error: 0.410721E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010355903   80275.4   97289.4  -0.000016661
   2   0.001000143   0.010355887   80290.3   97354.0  -0.000022582
   3   0.002000000   0.010355863   80399.7   97539.0  -0.000023454
     ===========================================================


  TIME: GANDRA  STEP:    13.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0003872345      0.0000000000
        2      0.0000001553      0.0003872177      0.0000077901
        3      0.0000000000      0.0003871939      0.0000000000

    Force Error: 0.411361E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010387234   80309.6   97873.7  -0.000016774
   2   0.001000155   0.010387218   80323.5   97939.8  -0.000024441
   3   0.002000000   0.010387194   80432.6   98128.1  -0.000023676
     ===========================================================


  TIME: GANDRA  STEP:    14.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0004186107      0.0000000000
        2      0.0000001672      0.0004185940      0.0000105284
        3      0.0000000000      0.0004185703      0.0000000000

    Force Error: 0.412010E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010418611   80351.6   98461.0  -0.000016764
   2   0.001000167   0.010418594   80364.4   98528.3  -0.000026405
   3   0.002000000   0.010418570   80473.2   98719.6  -0.000023756
     ===========================================================


  TIME: GANDRA  STEP:    15.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0004500301      0.0000000000
        2      0.0000001789      0.0004500137      0.0000135532
        3      0.0000000000      0.0004499901      0.0000000000

    Force Error: 0.412643E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010450030   80399.2   99051.1  -0.000016644
   2   0.001000179   0.010450014   80411.0   99119.6  -0.000028482
   3   0.002000000   0.010449990   80519.3   99313.8  -0.000023712
     ===========================================================


  TIME: GANDRA  STEP:    16.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0004814899      0.0000000000
        2      0.0000001905      0.0004814738      0.0000168576
        3      0.0000000000      0.0004814505      0.0000000000

    Force Error: 0.413249E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010481490   80451.1   99644.2  -0.000016422
   2   0.001000191   0.010481474   80461.9   99713.9  -0.000030679
   3   0.002000000   0.010481450   80569.6   99910.6  -0.000023556
     ===========================================================


  TIME: GANDRA  STEP:    17.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0005129864      0.0000000000
        2      0.0000002020      0.0005129707      0.0000204353
        3      0.0000000000      0.0005129477      0.0000000000

    Force Error: 0.413815E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010512986   80506.3  100240.3  -0.000016105
   2   0.001000202   0.010512971   80516.1  100311.0  -0.000032998
   3   0.002000000   0.010512948   80623.2  100510.3  -0.000023300
     ===========================================================


  TIME: GANDRA  STEP:    18.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0005445155      0.0000000000
        2      0.0000002134      0.0005445003      0.0000242796
        3      0.0000000000      0.0005444778      0.0000000000

    Force Error: 0.414332E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010544515   80564.1  100839.2  -0.000015700
   2   0.001000213   0.010544500   80572.8  100911.1  -0.000035442
   3   0.002000000   0.010544478   80679.2  101112.8  -0.000022950
     ===========================================================


  TIME: GANDRA  STEP:    19.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0005760726      0.0000000000
        2      0.0000002247      0.0005760579      0.0000283844
        3      0.0000000000      0.0005760359      0.0000000000

    Force Error: 0.414795E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010576073   80623.8  101441.1  -0.000015211
   2   0.001000225   0.010576058   80631.5  101514.0  -0.000038011
   3   0.002000000   0.010576036   80737.3  101718.0  -0.000022512
     ===========================================================


  TIME: GANDRA  STEP:    20.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0006076526      0.0000000000
        2      0.0000002359      0.0006076386      0.0000327435
        3      0.0000000000      0.0006076172      0.0000000000

    Force Error: 0.415196E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010607653   80685.2  102045.7  -0.000014642
   2   0.001000236   0.010607639   80691.9  102119.7  -0.000040704
   3   0.002000000   0.010607617   80797.1  102326.0  -0.000021992
     ===========================================================


  TIME: GANDRA  STEP:    21.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0006392504      0.0000000000
        2      0.0000002469      0.0006392372      0.0000373507
        3      0.0000000000      0.0006392164      0.0000000000

    Force Error: 0.415533E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010639250   80748.0  102653.1  -0.000013996
   2   0.001000247   0.010639237   80753.7  102728.1  -0.000043520
   3   0.002000000   0.010639216   80858.2  102936.7  -0.000021394
     ===========================================================


  TIME: GANDRA  STEP:    22.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0006708604      0.0000000000
        2      0.0000002579      0.0006708480      0.0000422001
        3      0.0000000000      0.0006708280      0.0000000000

    Force Error: 0.415800E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010670860   80812.0  103263.2  -0.000013277
   2   0.001000258   0.010670848   80816.7  103339.2  -0.000046458
   3   0.002000000   0.010670828   80920.5  103550.1  -0.000020721
     ===========================================================


  TIME: GANDRA  STEP:    23.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0007024769      0.0000000000
        2      0.0000002687      0.0007024653      0.0000472858
        3      0.0000000000      0.0007024462      0.0000000000

    Force Error: 0.415996E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010702477   80877.1  103875.9  -0.000012487
   2   0.001000269   0.010702465   80880.8  103952.9  -0.000049515
   3   0.002000000   0.010702446   80984.0  104166.1  -0.000019976
     ===========================================================


  TIME: GANDRA  STEP:    24.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0007340940      0.0000000000
        2      0.0000002795      0.0007340833      0.0000526020
        3      0.0000000000      0.0007340650      0.0000000000

    Force Error: 0.416117E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010734094   80943.1  104491.1  -0.000011629
   2   0.001000279   0.010734083   80945.9  104569.2  -0.000052689
   3   0.002000000   0.010734065   81048.4  104784.6  -0.000019161
     ===========================================================


  TIME: GANDRA  STEP:    25.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0007657057      0.0000000000
        2      0.0000002901      0.0007656959      0.0000581427
        3      0.0000000000      0.0007656786      0.0000000000

    Force Error: 0.416162E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010765706   81010.1  105108.8  -0.000010703
   2   0.001000290   0.010765696   81011.9  105187.8  -0.000055978
   3   0.002000000   0.010765679   81113.7  105405.5  -0.000018280
     ===========================================================


  TIME: GANDRA  STEP:    26.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0007973056      0.0000000000
        2      0.0000003006      0.0007972970      0.0000639024
        3      0.0000000000      0.0007972807      0.0000000000

    Force Error: 0.416128E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010797306   81077.8  105728.7  -0.000009713
   2   0.001000301   0.010797297   81078.7  105808.8  -0.000059380
   3   0.002000000   0.010797281   81179.9  106028.7  -0.000017333
     ===========================================================


  TIME: GANDRA  STEP:    27.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0008288877      0.0000000000
        2      0.0000003111      0.0008288801      0.0000698753
        3      0.0000000000      0.0008288649      0.0000000000

    Force Error: 0.416014E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010828888   81146.4  106350.9  -0.000008661
   2   0.001000311   0.010828880   81146.4  106432.0  -0.000062891
   3   0.002000000   0.010828865   81246.9  106654.1  -0.000016323
     ===========================================================


  TIME: GANDRA  STEP:    28.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0008604453      0.0000000000
        2      0.0000003214      0.0008604390      0.0000760558
        3      0.0000000000      0.0008604249      0.0000000000

    Force Error: 0.415819E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010860445   81215.8  106975.3  -0.000007547
   2   0.001000321   0.010860439   81214.8  107057.3  -0.000066510
   3   0.002000000   0.010860425   81314.8  107281.7  -0.000015253
     ===========================================================


  TIME: GANDRA  STEP:    29.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0008919722      0.0000000000
        2      0.0000003316      0.0008919670      0.0000824382
        3      0.0000000000      0.0008919541      0.0000000000

    Force Error: 0.415540E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010891972   81286.0  107601.6  -0.000006374
   2   0.001000332   0.010891967   81284.0  107684.7  -0.000070233
   3   0.002000000   0.010891954   81383.3  107911.2  -0.000014122
     ===========================================================


  TIME: GANDRA  STEP:    30.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0009234616      0.0000000000
        2      0.0000003417      0.0009234577      0.0000890170
        3      0.0000000000      0.0009234460      0.0000000000

    Force Error: 0.415177E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010923462   81356.8  108229.8  -0.000005143
   2   0.001000342   0.010923458   81354.0  108313.9  -0.000074057
   3   0.002000000   0.010923446   81452.7  108542.7  -0.000012934
     ===========================================================


  TIME: GANDRA  STEP:    31.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0009549069      0.0000000000
        2      0.0000003517      0.0009549044      0.0000957866
        3      0.0000000000      0.0009548940      0.0000000000

    Force Error: 0.414730E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010954907   81428.4  108859.8  -0.000003857
   2   0.001000352   0.010954904   81424.7  108944.9  -0.000077980
   3   0.002000000   0.010954894   81522.8  109175.9  -0.000011690
     ===========================================================


  TIME: GANDRA  STEP:    32.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0009863015      0.0000000000
        2      0.0000003617      0.0009863004      0.0001027415
        3      0.0000000000      0.0009862913      0.0000000000

    Force Error: 0.414196E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010986301   81500.7  109491.5  -0.000002516
   2   0.001000362   0.010986300   81496.1  109577.5  -0.000082000
   3   0.002000000   0.010986291   81593.6  109810.7  -0.000010391
     ===========================================================


  TIME: GANDRA  STEP:    33.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0010176385      0.0000000000
        2      0.0000003715      0.0010176388      0.0001098761
        3      0.0000000000      0.0010176312      0.0000000000

    Force Error: 0.413576E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011017639   81573.8  110124.6  -0.000001122
   2   0.001000371   0.011017639   81568.2  110211.7  -0.000086112
   3   0.002000000   0.011017631   81665.1  110447.1  -0.000009040
     ===========================================================


  TIME: GANDRA  STEP:    34.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0010489112      0.0000000000
        2      0.0000003812      0.0010489130      0.0001171850
        3      0.0000000000      0.0010489068      0.0000000000

    Force Error: 0.412868E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011048911   81647.5  110759.2   0.000000323
   2   0.001000381   0.011048913   81641.0  110847.3  -0.000090315
   3   0.002000000   0.011048907   81737.4  111084.9  -0.000007637
     ===========================================================


  TIME: GANDRA  STEP:    35.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0010801126      0.0000000000
        2      0.0000003908      0.0010801160      0.0001246626
        3      0.0000000000      0.0010801113      0.0000000000

    Force Error: 0.412071E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011080113   81721.8  111395.1   0.000001818
   2   0.001000391   0.011080116   81714.5  111484.1  -0.000094605
   3   0.002000000   0.011080111   81810.3  111724.0  -0.000006184
     ===========================================================


  TIME: GANDRA  STEP:    36.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0011112360      0.0000000000
        2      0.0000004003      0.0011112410      0.0001323034
        3      0.0000000000      0.0011112379      0.0000000000

    Force Error: 0.411187E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011111236   81796.9  112032.0   0.000003361
   2   0.001000400   0.011111241   81788.7  112122.1  -0.000098980
   3   0.002000000   0.011111238   81883.9  112364.1  -0.000004682
     ===========================================================


  TIME: GANDRA  STEP:    37.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0011422744      0.0000000000
        2      0.0000004097      0.0011422810      0.0001401021
        3      0.0000000000      0.0011422795      0.0000000000

    Force Error: 0.410213E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011142274   81872.6  112670.0   0.000004951
   2   0.001000410   0.011142281   81863.6  112761.0  -0.000103437
   3   0.002000000   0.011142279   81958.2  113005.3  -0.000003134
     ===========================================================


  TIME: GANDRA  STEP:    38.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0011732209      0.0000000000
        2      0.0000004190      0.0011732292      0.0001480530
        3      0.0000000000      0.0011732293      0.0000000000

    Force Error: 0.409150E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011173221   81949.0  113308.8   0.000006587
   2   0.001000419   0.011173229   81939.1  113400.8  -0.000107974
   3   0.002000000   0.011173229   82033.2  113647.3  -0.000001541
     ===========================================================


  TIME: GANDRA  STEP:    39.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0012040686      0.0000000000
        2      0.0000004282      0.0012040786      0.0001561508
        3      0.0000000000      0.0012040804      0.0000000000

    Force Error: 0.407997E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011204069   82026.0  113948.4   0.000008266
   2   0.001000428   0.011204079   82015.3  114041.3  -0.000112586
   3   0.002000000   0.011204080   82108.8  114290.0   0.000000097
     ===========================================================


  TIME: GANDRA  STEP:    40.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0012348105      0.0000000000
        2      0.0000004373      0.0012348222      0.0001643901
        3      0.0000000000      0.0012348257      0.0000000000

    Force Error: 0.406755E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011234810   82103.6  114588.5   0.000009988
   2   0.001000437   0.011234822   82092.1  114682.4  -0.000117272
   3   0.002000000   0.011234826   82185.1  114933.3   0.000001777
     ===========================================================


  TIME: GANDRA  STEP:    41.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0012654397      0.0000000000
        2      0.0000004463      0.0012654532      0.0001727652
        3      0.0000000000      0.0012654585      0.0000000000

    Force Error: 0.405423E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011265440   82181.9  115229.0   0.000011750
   2   0.001000446   0.011265453   82169.6  115323.9  -0.000122028
   3   0.002000000   0.011265459   82262.0  115577.0   0.000003498
     ===========================================================


  TIME: GANDRA  STEP:    42.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0012959493      0.0000000000
        2      0.0000004553      0.0012959647      0.0001812710
        3      0.0000000000      0.0012959717      0.0000000000

    Force Error: 0.404001E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011295949   82260.8  115869.8   0.000013552
   2   0.001000455   0.011295965   82247.6  115965.7  -0.000126852
   3   0.002000000   0.011295972   82339.6  116220.9   0.000005259
     ===========================================================


  TIME: GANDRA  STEP:    43.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0013263324      0.0000000000
        2      0.0000004641      0.0013263496      0.0001899018
        3      0.0000000000      0.0013263585      0.0000000000

    Force Error: 0.402489E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011326332   82340.2  116510.8   0.000015392
   2   0.001000464   0.011326350   82326.3  116607.5  -0.000131741
   3   0.002000000   0.011326359   82417.7  116865.0   0.000007057
     ===========================================================


  TIME: GANDRA  STEP:    44.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0013565821      0.0000000000
        2      0.0000004728      0.0013566013      0.0001986522
        3      0.0000000000      0.0013566120      0.0000000000

    Force Error: 0.400889E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011356582   82420.3  117151.6   0.000017269
   2   0.001000473   0.011356601   82405.6  117249.4  -0.000136692
   3   0.002000000   0.011356612   82496.5  117509.0   0.000008893
     ===========================================================


  TIME: GANDRA  STEP:    45.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0013866916      0.0000000000
        2      0.0000004814      0.0013867127      0.0002075170
        3      0.0000000000      0.0013867254      0.0000000000

    Force Error: 0.399199E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011386692   82501.0  117792.3   0.000019180
   2   0.001000481   0.011386713   82485.4  117891.0  -0.000141702
   3   0.002000000   0.011386725   82575.9  118152.8   0.000010763
     ===========================================================


  TIME: GANDRA  STEP:    46.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0014166541      0.0000000000
        2      0.0000004899      0.0014166772      0.0002164905
        3      0.0000000000      0.0014166918      0.0000000000

    Force Error: 0.397421E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011416654   82582.2  118432.7   0.000021126
   2   0.001000490   0.011416677   82565.9  118532.3  -0.000146769
   3   0.002000000   0.011416692   82655.8  118796.2   0.000012668
     ===========================================================


  TIME: GANDRA  STEP:    47.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0014464629      0.0000000000
        2      0.0000004983      0.0014464880      0.0002255676
        3      0.0000000000      0.0014465046      0.0000000000

    Force Error: 0.395554E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011446463   82663.9  119072.5   0.000023103
   2   0.001000498   0.011446488   82646.9  119173.1  -0.000151889
   3   0.002000000   0.011446505   82736.3  119439.1   0.000014604
     ===========================================================


  TIME: GANDRA  STEP:    48.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0014761113      0.0000000000
        2      0.0000005066      0.0014761385      0.0002347427
        3      0.0000000000      0.0014761571      0.0000000000

    Force Error: 0.393600E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011476111   82746.3  119711.7   0.000025111
   2   0.001000507   0.011476138   82728.4  119813.2  -0.000157060
   3   0.002000000   0.011476157   82817.4  120081.4   0.000016572
     ===========================================================


  TIME: GANDRA  STEP:    49.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0015055927      0.0000000000
        2      0.0000005149      0.0015056219      0.0002440105
        3      0.0000000000      0.0015056425      0.0000000000

    Force Error: 0.391560E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011505593   82829.1  120350.1   0.000027149
   2   0.001000515   0.011505622   82810.5  120452.5  -0.000162279
   3   0.002000000   0.011505643   82899.0  120722.8   0.000018569
     ===========================================================


  TIME: GANDRA  STEP:    50.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0015349006      0.0000000000
        2      0.0000005230      0.0015349319      0.0002533656
        3      0.0000000000      0.0015349545      0.0000000000

    Force Error: 0.389433E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011534901   82912.4  120987.4   0.000029214
   2   0.001000523   0.011534932   82893.2  121090.7  -0.000167543
   3   0.002000000   0.011534955   82981.2  121363.2   0.000020594
     ===========================================================


  TIME: GANDRA  STEP:    51.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0015640284      0.0000000000
        2      0.0000005310      0.0015640618      0.0002628027
        3      0.0000000000      0.0015640866      0.0000000000

    Force Error: 0.387222E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011564028   82996.3  121623.7   0.000031306
   2   0.001000531   0.011564062   82976.3  121727.8  -0.000172849
   3   0.002000000   0.011564087   83063.9  122002.4   0.000022646
     ===========================================================


  TIME: GANDRA  STEP:    52.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0015929699      0.0000000000
        2      0.0000005389      0.0015930055      0.0002723166
        3      0.0000000000      0.0015930323      0.0000000000

    Force Error: 0.384926E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011592970   83080.7  122258.6   0.000033424
   2   0.001000539   0.011593005   83059.9  122363.6  -0.000178195
   3   0.002000000   0.011593032   83147.0  122640.3   0.000024724
     ===========================================================


  TIME: GANDRA  STEP:    53.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0016217187      0.0000000000
        2      0.0000005468      0.0016217565      0.0002819019
        3      0.0000000000      0.0016217854      0.0000000000

    Force Error: 0.382548E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011621719   83165.5  122892.0   0.000035564
   2   0.001000547   0.011621756   83144.0  122997.9  -0.000183577
   3   0.002000000   0.011621785   83230.7  123276.7   0.000026825
     ===========================================================


  TIME: GANDRA  STEP:    54.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0016502688      0.0000000000
        2      0.0000005545      0.0016503087      0.0002915533
        3      0.0000000000      0.0016503398      0.0000000000

    Force Error: 0.380088E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011650269   83250.8  123523.8   0.000037728
   2   0.001000555   0.011650309   83228.6  123630.6  -0.000188994
   3   0.002000000   0.011650340   83314.9  123911.4   0.000028948
     ===========================================================


  TIME: GANDRA  STEP:    55.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0016786139      0.0000000000
        2      0.0000005621      0.0016786560      0.0003012657
        3      0.0000000000      0.0016786893      0.0000000000

    Force Error: 0.377547E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011678614   83336.5  124153.7   0.000039912
   2   0.001000562   0.011678656   83313.7  124261.5  -0.000194441
   3   0.002000000   0.011678689   83399.5  124544.3   0.000031093
     ===========================================================


  TIME: GANDRA  STEP:    56.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0017067483      0.0000000000
        2      0.0000005697      0.0017067926      0.0003110339
        3      0.0000000000      0.0017068281      0.0000000000

    Force Error: 0.374928E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011706748   83422.7  124781.7   0.000042115
   2   0.001000570   0.011706793   83399.2  124890.3  -0.000199917
   3   0.002000000   0.011706828   83484.5  125175.2   0.000033257
     ===========================================================


  TIME: GANDRA  STEP:    57.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0017346661      0.0000000000
        2      0.0000005771      0.0017347126      0.0003208526
        3      0.0000000000      0.0017347503      0.0000000000

    Force Error: 0.372231E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011734666   83509.3  125407.6   0.000044337
   2   0.001000577   0.011734713   83485.1  125517.0  -0.000205419
   3   0.002000000   0.011734750   83570.0  125803.9   0.000035440
     ===========================================================


  TIME: GANDRA  STEP:    58.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0017623615      0.0000000000
        2      0.0000005845      0.0017624104      0.0003307168
        3      0.0000000000      0.0017624502      0.0000000000

    Force Error: 0.369458E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011762362   83596.2  126031.2   0.000046575
   2   0.001000584   0.011762410   83571.4  126141.5  -0.000210944
   3   0.002000000   0.011762450   83656.0  126430.4   0.000037639
     ===========================================================


  TIME: GANDRA  STEP:    59.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0017898292      0.0000000000
        2      0.0000005917      0.0017898803      0.0003406214
        3      0.0000000000      0.0017899224      0.0000000000

    Force Error: 0.366611E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011789829   83683.6  126652.3   0.000048829
   2   0.001000592   0.011789880   83658.1  126763.4  -0.000216489
   3   0.002000000   0.011789922   83742.3  127054.3   0.000039854
     ===========================================================


  TIME: GANDRA  STEP:    60.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0018170637      0.0000000000
        2      0.0000005989      0.0018171170      0.0003505614
        3      0.0000000000      0.0018171614      0.0000000000

    Force Error: 0.363692E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011817064   83771.4  127270.8   0.000051096
   2   0.001000599   0.011817117   83745.2  127382.7  -0.000222052
   3   0.002000000   0.011817161   83829.0  127675.6   0.000042083
     ===========================================================


  TIME: GANDRA  STEP:    61.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0018440597      0.0000000000
        2      0.0000006059      0.0018441153      0.0003605318
        3      0.0000000000      0.0018441619      0.0000000000

    Force Error: 0.360701E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011844060   83859.5  127886.6   0.000053377
   2   0.001000606   0.011844115   83832.7  127999.3  -0.000227630
   3   0.002000000   0.011844162   83916.1  128294.1   0.000044326
     ===========================================================


  TIME: GANDRA  STEP:    62.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0018708121      0.0000000000
        2      0.0000006129      0.0018708701      0.0003705277
        3      0.0000000000      0.0018709189      0.0000000000

    Force Error: 0.357642E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011870812   83947.9  128499.3   0.000055669
   2   0.001000613   0.011870870   83920.5  128612.9  -0.000233221
   3   0.002000000   0.011870919   84003.5  128909.7   0.000046580
     ===========================================================


  TIME: GANDRA  STEP:    63.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0018973161      0.0000000000
        2      0.0000006198      0.0018973764      0.0003805443
        3      0.0000000000      0.0018974275      0.0000000000

    Force Error: 0.354516E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011897316   84036.7  129109.0   0.000057971
   2   0.001000620   0.011897376   84008.7  129223.3  -0.000238821
   3   0.002000000   0.011897428   84091.3  129522.1   0.000048844
     ===========================================================


  TIME: GANDRA  STEP:    64.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0019235669      0.0000000000
        2      0.0000006265      0.0019236295      0.0003905768
        3      0.0000000000      0.0019236829      0.0000000000

    Force Error: 0.351326E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011923567   84125.8  129715.5   0.000060282
   2   0.001000627   0.011923629   84097.1  129830.6  -0.000244429
   3   0.002000000   0.011923683   84179.4  130131.2   0.000051117
     ===========================================================


  TIME: GANDRA  STEP:    65.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0019495599      0.0000000000
        2      0.0000006332      0.0019496248      0.0004006204
        3      0.0000000000      0.0019496805      0.0000000000

    Force Error: 0.348072E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011949560   84215.1  130318.5   0.000062600
   2   0.001000633   0.011949625   84185.9  130434.4  -0.000250042
   3   0.002000000   0.011949681   84267.8  130736.9   0.000053398
     ===========================================================


  TIME: GANDRA  STEP:    66.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0019752907      0.0000000000
        2      0.0000006398      0.0019753580      0.0004106705
        3      0.0000000000      0.0019754159      0.0000000000

    Force Error: 0.344758E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011975291   84304.8  130918.0   0.000064925
   2   0.001000640   0.011975358   84275.0  131034.6  -0.000255657
   3   0.002000000   0.011975416   84356.5  131339.1   0.000055685
     ===========================================================


  TIME: GANDRA  STEP:    67.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0020007551      0.0000000000
        2      0.0000006463      0.0020008247      0.0004207226
        3      0.0000000000      0.0020008850      0.0000000000

    Force Error: 0.341386E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012000755   84394.7  131513.7   0.000067254
   2   0.001000646   0.012000825   84364.3  131631.1  -0.000261272
   3   0.002000000   0.012000885   84445.5  131937.4   0.000057978
     ===========================================================


  TIME: GANDRA  STEP:    68.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0020259491      0.0000000000
        2      0.0000006527      0.0020260210      0.0004307721
        3      0.0000000000      0.0020260836      0.0000000000

    Force Error: 0.337958E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012025949   84484.8  132105.6   0.000069587
   2   0.001000653   0.012026021   84453.9  132223.8  -0.000266885
   3   0.002000000   0.012026084   84534.8  132531.9   0.000060275
     ===========================================================


  TIME: GANDRA  STEP:    69.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0020508688      0.0000000000
        2      0.0000006590      0.0020509430      0.0004408147
        3      0.0000000000      0.0020510079      0.0000000000

    Force Error: 0.334477E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012050869   84575.2  132693.6   0.000071923
   2   0.001000659   0.012050943   84543.7  132812.4  -0.000272493
   3   0.002000000   0.012051008   84624.3  133122.4   0.000062574
     ===========================================================


  TIME: GANDRA  STEP:    70.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0020755106      0.0000000000
        2      0.0000006652      0.0020755872      0.0004508459
        3      0.0000000000      0.0020756544      0.0000000000

    Force Error: 0.330944E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012075511   84665.8  133277.3   0.000074261
   2   0.001000665   0.012075587   84633.7  133396.9  -0.000278095
   3   0.002000000   0.012075654   84714.0  133708.7   0.000064875
     ===========================================================


  TIME: GANDRA  STEP:    71.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0020998710      0.0000000000
        2      0.0000006713      0.0020999499      0.0004608617
        3      0.0000000000      0.0021000194      0.0000000000

    Force Error: 0.327362E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012099871   84756.6  133856.8   0.000076598
   2   0.001000671   0.012099950   84723.9  133977.1  -0.000283687
   3   0.002000000   0.012100019   84803.9  134290.7   0.000067177
     ===========================================================


  TIME: GANDRA  STEP:    72.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0021239468      0.0000000000
        2      0.0000006774      0.0021240281      0.0004708578
        3      0.0000000000      0.0021240999      0.0000000000

    Force Error: 0.323735E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012123947   84847.5  134431.9   0.000078935
   2   0.001000677   0.012124028   84814.4  134552.9  -0.000289267
   3   0.002000000   0.012124100   84894.0  134868.3   0.000069478
     ===========================================================


  TIME: GANDRA  STEP:    73.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0021477350      0.0000000000
        2      0.0000006833      0.0021478186      0.0004808303
        3      0.0000000000      0.0021478927      0.0000000000

    Force Error: 0.320064E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012147735   84938.6  135002.5   0.000081270
   2   0.001000683   0.012147819   84905.0  135124.1  -0.000294834
   3   0.002000000   0.012147893   84984.4  135441.3   0.000071777
     ===========================================================


  TIME: GANDRA  STEP:    74.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0021712327      0.0000000000
        2      0.0000006892      0.0021713187      0.0004907751
        3      0.0000000000      0.0021713950      0.0000000000

    Force Error: 0.316351E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012171233   85029.9  135568.3   0.000083601
   2   0.001000689   0.012171319   84995.7  135690.7  -0.000300385
   3   0.002000000   0.012171395   85074.8  136009.6   0.000074073
     ===========================================================


  TIME: GANDRA  STEP:    75.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0021944373      0.0000000000
        2      0.0000006949      0.0021945256      0.0005006884
        3      0.0000000000      0.0021946042      0.0000000000

    Force Error: 0.312600E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012194437   85121.3  136129.4   0.000085929
   2   0.001000695   0.012194526   85086.6  136252.4  -0.000305918
   3   0.002000000   0.012194604   85165.4  136573.1   0.000076365
     ===========================================================


  TIME: GANDRA  STEP:    76.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0022173463      0.0000000000
        2      0.0000007006      0.0022174369      0.0005105666
        3      0.0000000000      0.0022175178      0.0000000000

    Force Error: 0.308814E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012217346   85212.8  136685.6   0.000088251
   2   0.001000701   0.012217437   85177.6  136809.2  -0.000311432
   3   0.002000000   0.012217518   85256.2  137131.6   0.000078652
     ===========================================================


  TIME: GANDRA  STEP:    77.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0022399576      0.0000000000
        2      0.0000007062      0.0022400505      0.0005204059
        3      0.0000000000      0.0022401337      0.0000000000

    Force Error: 0.304994E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012239958   85304.4  137236.7   0.000090567
   2   0.001000706   0.012240051   85268.7  137361.0  -0.000316924
   3   0.002000000   0.012240134   85347.0  137685.1   0.000080934
     ===========================================================


  TIME: GANDRA  STEP:    78.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0022622691      0.0000000000
        2      0.0000007117      0.0022623643      0.0005302030
        3      0.0000000000      0.0022624498      0.0000000000

    Force Error: 0.301143E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012262269   85396.1  137782.7   0.000092876
   2   0.001000712   0.012262364   85359.9  137907.6  -0.000322393
   3   0.002000000   0.012262450   85438.0  138233.4   0.000083208
     ===========================================================


  TIME: GANDRA  STEP:    79.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0022842791      0.0000000000
        2      0.0000007171      0.0022843765      0.0005399542
        3      0.0000000000      0.0022844643      0.0000000000

    Force Error: 0.297265E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012284279   85487.8  138323.4   0.000095176
   2   0.001000717   0.012284377   85451.2  138449.0  -0.000327836
   3   0.002000000   0.012284464   85529.0  138776.4   0.000085474
     ===========================================================


  TIME: GANDRA  STEP:    80.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0023059858      0.0000000000
        2      0.0000007224      0.0023060856      0.0005496565
        3      0.0000000000      0.0023061756      0.0000000000

    Force Error: 0.293361E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012305986   85579.6  138858.8   0.000097468
   2   0.001000722   0.012306086   85542.5  138984.9  -0.000333252
   3   0.002000000   0.012306176   85620.1  139314.0   0.000087732
     ===========================================================


  TIME: GANDRA  STEP:    81.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0023273881      0.0000000000
        2      0.0000007276      0.0023274901      0.0005593066
        3      0.0000000000      0.0023275823      0.0000000000

    Force Error: 0.289434E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012327388   85671.4  139388.7   0.000099749
   2   0.001000728   0.012327490   85633.9  139515.4  -0.000338639
   3   0.002000000   0.012327582   85711.3  139846.1   0.000089980
     ===========================================================


  TIME: GANDRA  STEP:    82.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0023484845      0.0000000000
        2      0.0000007328      0.0023485888      0.0005689015
        3      0.0000000000      0.0023486833      0.0000000000

    Force Error: 0.285488E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012348485   85763.3  139913.0   0.000102020
   2   0.001000733   0.012348589   85725.3  140040.4  -0.000343996
   3   0.002000000   0.012348683   85802.4  140372.7   0.000092217
     ===========================================================


  TIME: GANDRA  STEP:    83.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0023692743      0.0000000000
        2      0.0000007379      0.0023693809      0.0005784382
        3      0.0000000000      0.0023694775      0.0000000000

    Force Error: 0.281524E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012369274   85855.1  140431.7   0.000104279
   2   0.001000738   0.012369381   85816.7  140559.7  -0.000349321
   3   0.002000000   0.012369478   85893.7  140893.6   0.000094442
     ===========================================================


  TIME: GANDRA  STEP:    84.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0023897566      0.0000000000
        2      0.0000007428      0.0023898654      0.0005879140
        3      0.0000000000      0.0023899642      0.0000000000

    Force Error: 0.277545E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012389757   85946.9  140944.7   0.000106525
   2   0.001000743   0.012389865   85908.1  141073.3  -0.000354613
   3   0.002000000   0.012389964   85984.9  141408.7   0.000096656
     ===========================================================


  TIME: GANDRA  STEP:    85.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0024099309      0.0000000000
        2      0.0000007477      0.0024100418      0.0005973261
        3      0.0000000000      0.0024101429      0.0000000000

    Force Error: 0.273554E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012409931   86038.7  141451.9   0.000108759
   2   0.001000748   0.012410042   85999.5  141581.0  -0.000359869
   3   0.002000000   0.012410143   86076.1  141918.0   0.000098856
     ===========================================================


  TIME: GANDRA  STEP:    86.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0024297967      0.0000000000
        2      0.0000007526      0.0024299099      0.0006066720
        3      0.0000000000      0.0024300131      0.0000000000

    Force Error: 0.269553E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012429797   86130.5  141953.2   0.000110978
   2   0.001000753   0.012429910   86090.8  142082.8  -0.000365090
   3   0.002000000   0.012430013   86167.2  142421.4   0.000101043
     ===========================================================


  TIME: GANDRA  STEP:    87.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0024493539      0.0000000000
        2      0.0000007573      0.0024494692      0.0006159492
        3      0.0000000000      0.0024495746      0.0000000000

    Force Error: 0.265546E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012449354   86222.2  142448.5   0.000113182
   2   0.001000757   0.012449469   86182.1  142578.7  -0.000370272
   3   0.002000000   0.012449575   86258.4  142918.8   0.000103215
     ===========================================================


  TIME: GANDRA  STEP:    88.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0024686025      0.0000000000
        2      0.0000007619      0.0024687200      0.0006251554
        3      0.0000000000      0.0024688275      0.0000000000

    Force Error: 0.261533E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012468602   86313.8  142937.8   0.000115371
   2   0.001000762   0.012468720   86273.4  143068.6  -0.000375416
   3   0.002000000   0.012468828   86349.4  143410.1   0.000105371
     ===========================================================


  TIME: GANDRA  STEP:    89.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0024875427      0.0000000000
        2      0.0000007665      0.0024876624      0.0006342884
        3      0.0000000000      0.0024877720      0.0000000000

    Force Error: 0.257519E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012487543   86405.4  143421.1   0.000117544
   2   0.001000767   0.012487662   86364.5  143552.3  -0.000380520
   3   0.002000000   0.012487772   86440.4  143895.4   0.000107512
     ===========================================================


  TIME: GANDRA  STEP:    90.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025061748      0.0000000000
        2      0.0000007710      0.0025062967      0.0006433461
        3      0.0000000000      0.0025064084      0.0000000000

    Force Error: 0.253505E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012506175   86496.8  143898.2   0.000119700
   2   0.001000771   0.012506297   86455.6  144029.9  -0.000385583
   3   0.002000000   0.012506408   86531.3  144374.4   0.000109637
     ===========================================================


  TIME: GANDRA  STEP:    91.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025244996      0.0000000000
        2      0.0000007754      0.0025246235      0.0006523266
        3      0.0000000000      0.0025247374      0.0000000000

    Force Error: 0.249494E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012524500   86588.1  144369.0   0.000121839
   2   0.001000775   0.012524624   86546.6  144501.3  -0.000390603
   3   0.002000000   0.012524737   86622.2  144847.3   0.000111744
     ===========================================================


  TIME: GANDRA  STEP:    92.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025425176      0.0000000000
        2      0.0000007798      0.0025426437      0.0006612279
        3      0.0000000000      0.0025427596      0.0000000000

    Force Error: 0.245488E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012542518   86679.3  144833.7   0.000123960
   2   0.001000780   0.012542644   86637.4  144966.5  -0.000395580
   3   0.002000000   0.012542760   86712.9  145313.9   0.000113834
     ===========================================================


  TIME: GANDRA  STEP:    93.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025602298      0.0000000000
        2      0.0000007841      0.0025603580      0.0006700485
        3      0.0000000000      0.0025604759      0.0000000000

    Force Error: 0.241489E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012560230   86770.4  145292.1   0.000126063
   2   0.001000784   0.012560358   86728.1  145425.3  -0.000400514
   3   0.002000000   0.012560476   86803.5  145774.1   0.000115905
     ===========================================================


  TIME: GANDRA  STEP:    94.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025776374      0.0000000000
        2      0.0000007882      0.0025777676      0.0006787867
        3      0.0000000000      0.0025778876      0.0000000000

    Force Error: 0.237500E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012577637   86861.3  145744.1   0.000128147
   2   0.001000788   0.012577768   86818.7  145877.8  -0.000405402
   3   0.002000000   0.012577888   86893.9  146228.1   0.000117958
     ===========================================================


  TIME: GANDRA  STEP:    95.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025947414      0.0000000000
        2      0.0000007924      0.0025948737      0.0006874410
        3      0.0000000000      0.0025949957      0.0000000000

    Force Error: 0.233522E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012594741   86952.0  146189.8   0.000130211
   2   0.001000792   0.012594874   86909.0  146324.0  -0.000410244
   3   0.002000000   0.012594996   86984.2  146675.6   0.000119992
     ===========================================================


  TIME: GANDRA  STEP:    96.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026115434      0.0000000000
        2      0.0000007964      0.0026116777      0.0006960100
        3      0.0000000000      0.0026118017      0.0000000000

    Force Error: 0.229559E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012611543   87042.5  146629.1   0.000132256
   2   0.001000796   0.012611678   86999.3  146763.8  -0.000415040
   3   0.002000000   0.012611802   87074.3  147116.8   0.000122006
     ===========================================================


  TIME: GANDRA  STEP:    97.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026280450      0.0000000000
        2      0.0000008004      0.0026281812      0.0007044924
        3      0.0000000000      0.0026283072      0.0000000000

    Force Error: 0.225611E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012628045   87132.9  147062.0   0.000134280
   2   0.001000800   0.012628181   87089.3  147197.1  -0.000419789
   3   0.002000000   0.012628307   87164.2  147551.5   0.000124001
     ===========================================================


  TIME: GANDRA  STEP:    98.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026442477      0.0000000000
        2      0.0000008043      0.0026443859      0.0007128872
        3      0.0000000000      0.0026445139      0.0000000000

    Force Error: 0.221681E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012644248   87223.0  147488.5   0.000136284
   2   0.001000804   0.012644386   87179.1  147624.1  -0.000424490
   3   0.002000000   0.012644514   87254.0  147979.8   0.000125974
     ===========================================================


  TIME: GANDRA  STEP:    99.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026601535      0.0000000000
        2      0.0000008081      0.0026602937      0.0007211933
        3      0.0000000000      0.0026604235      0.0000000000

    Force Error: 0.217772E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012660153   87313.0  147908.5   0.000138268
   2   0.001000808   0.012660294   87268.7  148044.5  -0.000429143
   3   0.002000000   0.012660424   87343.5  148401.6   0.000127928
     ===========================================================


  TIME: GANDRA  STEP:   100.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026757643      0.0000000000
        2      0.0000008119      0.0026759065      0.0007294096
        3      0.0000000000      0.0026760382      0.0000000000

    Force Error: 0.213884E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012675764   87402.6  148322.1   0.000140230
   2   0.001000812   0.012675906   87358.1  148458.6  -0.000433746
   3   0.002000000   0.012676038   87432.9  148816.9   0.000129860
     ===========================================================


  TIME: GANDRA  STEP:   101.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026910823      0.0000000000
        2      0.0000008156      0.0026912264      0.0007375355
        3      0.0000000000      0.0026913600      0.0000000000

    Force Error: 0.210020E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012691082   87492.1  148729.3   0.000142170
   2   0.001000816   0.012691226   87447.3  148866.1  -0.000438301
   3   0.002000000   0.012691360   87522.0  149225.8   0.000131771
     ===========================================================


  TIME: GANDRA  STEP:   102.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0027061097      0.0000000000
        2      0.0000008192      0.0027062557      0.0007455702
        3      0.0000000000      0.0027063912      0.0000000000

    Force Error: 0.206181E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012706110   87581.3  149130.0   0.000144089
   2   0.001000819   0.012706256   87536.2  149267.2  -0.000442805
   3   0.002000000   0.012706391   87610.8  149628.2   0.000133661
     ===========================================================


  TIME: GANDRA  STEP:   103.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0027208489      0.0000000000
        2      0.0000008227      0.0027209968      0.0007535130
        3      0.0000000000      0.0027211341      0.0000000000

    Force Error: 0.202369E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012720849   87670.2  149524.2   0.000145986
   2   0.001000823   0.012720997   87624.8  149661.9  -0.000447260
   3   0.002000000   0.012721134   87699.4  150024.1   0.000135528
     ===========================================================


  TIME: GANDRA  STEP:   104.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0027353024      0.0000000000
        2      0.0000008262      0.0027354521      0.0007613634
        3      0.0000000000      0.0027355913      0.0000000000

    Force Error: 0.198586E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012735302   87758.8  149912.0   0.000147860
   2   0.001000826   0.012735452   87713.2  150050.1  -0.000451664
   3   0.002000000   0.012735591   87787.8  150413.6   0.000137374
     ===========================================================


  TIME: GANDRA  STEP:   105.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0027494727      0.0000000000
        2      0.0000008297      0.0027496242      0.0007691209
        3      0.0000000000      0.0027497652      0.0000000000

    Force Error: 0.194833E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012749473   87847.2  150293.4   0.000149712
   2   0.001000830   0.012749624   87801.3  150431.9  -0.000456017
   3   0.002000000   0.012749765   87875.8  150796.6   0.000139198
     ===========================================================


  TIME: GANDRA  STEP:   106.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0027633625      0.0000000000
        2      0.0000008330      0.0027635159      0.0007767853
        3      0.0000000000      0.0027636587      0.0000000000

    Force Error: 0.191112E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012763363   87935.2  150668.4   0.000151542
   2   0.001000833   0.012763516   87889.1  150807.2  -0.000460320
   3   0.002000000   0.012763659   87963.6  151173.2   0.000140999
     ===========================================================


  TIME: GANDRA  STEP:   107.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0027769748      0.0000000000
        2      0.0000008363      0.0027771299      0.0007843562
        3      0.0000000000      0.0027772744      0.0000000000

    Force Error: 0.187423E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012776975   88022.9  151036.9   0.000153349
   2   0.001000836   0.012777130   87976.5  151176.2  -0.000464571
   3   0.002000000   0.012777274   88051.1  151543.4   0.000142778
     ===========================================================


  TIME: GANDRA  STEP:   108.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0027903122      0.0000000000
        2      0.0000008396      0.0027904691      0.0007918335
        3      0.0000000000      0.0027906154      0.0000000000

    Force Error: 0.183770E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012790312   88110.3  151399.1   0.000155134
   2   0.001000840   0.012790469   88063.7  151538.8  -0.000468772
   3   0.002000000   0.012790615   88138.2  151907.1   0.000144535
     ===========================================================


  TIME: GANDRA  STEP:   109.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0028033779      0.0000000000
        2      0.0000008427      0.0028035366      0.0007992170
        3      0.0000000000      0.0028036845      0.0000000000

    Force Error: 0.180152E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012803378   88197.4  151755.0   0.000156896
   2   0.001000843   0.012803537   88150.5  151895.0  -0.000472921
   3   0.002000000   0.012803685   88225.0  152264.5   0.000146268
     ===========================================================


  TIME: GANDRA  STEP:   110.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0028161749      0.0000000000
        2      0.0000008458      0.0028163352      0.0008065068
        3      0.0000000000      0.0028164849      0.0000000000

    Force Error: 0.176570E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012816175   88284.1  152104.5   0.000158634
   2   0.001000846   0.012816335   88237.0  152244.9  -0.000477020
   3   0.002000000   0.012816485   88311.5  152615.6   0.000147980
     ===========================================================


  TIME: GANDRA  STEP:   111.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0028287063      0.0000000000
        2      0.0000008489      0.0028288683      0.0008137030
        3      0.0000000000      0.0028290196      0.0000000000

    Force Error: 0.173027E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012828706   88370.4  152447.8   0.000160350
   2   0.001000849   0.012828868   88323.1  152588.5  -0.000481067
   3   0.002000000   0.012829020   88397.7  152960.4   0.000149668
     ===========================================================


  TIME: GANDRA  STEP:   112.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0028409752      0.0000000000
        2      0.0000008519      0.0028411390      0.0008208055
        3      0.0000000000      0.0028412919      0.0000000000

    Force Error: 0.169523E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012840975   88456.4  152784.8   0.000162043
   2   0.001000852   0.012841139   88408.9  152925.9  -0.000485063
   3   0.002000000   0.012841292   88483.4  153298.9   0.000151334
     ===========================================================


  TIME: GANDRA  STEP:   113.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0028529851      0.0000000000
        2      0.0000008548      0.0028531505      0.0008278147
        3      0.0000000000      0.0028533051      0.0000000000

    Force Error: 0.166059E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012852985   88542.0  153115.6   0.000163714
   2   0.001000855   0.012853150   88494.2  153257.0  -0.000489008
   3   0.002000000   0.012853305   88568.9  153631.2   0.000152977
     ===========================================================


  TIME: GANDRA  STEP:   114.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0028647392      0.0000000000
        2      0.0000008577      0.0028649062      0.0008347307
        3      0.0000000000      0.0028650624      0.0000000000

    Force Error: 0.162635E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012864739   88627.2  153440.3   0.000165361
   2   0.001000858   0.012864906   88579.2  153582.0  -0.000492902
   3   0.002000000   0.012865062   88653.9  153957.4   0.000154598
     ===========================================================


  TIME: GANDRA  STEP:   115.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0028762410      0.0000000000
        2      0.0000008606      0.0028764096      0.0008415540
        3      0.0000000000      0.0028765673      0.0000000000

    Force Error: 0.159254E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012876241   88712.0  153758.8   0.000166985
   2   0.001000861   0.012876410   88663.8  153900.9  -0.000496745
   3   0.002000000   0.012876567   88738.5  154277.4   0.000156196
     ===========================================================


  TIME: GANDRA  STEP:   116.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0028874938      0.0000000000
        2      0.0000008633      0.0028876639      0.0008482849
        3      0.0000000000      0.0028878232      0.0000000000

    Force Error: 0.155915E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012887494   88796.3  154071.3   0.000168587
   2   0.001000863   0.012887664   88748.0  154213.7  -0.000500538
   3   0.002000000   0.012887823   88822.8  154591.3   0.000157771
     ===========================================================


  TIME: GANDRA  STEP:   117.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0028985011      0.0000000000
        2      0.0000008661      0.0028986728      0.0008549238
        3      0.0000000000      0.0028988337      0.0000000000

    Force Error: 0.152620E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012898501   88880.3  154377.7   0.000170166
   2   0.001000866   0.012898673   88831.8  154520.5  -0.000504280
   3   0.002000000   0.012898834   88906.6  154899.1   0.000159324
     ===========================================================


  TIME: GANDRA  STEP:   118.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0029092665      0.0000000000
        2      0.0000008687      0.0029094397      0.0008614712
        3      0.0000000000      0.0029096021      0.0000000000

    Force Error: 0.149368E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012909266   88963.8  154678.2   0.000171723
   2   0.001000869   0.012909440   88915.1  154821.3  -0.000507973
   3   0.002000000   0.012909602   88990.0  155201.0   0.000160854
     ===========================================================


  TIME: GANDRA  STEP:   119.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0029197935      0.0000000000
        2      0.0000008713      0.0029199683      0.0008679278
        3      0.0000000000      0.0029201321      0.0000000000

    Force Error: 0.146161E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012919794   89046.8  154972.8   0.000173257
   2   0.001000871   0.012919968   88998.0  155116.2  -0.000511616
   3   0.002000000   0.012920132   89073.0  155497.0   0.000162362
     ===========================================================


  TIME: GANDRA  STEP:   120.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0029300858      0.0000000000
        2      0.0000008739      0.0029302620      0.0008742940
        3      0.0000000000      0.0029304273      0.0000000000

    Force Error: 0.142999E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012930086   89129.4  155261.5   0.000174768
   2   0.001000874   0.012930262   89080.4  155405.2  -0.000515209
   3   0.002000000   0.012930427   89155.5  155787.1   0.000163849
     ===========================================================


  TIME: GANDRA  STEP:   121.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0029401469      0.0000000000
        2      0.0000008764      0.0029403246      0.0008805705
        3      0.0000000000      0.0029404914      0.0000000000

    Force Error: 0.139883E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012940147   89211.6  155544.5   0.000176258
   2   0.001000876   0.012940325   89162.4  155688.5  -0.000518753
   3   0.002000000   0.012940491   89237.5  156071.4   0.000165313
     ===========================================================


  TIME: GANDRA  STEP:   122.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0029499805      0.0000000000
        2      0.0000008789      0.0029501597      0.0008867580
        3      0.0000000000      0.0029503278      0.0000000000

    Force Error: 0.136813E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012949980   89293.2  155821.7   0.000177725
   2   0.001000879   0.012950160   89243.9  155966.0  -0.000522248
   3   0.002000000   0.012950328   89319.1  156350.0   0.000166755
     ===========================================================


  TIME: GANDRA  STEP:   123.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0029595903      0.0000000000
        2      0.0000008813      0.0029597708      0.0008928572
        3      0.0000000000      0.0029599404      0.0000000000

    Force Error: 0.133789E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012959590   89374.4  156093.2   0.000179171
   2   0.001000881   0.012959771   89324.9  156237.9  -0.000525695
   3   0.002000000   0.012959940   89400.2  156622.8   0.000168175
     ===========================================================


  TIME: GANDRA  STEP:   124.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0029689799      0.0000000000
        2      0.0000008837      0.0029691619      0.0008988688
        3      0.0000000000      0.0029693328      0.0000000000

    Force Error: 0.130812E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012968980   89455.0  156359.2   0.000180595
   2   0.001000884   0.012969162   89405.4  156504.1  -0.000529094
   3   0.002000000   0.012969333   89480.9  156890.1   0.000169574
     ===========================================================


  TIME: GANDRA  STEP:   125.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0029781530      0.0000000000
        2      0.0000008860      0.0029783364      0.0009047937
        3      0.0000000000      0.0029785087      0.0000000000

    Force Error: 0.127882E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012978153   89535.2  156619.6   0.000181997
   2   0.001000886   0.012978336   89485.4  156764.8  -0.000532445
   3   0.002000000   0.012978509   89561.0  157151.8   0.000170952
     ===========================================================


  TIME: GANDRA  STEP:   126.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0029871134      0.0000000000
        2      0.0000008883      0.0029872981      0.0009106327
        3      0.0000000000      0.0029874718      0.0000000000

    Force Error: 0.124999E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012987113   89614.8  156874.6   0.000183378
   2   0.001000888   0.012987298   89564.9  157020.1  -0.000535749
   3   0.002000000   0.012987472   89640.6  157408.1   0.000172309
     ===========================================================


  TIME: GANDRA  STEP:   127.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0029958647      0.0000000000
        2      0.0000008905      0.0029960507      0.0009163866
        3      0.0000000000      0.0029962257      0.0000000000

    Force Error: 0.122163E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012995865   89693.9  157124.1   0.000184738
   2   0.001000891   0.012996051   89643.8  157269.9  -0.000539007
   3   0.002000000   0.012996226   89719.7  157658.9   0.000173644
     ===========================================================


  TIME: GANDRA  STEP:   128.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0030044106      0.0000000000
        2      0.0000008927      0.0030045980      0.0009220562
        3      0.0000000000      0.0030047743      0.0000000000

    Force Error: 0.119375E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013004411   89772.5  157368.4   0.000186077
   2   0.001000893   0.013004598   89722.2  157514.5  -0.000542218
   3   0.002000000   0.013004774   89798.2  157904.4   0.000174959
     ===========================================================


  TIME: GANDRA  STEP:   129.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0030127549      0.0000000000
        2      0.0000008949      0.0030129436      0.0009276426
        3      0.0000000000      0.0030131211      0.0000000000

    Force Error: 0.116635E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013012755   89850.5  157607.4   0.000187395
   2   0.001000895   0.013012944   89800.1  157753.7  -0.000545383
   3   0.002000000   0.013013121   89876.2  158144.6   0.000176254
     ===========================================================


  TIME: GANDRA  STEP:   130.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0030209012      0.0000000000
        2      0.0000008970      0.0030210911      0.0009331465
        3      0.0000000000      0.0030212699      0.0000000000

    Force Error: 0.113942E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013020901   89927.9  157841.2   0.000188693
   2   0.001000897   0.013021091   89877.4  157987.8  -0.000548503
   3   0.002000000   0.013021270   89953.7  158379.7   0.000177528
     ===========================================================


  TIME: GANDRA  STEP:   131.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0030288531      0.0000000000
        2      0.0000008990      0.0030290444      0.0009385689
        3      0.0000000000      0.0030292244      0.0000000000

    Force Error: 0.111296E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013028853   90004.8  158069.9   0.000189970
   2   0.001000899   0.013029044   89954.2  158216.8  -0.000551577
   3   0.002000000   0.013029224   90030.6  158609.6   0.000178783
     ===========================================================


  TIME: GANDRA  STEP:   132.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0030366145      0.0000000000
        2      0.0000009010      0.0030368070      0.0009439109
        3      0.0000000000      0.0030369882      0.0000000000

    Force Error: 0.108698E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013036615   90081.1  158293.6   0.000191228
   2   0.001000901   0.013036807   90030.3  158440.8  -0.000554608
   3   0.002000000   0.013036988   90106.9  158834.5   0.000180017
     ===========================================================


  TIME: GANDRA  STEP:   133.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0030441889      0.0000000000
        2      0.0000009030      0.0030443826      0.0009491733
        3      0.0000000000      0.0030445650      0.0000000000

    Force Error: 0.106148E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013044189   90156.7  158512.3   0.000192466
   2   0.001000903   0.013044383   90105.9  158659.7  -0.000557595
   3   0.002000000   0.013044565   90182.7  159054.4   0.000181232
     ===========================================================


  TIME: GANDRA  STEP:   134.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0030515800      0.0000000000
        2      0.0000009050      0.0030517749      0.0009543571
        3      0.0000000000      0.0030519585      0.0000000000

    Force Error: 0.103644E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013051580   90231.8  158726.2   0.000193684
   2   0.001000905   0.013051775   90180.9  158873.9  -0.000560538
   3   0.002000000   0.013051958   90257.8  159269.4   0.000182428
     ===========================================================


  TIME: GANDRA  STEP:   135.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0030587913      0.0000000000
        2      0.0000009069      0.0030589874      0.0009594634
        3      0.0000000000      0.0030591722      0.0000000000

    Force Error: 0.101188E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013058791   90306.3  158935.2   0.000194883
   2   0.001000907   0.013058987   90255.3  159083.2  -0.000563438
   3   0.002000000   0.013059172   90332.4  159479.6   0.000183605
     ===========================================================


  TIME: GANDRA  STEP:   136.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0030658266      0.0000000000
        2      0.0000009087      0.0030660238      0.0009644930
        3      0.0000000000      0.0030662097      0.0000000000

    Force Error: 0.987788E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013065827   90380.2  159139.6   0.000196064
   2   0.001000909   0.013066024   90329.0  159287.7  -0.000566296
   3   0.002000000   0.013066210   90406.3  159685.1   0.000184763
     ===========================================================


  TIME: GANDRA  STEP:   137.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0030726893      0.0000000000
        2      0.0000009106      0.0030728876      0.0009694471
        3      0.0000000000      0.0030730746      0.0000000000

    Force Error: 0.964161E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013072689   90453.4  159339.2   0.000197225
   2   0.001000911   0.013072888   90402.1  159487.7  -0.000569112
   3   0.002000000   0.013073075   90479.6  159885.9   0.000185902
     ===========================================================


  TIME: GANDRA  STEP:   138.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0030793829      0.0000000000
        2      0.0000009124      0.0030795824      0.0009743267
        3      0.0000000000      0.0030797706      0.0000000000

    Force Error: 0.940999E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013079383   90526.0  159534.4   0.000198368
   2   0.001000912   0.013079582   90474.6  159683.0  -0.000571887
   3   0.002000000   0.013079771   90552.3  160082.1   0.000187023
     ===========================================================


  TIME: GANDRA  STEP:   139.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0030859111      0.0000000000
        2      0.0000009141      0.0030861117      0.0009791327
        3      0.0000000000      0.0030863009      0.0000000000

    Force Error: 0.918297E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013085911   90597.9  159725.0   0.000199493
   2   0.001000914   0.013086112   90546.5  159873.9  -0.000574622
   3   0.002000000   0.013086301   90624.3  160273.9   0.000188127
     ===========================================================


  TIME: GANDRA  STEP:   140.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0030922773      0.0000000000
        2      0.0000009158      0.0030924790      0.0009838662
        3      0.0000000000      0.0030926693      0.0000000000

    Force Error: 0.896054E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013092277   90669.2  159911.2   0.000200601
   2   0.001000916   0.013092479   90617.7  160060.4  -0.000577316
   3   0.002000000   0.013092669   90695.7  160461.2   0.000189213
     ===========================================================


  TIME: GANDRA  STEP:   141.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0030984849      0.0000000000
        2      0.0000009175      0.0030986877      0.0009885283
        3      0.0000000000      0.0030988790      0.0000000000

    Force Error: 0.874265E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013098485   90739.8  160093.1   0.000201690
   2   0.001000918   0.013098688   90688.2  160242.5  -0.000579970
   3   0.002000000   0.013098879   90766.4  160644.1   0.000190281
     ===========================================================


  TIME: GANDRA  STEP:   142.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0031045374      0.0000000000
        2      0.0000009192      0.0031047412      0.0009931199
        3      0.0000000000      0.0031049336      0.0000000000

    Force Error: 0.852926E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013104537   90809.7  160270.7   0.000202762
   2   0.001000919   0.013104741   90758.1  160420.3  -0.000582585
   3   0.002000000   0.013104934   90836.5  160822.8   0.000191332
     ===========================================================


  TIME: GANDRA  STEP:   143.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0031104381      0.0000000000
        2      0.0000009208      0.0031106430      0.0009976420
        3      0.0000000000      0.0031108363      0.0000000000

    Force Error: 0.832034E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013110438   90879.0  160444.1   0.000203817
   2   0.001000921   0.013110643   90827.2  160594.0  -0.000585161
   3   0.002000000   0.013110836   90905.9  160997.3   0.000192367
     ===========================================================


  TIME: GANDRA  STEP:   144.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0031161904      0.0000000000
        2      0.0000009224      0.0031163963      0.0010020957
        3      0.0000000000      0.0031165907      0.0000000000

    Force Error: 0.811584E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013116190   90947.5  160613.5   0.000204856
   2   0.001000922   0.013116396   90895.7  160763.5  -0.000587700
   3   0.002000000   0.013116591   90974.6  161167.7   0.000193384
     ===========================================================


  TIME: GANDRA  STEP:   145.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0031217976      0.0000000000
        2      0.0000009239      0.0031220044      0.0010064820
        3      0.0000000000      0.0031221998      0.0000000000

    Force Error: 0.791573E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013121798   91015.4  160778.8   0.000205878
   2   0.001000924   0.013122004   90963.5  160929.1  -0.000590201
   3   0.002000000   0.013122200   91042.6  161334.0   0.000194386
     ===========================================================


  TIME: GANDRA  STEP:   146.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0031272629      0.0000000000
        2      0.0000009255      0.0031274708      0.0010108020
        3      0.0000000000      0.0031276671      0.0000000000

    Force Error: 0.771995E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013127263   91082.5  160940.1   0.000206883
   2   0.001000925   0.013127471   91030.6  161090.7  -0.000592665
   3   0.002000000   0.013127667   91109.9  161496.4   0.000195371
     ===========================================================


  TIME: GANDRA  STEP:   147.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0031325896      0.0000000000
        2      0.0000009270      0.0031327984      0.0010150565
        3      0.0000000000      0.0031329957      0.0000000000

    Force Error: 0.752846E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013132590   91149.0  161097.6   0.000207873
   2   0.001000927   0.013132798   91097.0  161248.4  -0.000595092
   3   0.002000000   0.013132996   91176.5  161654.8   0.000196341
     ===========================================================


  TIME: GANDRA  STEP:   148.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0031377809      0.0000000000
        2      0.0000009284      0.0031379907      0.0010192467
        3      0.0000000000      0.0031381889      0.0000000000

    Force Error: 0.734121E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013137781   91214.7  161251.3   0.000208847
   2   0.001000928   0.013137991   91162.6  161402.3  -0.000597483
   3   0.002000000   0.013138189   91242.4  161809.5   0.000197295
     ===========================================================


  TIME: GANDRA  STEP:   149.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0031428398      0.0000000000
        2      0.0000009298      0.0031430506      0.0010233735
        3      0.0000000000      0.0031432497      0.0000000000

    Force Error: 0.715815E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013142840   91279.7  161401.3   0.000209805
   2   0.001000930   0.013143051   91227.6  161552.5  -0.000599839
   3   0.002000000   0.013143250   91307.5  161960.5   0.000198235
     ===========================================================


  TIME: GANDRA  STEP:   150.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0031477696      0.0000000000
        2      0.0000009313      0.0031479812      0.0010274379
        3      0.0000000000      0.0031481813      0.0000000000

    Force Error: 0.697923E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013147770   91343.9  161547.6   0.000210749
   2   0.001000931   0.013147981   91291.8  161699.0  -0.000602160
   3   0.002000000   0.013148181   91372.0  162107.8   0.000199159
     ===========================================================


  TIME: GANDRA  STEP:   151.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0031525731      0.0000000000
        2      0.0000009326      0.0031527857      0.0010314409
        3      0.0000000000      0.0031529867      0.0000000000

    Force Error: 0.680439E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013152573   91407.4  161690.4   0.000211677
   2   0.001000933   0.013152786   91355.2  161842.0  -0.000604447
   3   0.002000000   0.013152987   91435.7  162251.5   0.000200068
     ===========================================================


  TIME: GANDRA  STEP:   152.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0031572536      0.0000000000
        2      0.0000009340      0.0031574671      0.0010353835
        3      0.0000000000      0.0031576689      0.0000000000

    Force Error: 0.663357E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013157254   91470.2  161829.7   0.000212591
   2   0.001000934   0.013157467   91418.0  161981.4  -0.000606699
   3   0.002000000   0.013157669   91498.6  162391.7   0.000200963
     ===========================================================


  TIME: GANDRA  STEP:   153.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0031618138      0.0000000000
        2      0.0000009353      0.0031620282      0.0010392666
        3      0.0000000000      0.0031622309      0.0000000000

    Force Error: 0.646674E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013161814   91532.2  161965.5   0.000213490
   2   0.001000935   0.013162028   91479.9  162117.5  -0.000608919
   3   0.002000000   0.013162231   91560.8  162528.4   0.000201844
     ===========================================================


  TIME: GANDRA  STEP:   154.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0031662568      0.0000000000
        2      0.0000009366      0.0031664721      0.0010430912
        3      0.0000000000      0.0031666756      0.0000000000

    Force Error: 0.630382E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013166257   91593.5  162098.0   0.000214376
   2   0.001000937   0.013166472   91541.1  162250.2  -0.000611105
   3   0.002000000   0.013166676   91622.3  162661.8   0.000202711
     ===========================================================


  TIME: GANDRA  STEP:   155.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0031705854      0.0000000000
        2      0.0000009379      0.0031708015      0.0010468582
        3      0.0000000000      0.0031710059      0.0000000000

    Force Error: 0.614477E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013170585   91654.0  162227.2   0.000215247
   2   0.001000938   0.013170802   91601.6  162379.6  -0.000613259
   3   0.002000000   0.013171006   91683.0  162792.0   0.000203565
     ===========================================================


  TIME: GANDRA  STEP:   156.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0031748024      0.0000000000
        2      0.0000009391      0.0031750193      0.0010505685
        3      0.0000000000      0.0031752246      0.0000000000

    Force Error: 0.598951E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013174802   91713.7  162353.2   0.000216105
   2   0.001000939   0.013175019   91661.3  162505.8  -0.000615381
   3   0.002000000   0.013175225   91742.9  162918.9   0.000204405
     ===========================================================


  TIME: GANDRA  STEP:   157.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0031789106      0.0000000000
        2      0.0000009403      0.0031791284      0.0010542231
        3      0.0000000000      0.0031793344      0.0000000000

    Force Error: 0.583801E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013178911   91772.7  162476.1   0.000216950
   2   0.001000940   0.013179128   91720.2  162628.8  -0.000617471
   3   0.002000000   0.013179334   91802.1  163042.6   0.000205231
     ===========================================================


  TIME: GANDRA  STEP:   158.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0031829127      0.0000000000
        2      0.0000009415      0.0031831313      0.0010578229
        3      0.0000000000      0.0031833381      0.0000000000

    Force Error: 0.569019E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013182913   91830.9  162595.9   0.000217781
   2   0.001000942   0.013183131   91778.4  162748.8  -0.000619531
   3   0.002000000   0.013183338   91860.5  163163.3   0.000206046
     ===========================================================


  TIME: GANDRA  STEP:   159.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0031868114      0.0000000000
        2      0.0000009427      0.0031870308      0.0010613687
        3      0.0000000000      0.0031872384      0.0000000000

    Force Error: 0.554599E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013186811   91888.3  162712.7   0.000218600
   2   0.001000943   0.013187031   91835.7  162865.8  -0.000621560
   3   0.002000000   0.013187238   91918.1  163280.9   0.000206847
     ===========================================================


  TIME: GANDRA  STEP:   160.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0031906093      0.0000000000
        2      0.0000009438      0.0031908295      0.0010648615
        3      0.0000000000      0.0031910379      0.0000000000

    Force Error: 0.540536E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013190609   91944.9  162826.6   0.000219406
   2   0.001000944   0.013190830   91892.3  162979.9  -0.000623559
   3   0.002000000   0.013191038   91974.9  163395.6   0.000207636
     ===========================================================


  TIME: GANDRA  STEP:   161.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0031943091      0.0000000000
        2      0.0000009449      0.0031945301      0.0010683021
        3      0.0000000000      0.0031947392      0.0000000000

    Force Error: 0.526824E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013194309   92000.7  162937.6   0.000220200
   2   0.001000945   0.013194530   91948.2  163091.1  -0.000625528
   3   0.002000000   0.013194739   92031.0  163507.5   0.000208413
     ===========================================================


  TIME: GANDRA  STEP:   162.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0031979132      0.0000000000
        2      0.0000009460      0.0031981349      0.0010716915
        3      0.0000000000      0.0031983449      0.0000000000

    Force Error: 0.513457E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013197913   92055.8  163045.8   0.000220981
   2   0.001000946   0.013198135   92003.2  163199.5  -0.000627469
   3   0.002000000   0.013198345   92086.3  163616.5   0.000209178
     ===========================================================


  TIME: GANDRA  STEP:   163.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032014241      0.0000000000
        2      0.0000009471      0.0032016466      0.0010750303
        3      0.0000000000      0.0032018573      0.0000000000

    Force Error: 0.500428E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013201424   92110.1  163151.3   0.000221751
   2   0.001000947   0.013201647   92057.5  163305.1  -0.000629380
   3   0.002000000   0.013201857   92140.8  163722.8   0.000209931
     ===========================================================


  TIME: GANDRA  STEP:   164.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032048443      0.0000000000
        2      0.0000009482      0.0032050676      0.0010783195
        3      0.0000000000      0.0032052790      0.0000000000

    Force Error: 0.487732E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013204844   92163.6  163254.1   0.000222509
   2   0.001000948   0.013205068   92110.9  163408.1  -0.000631264
   3   0.002000000   0.013205279   92194.5  163826.4   0.000210673
     ===========================================================


  TIME: GANDRA  STEP:   165.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032081762      0.0000000000
        2      0.0000009492      0.0032084002      0.0010815599
        3      0.0000000000      0.0032086123      0.0000000000

    Force Error: 0.475362E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013208176   92216.3  163354.3   0.000223255
   2   0.001000949   0.013208400   92163.6  163508.5  -0.000633119
   3   0.002000000   0.013208612   92247.4  163927.4   0.000211403
     ===========================================================


  TIME: GANDRA  STEP:   166.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032114221      0.0000000000
        2      0.0000009502      0.0032116468      0.0010847522
        3      0.0000000000      0.0032118597      0.0000000000

    Force Error: 0.463313E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013211422   92268.2  163452.0   0.000223990
   2   0.001000950   0.013211647   92215.5  163606.3  -0.000634948
   3   0.002000000   0.013211860   92299.6  164025.9   0.000212123
     ===========================================================


  TIME: GANDRA  STEP:   167.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032145844      0.0000000000
        2      0.0000009512      0.0032148098      0.0010878974
        3      0.0000000000      0.0032150233      0.0000000000

    Force Error: 0.451578E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013214584   92319.3  163547.2   0.000224715
   2   0.001000951   0.013214810   92266.6  163701.7  -0.000636749
   3   0.002000000   0.013215023   92351.0  164121.8   0.000212831
     ===========================================================


  TIME: GANDRA  STEP:   168.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032176652      0.0000000000
        2      0.0000009522      0.0032178913      0.0010909961
        3      0.0000000000      0.0032181055      0.0000000000

    Force Error: 0.440152E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013217665   92369.6  163640.0   0.000225428
   2   0.001000952   0.013217891   92316.9  163794.7  -0.000638524
   3   0.002000000   0.013218106   92401.5  164215.3   0.000213529
     ===========================================================


  TIME: GANDRA  STEP:   169.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032206667      0.0000000000
        2      0.0000009531      0.0032208936      0.0010940491
        3      0.0000000000      0.0032211085      0.0000000000

    Force Error: 0.429027E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013220667   92419.2  163730.4   0.000226131
   2   0.001000953   0.013220894   92366.5  163885.2  -0.000640273
   3   0.002000000   0.013221108   92451.3  164306.5   0.000214217
     ===========================================================


  TIME: GANDRA  STEP:   170.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032235913      0.0000000000
        2      0.0000009540      0.0032238188      0.0010970572
        3      0.0000000000      0.0032240343      0.0000000000

    Force Error: 0.418199E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013223591   92468.0  163818.5   0.000226823
   2   0.001000954   0.013223819   92415.2  163973.5  -0.000641996
   3   0.002000000   0.013224034   92500.3  164395.3   0.000214894
     ===========================================================


  TIME: GANDRA  STEP:   171.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032264408      0.0000000000
        2      0.0000009549      0.0032266690      0.0011000212
        3      0.0000000000      0.0032268852      0.0000000000

    Force Error: 0.407662E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013226441   92515.9  163904.4   0.000227505
   2   0.001000955   0.013226669   92463.2  164059.5  -0.000643693
   3   0.002000000   0.013226885   92548.5  164481.9   0.000215562
     ===========================================================


  TIME: GANDRA  STEP:   172.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032292175      0.0000000000
        2      0.0000009558      0.0032294464      0.0011029416
        3      0.0000000000      0.0032296632      0.0000000000

    Force Error: 0.397409E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013229218   92563.1  163988.1   0.000228177
   2   0.001000956   0.013229446   92510.4  164143.4  -0.000645366
   3   0.002000000   0.013229663   92596.0  164566.3   0.000216219
     ===========================================================


  TIME: GANDRA  STEP:   173.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032319234      0.0000000000
        2      0.0000009567      0.0032321529      0.0011058194
        3      0.0000000000      0.0032323704      0.0000000000

    Force Error: 0.387434E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013231923   92609.5  164069.7   0.000228839
   2   0.001000957   0.013232153   92556.8  164225.1  -0.000647014
   3   0.002000000   0.013232370   92642.6  164648.6   0.000216867
     ===========================================================


  TIME: GANDRA  STEP:   174.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032345603      0.0000000000
        2      0.0000009575      0.0032347905      0.0011086551
        3      0.0000000000      0.0032350086      0.0000000000

    Force Error: 0.377733E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013234560   92655.2  164149.2   0.000229492
   2   0.001000958   0.013234790   92602.4  164304.7  -0.000648638
   3   0.002000000   0.013235009   92688.5  164728.7   0.000217506
     ===========================================================


  TIME: GANDRA  STEP:   175.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032371303      0.0000000000
        2      0.0000009584      0.0032373611      0.0011114495
        3      0.0000000000      0.0032375799      0.0000000000

    Force Error: 0.368298E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013237130   92700.0  164226.7   0.000230135
   2   0.001000958   0.013237361   92647.3  164382.4  -0.000650239
   3   0.002000000   0.013237580   92733.6  164806.9   0.000218135
     ===========================================================


  TIME: GANDRA  STEP:   176.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032396353      0.0000000000
        2      0.0000009592      0.0032398667      0.0011142033
        3      0.0000000000      0.0032400861      0.0000000000

    Force Error: 0.359124E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013239635   92744.1  164302.2   0.000230769
   2   0.001000959   0.013239867   92691.4  164458.0  -0.000651815
   3   0.002000000   0.013240086   92778.0  164883.0   0.000218755
     ===========================================================


  TIME: GANDRA  STEP:   177.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032420771      0.0000000000
        2      0.0000009600      0.0032423091      0.0011169170
        3      0.0000000000      0.0032425290      0.0000000000

    Force Error: 0.350206E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013242077   92787.5  164375.8   0.000231394
   2   0.001000960   0.013242309   92734.7  164531.7  -0.000653369
   3   0.002000000   0.013242529   92821.5  164957.3   0.000219366
     ===========================================================


  TIME: GANDRA  STEP:   178.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032444574      0.0000000000
        2      0.0000009608      0.0032446900      0.0011195914
        3      0.0000000000      0.0032449106      0.0000000000

    Force Error: 0.341537E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013244457   92830.0  164447.5   0.000232010
   2   0.001000961   0.013244690   92777.3  164603.6  -0.000654900
   3   0.002000000   0.013244911   92864.3  165029.6   0.000219969
     ===========================================================


  TIME: GANDRA  STEP:   179.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032467781      0.0000000000
        2      0.0000009615      0.0032470114      0.0011222271
        3      0.0000000000      0.0032472325      0.0000000000

    Force Error: 0.333113E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013246778   92871.8  164517.4   0.000232617
   2   0.001000962   0.013247011   92819.1  164673.6  -0.000656409
   3   0.002000000   0.013247233   92906.4  165100.1   0.000220563
     ===========================================================


  TIME: GANDRA  STEP:   180.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032490410      0.0000000000
        2      0.0000009623      0.0032492748      0.0011248247
        3      0.0000000000      0.0032494965      0.0000000000

    Force Error: 0.324928E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013249041   92912.9  164585.5   0.000233215
   2   0.001000962   0.013249275   92860.1  164741.9  -0.000657896
   3   0.002000000   0.013249496   92947.7  165168.9   0.000221148
     ===========================================================


  TIME: GANDRA  STEP:   181.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032512475      0.0000000000
        2      0.0000009630      0.0032514819      0.0011273849
        3      0.0000000000      0.0032517042      0.0000000000

    Force Error: 0.316976E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013251248   92953.2  164651.9   0.000233805
   2   0.001000963   0.013251482   92900.4  164808.4  -0.000659361
   3   0.002000000   0.013251704   92988.3  165235.9   0.000221725
     ===========================================================


  TIME: GANDRA  STEP:   182.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032533995      0.0000000000
        2      0.0000009637      0.0032536345      0.0011299082
        3      0.0000000000      0.0032538573      0.0000000000

    Force Error: 0.309251E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013253400   92992.8  164716.7   0.000234387
   2   0.001000964   0.013253634   92940.0  164873.3  -0.000660805
   3   0.002000000   0.013253857   93028.1  165301.2   0.000222295
     ===========================================================


  TIME: GANDRA  STEP:   183.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032554985      0.0000000000
        2      0.0000009644      0.0032557340      0.0011323952
        3      0.0000000000      0.0032559574      0.0000000000

    Force Error: 0.301750E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013255499   93031.6  164779.8   0.000234960
   2   0.001000964   0.013255734   92978.8  164936.5  -0.000662227
   3   0.002000000   0.013255957   93067.1  165364.9   0.000222856
     ===========================================================


  TIME: GANDRA  STEP:   184.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032575461      0.0000000000
        2      0.0000009651      0.0032577822      0.0011348466
        3      0.0000000000      0.0032580061      0.0000000000

    Force Error: 0.294465E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013257546   93069.7  164841.3   0.000235526
   2   0.001000965   0.013257782   93017.0  164998.2  -0.000663630
   3   0.002000000   0.013258006   93105.5  165427.0   0.000223409
     ===========================================================


  TIME: GANDRA  STEP:   185.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032595437      0.0000000000
        2      0.0000009658      0.0032597804      0.0011372629
        3      0.0000000000      0.0032600048      0.0000000000

    Force Error: 0.287393E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013259544   93107.1  164901.3   0.000236083
   2   0.001000966   0.013259780   93054.3  165058.3  -0.000665011
   3   0.002000000   0.013260005   93143.1  165487.5   0.000223955
     ===========================================================


  TIME: GANDRA  STEP:   186.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032614929      0.0000000000
        2      0.0000009665      0.0032617301      0.0011396446
        3      0.0000000000      0.0032619551      0.0000000000

    Force Error: 0.280527E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013261493   93143.7  164959.8   0.000236633
   2   0.001000966   0.013261730   93091.0  165116.9  -0.000666373
   3   0.002000000   0.013261955   93180.0  165546.6   0.000224493
     ===========================================================


  TIME: GANDRA  STEP:   187.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032633952      0.0000000000
        2      0.0000009671      0.0032636329      0.0011419924
        3      0.0000000000      0.0032638584      0.0000000000

    Force Error: 0.273864E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013263395   93179.7  165016.8   0.000237176
   2   0.001000967   0.013263633   93127.0  165174.0  -0.000667715
   3   0.002000000   0.013263858   93216.2  165604.2   0.000225024
     ===========================================================


  TIME: GANDRA  STEP:   188.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032652519      0.0000000000
        2      0.0000009677      0.0032654901      0.0011443066
        3      0.0000000000      0.0032657162      0.0000000000

    Force Error: 0.267397E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013265252   93214.9  165072.5   0.000237711
   2   0.001000968   0.013265490   93162.2  165229.8  -0.000669037
   3   0.002000000   0.013265716   93251.7  165660.3   0.000225547
     ===========================================================


  TIME: GANDRA  STEP:   189.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032670643      0.0000000000
        2      0.0000009683      0.0032673031      0.0011465880
        3      0.0000000000      0.0032675297      0.0000000000

    Force Error: 0.261123E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013267064   93249.5  165126.7   0.000238238
   2   0.001000968   0.013267303   93196.8  165284.1  -0.000670340
   3   0.002000000   0.013267530   93286.5  165715.1   0.000226064
     ===========================================================


  TIME: GANDRA  STEP:   190.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032688340      0.0000000000
        2      0.0000009689      0.0032690732      0.0011488369
        3      0.0000000000      0.0032693003      0.0000000000

    Force Error: 0.255036E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013268834   93283.4  165179.7   0.000238759
   2   0.001000969   0.013269073   93230.7  165337.2  -0.000671625
   3   0.002000000   0.013269300   93320.6  165768.5   0.000226573
     ===========================================================


  TIME: GANDRA  STEP:   191.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032705620      0.0000000000
        2      0.0000009695      0.0032708018      0.0011510540
        3      0.0000000000      0.0032710294      0.0000000000

    Force Error: 0.249131E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013270562   93316.6  165231.3   0.000239272
   2   0.001000970   0.013270802   93263.9  165388.9  -0.000672890
   3   0.002000000   0.013271029   93354.1  165820.6   0.000227075
     ===========================================================


  TIME: GANDRA  STEP:   192.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032722498      0.0000000000
        2      0.0000009701      0.0032724901      0.0011532396
        3      0.0000000000      0.0032727182      0.0000000000

    Force Error: 0.243404E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013272250   93349.1  165281.6   0.000239779
   2   0.001000970   0.013272490   93296.4  165439.4  -0.000674138
   3   0.002000000   0.013272718   93386.8  165871.5   0.000227571
     ===========================================================


  TIME: GANDRA  STEP:   193.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032738985      0.0000000000
        2      0.0000009707      0.0032741393      0.0011553943
        3      0.0000000000      0.0032743679      0.0000000000

    Force Error: 0.237850E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013273899   93381.0  165330.8   0.000240278
   2   0.001000971   0.013274139   93328.3  165488.6  -0.000675367
   3   0.002000000   0.013274368   93418.9  165921.1   0.000228060
     ===========================================================


  TIME: GANDRA  STEP:   194.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032755094      0.0000000000
        2      0.0000009712      0.0032757507      0.0011575186
        3      0.0000000000      0.0032759797      0.0000000000

    Force Error: 0.232465E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013275509   93412.2  165378.8   0.000240771
   2   0.001000971   0.013275751   93359.6  165536.7  -0.000676579
   3   0.002000000   0.013275980   93450.4  165969.5   0.000228543
     ===========================================================


  TIME: GANDRA  STEP:   195.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032770836      0.0000000000
        2      0.0000009718      0.0032773254      0.0011596129
        3      0.0000000000      0.0032775549      0.0000000000

    Force Error: 0.227245E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013277084   93442.7  165425.6   0.000241258
   2   0.001000972   0.013277325   93390.1  165583.6  -0.000677773
   3   0.002000000   0.013277555   93481.2  166016.8   0.000229019
     ===========================================================


  TIME: GANDRA  STEP:   196.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032786223      0.0000000000
        2      0.0000009723      0.0032788645      0.0011616778
        3      0.0000000000      0.0032790945      0.0000000000

    Force Error: 0.222184E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013278622   93472.7  165471.3   0.000241737
   2   0.001000972   0.013278865   93420.1  165629.3  -0.000678950
   3   0.002000000   0.013279094   93511.3  166063.0   0.000229489
     ===========================================================


  TIME: GANDRA  STEP:   197.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032801265      0.0000000000
        2      0.0000009728      0.0032803692      0.0011637135
        3      0.0000000000      0.0032805996      0.0000000000

    Force Error: 0.217279E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013280127   93502.0  165515.9   0.000242211
   2   0.001000973   0.013280369   93449.4  165674.0  -0.000680110
   3   0.002000000   0.013280600   93540.9  166108.0   0.000229952
     ===========================================================


  TIME: GANDRA  STEP:   198.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032815974      0.0000000000
        2      0.0000009733      0.0032818405      0.0011657207
        3      0.0000000000      0.0032820714      0.0000000000

    Force Error: 0.212526E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013281597   93530.7  165559.4   0.000242678
   2   0.001000973   0.013281841   93478.1  165717.7  -0.000681253
   3   0.002000000   0.013282071   93569.8  166152.0   0.000230410
     ===========================================================


  TIME: GANDRA  STEP:   199.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032830360      0.0000000000
        2      0.0000009738      0.0032832796      0.0011676997
        3      0.0000000000      0.0032835109      0.0000000000

    Force Error: 0.207920E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013283036   93558.8  165602.0   0.000243139
   2   0.001000974   0.013283280   93506.2  165760.3  -0.000682380
   3   0.002000000   0.013283511   93598.1  166195.0   0.000230861
     ===========================================================


  TIME: GANDRA  STEP:   200.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032844432      0.0000000000
        2      0.0000009743      0.0032846873      0.0011696509
        3      0.0000000000      0.0032849190      0.0000000000

    Force Error: 0.203457E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013284443   93586.3  165643.5   0.000243594
   2   0.001000974   0.013284687   93533.8  165801.9  -0.000683490
   3   0.002000000   0.013284919   93625.8  166236.9   0.000231307
