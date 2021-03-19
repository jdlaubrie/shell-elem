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
         GandR variable 1 ...................... GNR1    =   0.900000E-01
         GandR variable 2 ...................... GNR2    =   0.900000E-01
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
        2      0.0000000178      0.0000461691     -0.0000015276
        3      0.0000000000      0.0000461623      0.0000000000

    Force Error: 0.582973E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010046174   81261.5   90097.7   0.000000000
   2   0.001000018   0.010046169   81283.9   90124.5   0.000000000
   3   0.002000000   0.010046162   81335.2   90185.6  -0.000000000
     ===========================================================


  TIME: GANDRA  STEP:     3.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0000741390      0.0000000000
        2      0.0000000295      0.0000741312     -0.0000023713
        3      0.0000000000      0.0000741199      0.0000000000

    Force Error: 0.364163E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010074139   81701.0   92551.3  -0.000004846
   2   0.001000029   0.010074131   81718.5   92584.3  -0.000004648
   3   0.002000000   0.010074120   81784.6   92675.3  -0.000006859
     ===========================================================


  TIME: GANDRA  STEP:     4.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0001078172      0.0000000000
        2      0.0000000433      0.0001078068     -0.0000030499
        3      0.0000000000      0.0001077921      0.0000000000

    Force Error: 0.439205E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010107817   80864.7   92461.0  -0.000007872
   2   0.001000043   0.010107807   80885.5   92503.0  -0.000007681
   3   0.002000000   0.010107792   80968.9   92619.8  -0.000011231
     ===========================================================


  TIME: GANDRA  STEP:     5.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0001395730      0.0000000000
        2      0.0000000566      0.0001395606     -0.0000035293
        3      0.0000000000      0.0001395432      0.0000000000

    Force Error: 0.415815E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010139573   80650.8   93243.7  -0.000010387
   2   0.001000057   0.010139561   80671.1   93291.0  -0.000010163
   3   0.002000000   0.010139543   80764.4   93426.0  -0.000014750
     ===========================================================


  TIME: GANDRA  STEP:     6.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0001721085      0.0000000000
        2      0.0000000700      0.0001720946     -0.0000037760
        3      0.0000000000      0.0001720749      0.0000000000

    Force Error: 0.425983E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010172109   80375.0   93738.4  -0.000012358
   2   0.001000070   0.010172095   80395.4   93790.4  -0.000012125
   3   0.002000000   0.010172075   80496.0   93939.4  -0.000017460
     ===========================================================


  TIME: GANDRA  STEP:     7.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0002046075      0.0000000000
        2      0.0000000833      0.0002045922     -0.0000038026
        3      0.0000000000      0.0002045709      0.0000000000

    Force Error: 0.425471E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010204608   80230.0   94336.8  -0.000013962
   2   0.001000083   0.010204592   80249.8   94392.3  -0.000013811
   3   0.002000000   0.010204571   80355.0   94552.1  -0.000019615
     ===========================================================


  TIME: GANDRA  STEP:     8.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0002373778      0.0000000000
        2      0.0000000965      0.0002373615     -0.0000035980
        3      0.0000000000      0.0002373388      0.0000000000

    Force Error: 0.428772E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010237378   80122.8   94909.0  -0.000015264
   2   0.001000096   0.010237361   80142.0   94967.5  -0.000015296
   3   0.002000000   0.010237339   80250.2   95135.7  -0.000021326
     ===========================================================


  TIME: GANDRA  STEP:     9.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0002703439      0.0000000000
        2      0.0000001096      0.0002703267     -0.0000031669
        3      0.0000000000      0.0002703029      0.0000000000

    Force Error: 0.431093E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010270344   80061.5   95497.8  -0.000016329
   2   0.001000110   0.010270327   80079.8   95558.7  -0.000016676
   3   0.002000000   0.010270303   80189.8   95733.7  -0.000022699
     ===========================================================


  TIME: GANDRA  STEP:    10.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0003035465      0.0000000000
        2      0.0000001226      0.0003035286     -0.0000025094
        3      0.0000000000      0.0003035039      0.0000000000

    Force Error: 0.433939E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010303547   80027.0   96089.2  -0.000017201
   2   0.001000123   0.010303529   80044.4   96152.2  -0.000018006
   3   0.002000000   0.010303504   80155.4   96332.8  -0.000023805
     ===========================================================


  TIME: GANDRA  STEP:    11.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0003369829      0.0000000000
        2      0.0000001356      0.0003369644     -0.0000016286
        3      0.0000000000      0.0003369389      0.0000000000

    Force Error: 0.436770E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010336983   80013.8   96688.0  -0.000017916
   2   0.001000136   0.010336964   80030.2   96752.9  -0.000019330
   3   0.002000000   0.010336939   80141.6   96938.1  -0.000024701
     ===========================================================


  TIME: GANDRA  STEP:    12.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0003706605      0.0000000000
        2      0.0000001484      0.0003706415     -0.0000005268
        3      0.0000000000      0.0003706155      0.0000000000

    Force Error: 0.439715E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010370661   80015.1   97292.8  -0.000018500
   2   0.001000148   0.010370642   80030.5   97359.4  -0.000020679
   3   0.002000000   0.010370616   80141.9   97548.7  -0.000025426
     ===========================================================


  TIME: GANDRA  STEP:    13.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0004045811      0.0000000000
        2      0.0000001612      0.0004045618      0.0000007930
        3      0.0000000000      0.0004045353      0.0000000000

    Force Error: 0.442698E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010404581   80027.2   97904.2  -0.000018970
   2   0.001000161   0.010404562   80041.5   97972.3  -0.000022076
   3   0.002000000   0.010404535   80152.7   98165.2  -0.000026011
     ===========================================================


  TIME: GANDRA  STEP:    14.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0004387465      0.0000000000
        2      0.0000001739      0.0004387269      0.0000023279
        3      0.0000000000      0.0004387000      0.0000000000

    Force Error: 0.445715E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010438746   80047.1   98522.1  -0.000019342
   2   0.001000174   0.010438727   80060.4   98591.8  -0.000023536
   3   0.002000000   0.010438700   80171.1   98788.0  -0.000026478
     ===========================================================


  TIME: GANDRA  STEP:    15.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0004731569      0.0000000000
        2      0.0000001865      0.0004731370      0.0000040753
        3      0.0000000000      0.0004731099      0.0000000000

    Force Error: 0.448744E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010473157   80072.7   99146.8  -0.000019627
   2   0.001000187   0.010473137   80084.9   99217.8  -0.000025072
   3   0.002000000   0.010473110   80195.1   99417.1  -0.000026844
     ===========================================================


  TIME: GANDRA  STEP:    16.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0005078120      0.0000000000
        2      0.0000001991      0.0005077920      0.0000060322
        3      0.0000000000      0.0005077647      0.0000000000

    Force Error: 0.451776E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010507812   80102.7   99778.1  -0.000019832
   2   0.001000199   0.010507792   80113.8   99850.5  -0.000026691
   3   0.002000000   0.010507765   80223.4  100052.7  -0.000027120
     ===========================================================


  TIME: GANDRA  STEP:    17.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0005427109      0.0000000000
        2      0.0000002115      0.0005426909      0.0000081960
        3      0.0000000000      0.0005426634      0.0000000000

    Force Error: 0.454800E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010542711   80136.0  100416.3  -0.000019964
   2   0.001000212   0.010542691   80146.1  100490.1  -0.000028399
   3   0.002000000   0.010542663   80254.9  100695.1  -0.000027317
     ===========================================================


  TIME: GANDRA  STEP:    18.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0005778522      0.0000000000
        2      0.0000002239      0.0005778322      0.0000105639
        3      0.0000000000      0.0005778047      0.0000000000

    Force Error: 0.457808E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010577852   80171.9  101061.4  -0.000020028
   2   0.001000224   0.010577832   80180.9  101136.4  -0.000030199
   3   0.002000000   0.010577805   80289.0  101344.2  -0.000027440
     ===========================================================


  TIME: GANDRA  STEP:    19.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0006132341      0.0000000000
        2      0.0000002362      0.0006132142      0.0000131333
        3      0.0000000000      0.0006131867      0.0000000000

    Force Error: 0.460795E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010613234   80209.9  101713.3  -0.000020028
   2   0.001000236   0.010613214   80217.8  101789.6  -0.000032094
   3   0.002000000   0.010613187   80325.2  102000.1  -0.000027495
     ===========================================================


  TIME: GANDRA  STEP:    20.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0006488545      0.0000000000
        2      0.0000002484      0.0006488347      0.0000159017
        3      0.0000000000      0.0006488072      0.0000000000

    Force Error: 0.463754E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010648854   80249.6  102372.2  -0.000019966
   2   0.001000248   0.010648835   80256.4  102449.8  -0.000034085
   3   0.002000000   0.010648807   80363.1  102662.9  -0.000027486
     ===========================================================


  TIME: GANDRA  STEP:    21.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0006847108      0.0000000000
        2      0.0000002606      0.0006846912      0.0000188664
        3      0.0000000000      0.0006846639      0.0000000000

    Force Error: 0.466682E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010684711   80290.8  103038.0  -0.000019846
   2   0.001000261   0.010684691   80296.6  103116.9  -0.000036174
   3   0.002000000   0.010684664   80402.5  103332.6  -0.000027417
     ===========================================================


  TIME: GANDRA  STEP:    22.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0007208004      0.0000000000
        2      0.0000002727      0.0007207810      0.0000220250
        3      0.0000000000      0.0007207539      0.0000000000

    Force Error: 0.469574E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010720800   80333.3  103710.8  -0.000019669
   2   0.001000273   0.010720781   80338.0  103790.9  -0.000038359
   3   0.002000000   0.010720754   80443.1  104009.4  -0.000027289
     ===========================================================


  TIME: GANDRA  STEP:    23.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0007571203      0.0000000000
        2      0.0000002847      0.0007571011      0.0000253750
        3      0.0000000000      0.0007570743      0.0000000000

    Force Error: 0.472427E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010757120   80377.0  104390.5  -0.000019436
   2   0.001000285   0.010757101   80380.7  104472.0  -0.000040643
   3   0.002000000   0.010757074   80485.0  104693.1  -0.000027106
     ===========================================================


  TIME: GANDRA  STEP:    24.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0007936672      0.0000000000
        2      0.0000002966      0.0007936484      0.0000289140
        3      0.0000000000      0.0007936218      0.0000000000

    Force Error: 0.475237E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010793667   80421.8  105077.3  -0.000019149
   2   0.001000297   0.010793648   80424.4  105160.1  -0.000043022
   3   0.002000000   0.010793622   80528.0  105383.8  -0.000026868
     ===========================================================


  TIME: GANDRA  STEP:    25.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0008304377      0.0000000000
        2      0.0000003084      0.0008304192      0.0000326395
        3      0.0000000000      0.0008303930      0.0000000000

    Force Error: 0.478002E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010830438   80467.7  105771.1  -0.000018810
   2   0.001000308   0.010830419   80469.2  105855.1  -0.000045499
   3   0.002000000   0.010830393   80572.1  106081.5  -0.000026577
     ===========================================================


  TIME: GANDRA  STEP:    26.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0008674281      0.0000000000
        2      0.0000003202      0.0008674101      0.0000365492
        3      0.0000000000      0.0008673843      0.0000000000

    Force Error: 0.480718E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010867428   80514.5  106471.8  -0.000018419
   2   0.001000320   0.010867410   80515.1  106557.2  -0.000048070
   3   0.002000000   0.010867384   80617.2  106786.3  -0.000026235
     ===========================================================


  TIME: GANDRA  STEP:    27.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0009046347      0.0000000000
        2      0.0000003319      0.0009046172      0.0000406407
        3      0.0000000000      0.0009045918      0.0000000000

    Force Error: 0.483384E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010904635   80562.3  107179.6  -0.000017977
   2   0.001000332   0.010904617   80561.9  107266.2  -0.000050736
   3   0.002000000   0.010904592   80663.2  107498.0  -0.000025842
     ===========================================================


  TIME: GANDRA  STEP:    28.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0009420532      0.0000000000
        2      0.0000003436      0.0009420363      0.0000449117
        3      0.0000000000      0.0009420114      0.0000000000

    Force Error: 0.485997E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010942053   80611.1  107894.3  -0.000017486
   2   0.001000344   0.010942036   80609.6  107982.3  -0.000053496
   3   0.002000000   0.010942011   80710.2  108216.8  -0.000025399
     ===========================================================


  TIME: GANDRA  STEP:    29.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0009796796      0.0000000000
        2      0.0000003552      0.0009796632      0.0000493600
        3      0.0000000000      0.0009796388      0.0000000000

    Force Error: 0.488553E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010979680   80660.8  108616.0  -0.000016946
   2   0.001000355   0.010979663   80658.3  108705.3  -0.000056349
   3   0.002000000   0.010979639   80758.2  108942.6  -0.000024908
     ===========================================================


  TIME: GANDRA  STEP:    30.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0010175092      0.0000000000
        2      0.0000003667      0.0010174935      0.0000539831
        3      0.0000000000      0.0010174697      0.0000000000

    Force Error: 0.491051E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011017509   80711.5  109344.7  -0.000016357
   2   0.001000367   0.011017494   80708.0  109435.3  -0.000059294
   3   0.002000000   0.011017470   80807.2  109675.4  -0.000024369
     ===========================================================


  TIME: GANDRA  STEP:    31.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0010555376      0.0000000000
        2      0.0000003781      0.0010555225      0.0000587789
        3      0.0000000000      0.0010554994      0.0000000000

    Force Error: 0.493488E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011055538   80763.1  110080.3  -0.000015722
   2   0.001000378   0.011055523   80758.6  110172.3  -0.000062329
   3   0.002000000   0.011055499   80857.0  110415.1  -0.000023782
     ===========================================================


  TIME: GANDRA  STEP:    32.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0010937597      0.0000000000
        2      0.0000003895      0.0010937454      0.0000637449
        3      0.0000000000      0.0010937229      0.0000000000

    Force Error: 0.495861E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011093760   80815.6  110822.8  -0.000015039
   2   0.001000389   0.011093745   80810.1  110916.1  -0.000065453
   3   0.002000000   0.011093723   80907.9  111161.8  -0.000023150
     ===========================================================


  TIME: GANDRA  STEP:    33.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0011321707      0.0000000000
        2      0.0000004008      0.0011321571      0.0000688790
        3      0.0000000000      0.0011321354      0.0000000000

    Force Error: 0.498170E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011132171   80869.1  111572.2  -0.000014311
   2   0.001000401   0.011132157   80862.6  111666.9  -0.000068667
   3   0.002000000   0.011132135   80959.7  111915.3  -0.000022471
     ===========================================================


  TIME: GANDRA  STEP:    34.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0011707652      0.0000000000
        2      0.0000004120      0.0011707525      0.0000741788
        3      0.0000000000      0.0011707315      0.0000000000

    Force Error: 0.500410E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011170765   80923.5  112328.4  -0.000013537
   2   0.001000412   0.011170752   80916.0  112424.4  -0.000071967
   3   0.002000000   0.011170731   81012.4  112675.8  -0.000021748
     ===========================================================


  TIME: GANDRA  STEP:    35.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0012095378      0.0000000000
        2      0.0000004231      0.0012095260      0.0000796421
        3      0.0000000000      0.0012095058      0.0000000000

    Force Error: 0.502580E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011209538   80978.8  113091.4  -0.000012718
   2   0.001000423   0.011209526   80970.3  113188.8  -0.000075354
   3   0.002000000   0.011209506   81066.1  113443.0  -0.000020980
     ===========================================================


  TIME: GANDRA  STEP:    36.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0012484830      0.0000000000
        2      0.0000004342      0.0012484721      0.0000852665
        3      0.0000000000      0.0012484528      0.0000000000

    Force Error: 0.504677E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011248483   81035.1  113861.2  -0.000011855
   2   0.001000434   0.011248472   81025.7  113960.0  -0.000078825
   3   0.002000000   0.011248453   81120.7  114217.1  -0.000020168
     ===========================================================


  TIME: GANDRA  STEP:    37.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0012875949      0.0000000000
        2      0.0000004452      0.0012875849      0.0000910497
        3      0.0000000000      0.0012875665      0.0000000000

    Force Error: 0.506699E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011287595   81092.3  114637.7  -0.000010949
   2   0.001000445   0.011287585   81081.9  114737.9  -0.000082381
   3   0.002000000   0.011287567   81176.3  114997.9  -0.000019313
     ===========================================================


  TIME: GANDRA  STEP:    38.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0013268676      0.0000000000
        2      0.0000004562      0.0013268586      0.0000969895
        3      0.0000000000      0.0013268411      0.0000000000

    Force Error: 0.508644E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011326868   81150.5  115420.8  -0.000010000
   2   0.001000456   0.011326859   81139.1  115522.4  -0.000086019
   3   0.002000000   0.011326841   81232.9  115785.4  -0.000018416
     ===========================================================


  TIME: GANDRA  STEP:    39.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0013662948      0.0000000000
        2      0.0000004671      0.0013662868      0.0001030833
        3      0.0000000000      0.0013662703      0.0000000000

    Force Error: 0.510509E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011366295   81209.6  116210.5  -0.000009009
   2   0.001000467   0.011366287   81197.3  116313.5  -0.000089738
   3   0.002000000   0.011366270   81290.4  116579.5  -0.000017476
     ===========================================================


  TIME: GANDRA  STEP:    40.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0014058701      0.0000000000
        2      0.0000004779      0.0014058632      0.0001093289
        3      0.0000000000      0.0014058478      0.0000000000

    Force Error: 0.512292E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011405870   81269.7  117006.8  -0.000007977
   2   0.001000478   0.011405863   81256.4  117111.2  -0.000093538
   3   0.002000000   0.011405848   81348.9  117380.1  -0.000016496
     ===========================================================


  TIME: GANDRA  STEP:    41.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0014455871      0.0000000000
        2      0.0000004886      0.0014455813      0.0001157239
        3      0.0000000000      0.0014455669      0.0000000000

    Force Error: 0.513992E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011445587   81330.8  117809.5  -0.000006903
   2   0.001000489   0.011445581   81316.5  117915.3  -0.000097416
   3   0.002000000   0.011445567   81408.4  118187.3  -0.000015475
     ===========================================================


  TIME: GANDRA  STEP:    42.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0014854390      0.0000000000
        2      0.0000004993      0.0014854344      0.0001222657
        3      0.0000000000      0.0014854211      0.0000000000

    Force Error: 0.515604E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011485439   81392.8  118618.6  -0.000005789
   2   0.001000499   0.011485434   81377.6  118725.9  -0.000101372
   3   0.002000000   0.011485421   81468.8  119000.9  -0.000014414
     ===========================================================


  TIME: GANDRA  STEP:    43.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0015254188      0.0000000000
        2      0.0000005099      0.0015254154      0.0001289520
        3      0.0000000000      0.0015254032      0.0000000000

    Force Error: 0.517129E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011525419   81455.7  119434.1  -0.000004635
   2   0.001000510   0.011525415   81439.6  119542.8  -0.000105404
   3   0.002000000   0.011525403   81530.2  119820.8  -0.000013313
     ===========================================================


  TIME: GANDRA  STEP:    44.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0015655195      0.0000000000
        2      0.0000005204      0.0015655173      0.0001357802
        3      0.0000000000      0.0015655063      0.0000000000

    Force Error: 0.518563E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011565519   81519.6  120255.7  -0.000003443
   2   0.001000520   0.011565517   81502.6  120365.8  -0.000109512
   3   0.002000000   0.011565506   81592.6  120646.9  -0.000012174
     ===========================================================


  TIME: GANDRA  STEP:    45.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0016057337      0.0000000000
        2      0.0000005308      0.0016057327      0.0001427478
        3      0.0000000000      0.0016057229      0.0000000000

    Force Error: 0.519903E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011605734   81584.5  121083.5  -0.000002212
   2   0.001000531   0.011605733   81566.6  121195.1  -0.000113693
   3   0.002000000   0.011605723   81656.0  121479.3  -0.000010997
     ===========================================================


  TIME: GANDRA  STEP:    46.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0016460539      0.0000000000
        2      0.0000005412      0.0016460543      0.0001498522
        3      0.0000000000      0.0016460458      0.0000000000

    Force Error: 0.521149E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011646054   81650.4  121917.4  -0.000000943
   2   0.001000541   0.011646054   81631.5  122030.4  -0.000117946
   3   0.002000000   0.011646046   81720.3  122317.7  -0.000009782
     ===========================================================


  TIME: GANDRA  STEP:    47.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0016864726      0.0000000000
        2      0.0000005515      0.0016864743      0.0001570908
        3      0.0000000000      0.0016864671      0.0000000000

    Force Error: 0.522298E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011686473   81717.2  122757.2   0.000000363
   2   0.001000552   0.011686474   81697.4  122871.6  -0.000122271
   3   0.002000000   0.011686467   81785.6  123162.0  -0.000008530
     ===========================================================


  TIME: GANDRA  STEP:    48.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0017269820      0.0000000000
        2      0.0000005618      0.0017269850      0.0001644609
        3      0.0000000000      0.0017269791      0.0000000000

    Force Error: 0.523347E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011726982   81784.9  123602.8   0.000001706
   2   0.001000562   0.011726985   81764.3  123718.7  -0.000126664
   3   0.002000000   0.011726979   81851.9  124012.2  -0.000007242
     ===========================================================


  TIME: GANDRA  STEP:    49.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0017675739      0.0000000000
        2      0.0000005719      0.0017675784      0.0001719597
        3      0.0000000000      0.0017675738      0.0000000000

    Force Error: 0.524296E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011767574   81853.7  124454.1   0.000003084
   2   0.001000572   0.011767578   81832.1  124571.5  -0.000131126
   3   0.002000000   0.011767574   81919.2  124868.2  -0.000005919
     ===========================================================


  TIME: GANDRA  STEP:    50.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0018082403      0.0000000000
        2      0.0000005820      0.0018082463      0.0001795845
        3      0.0000000000      0.0018082431      0.0000000000

    Force Error: 0.525141E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011808240   81923.4  125311.1   0.000004498
   2   0.001000582   0.011808246   81900.9  125429.9  -0.000135654
   3   0.002000000   0.011808243   81987.4  125729.8  -0.000004561
     ===========================================================


  TIME: GANDRA  STEP:    51.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0018489729      0.0000000000
        2      0.0000005920      0.0018489803      0.0001873325
        3      0.0000000000      0.0018489786      0.0000000000

    Force Error: 0.525882E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011848973   81994.1  126173.5   0.000005946
   2   0.001000592   0.011848980   81970.7  126293.8  -0.000140248
   3   0.002000000   0.011848979   82056.7  126596.9  -0.000003168
     ===========================================================


  TIME: GANDRA  STEP:    52.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0018897632      0.0000000000
        2      0.0000006020      0.0018897721      0.0001952007
        3      0.0000000000      0.0018897719      0.0000000000

    Force Error: 0.526516E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011889763   82065.7  127041.3   0.000007427
   2   0.001000602   0.011889772   82041.5  127163.1  -0.000144905
   3   0.002000000   0.011889772   82126.9  127469.4  -0.000001742
     ===========================================================


  TIME: GANDRA  STEP:    53.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0019306026      0.0000000000
        2      0.0000006118      0.0019306131      0.0002031862
        3      0.0000000000      0.0019306143      0.0000000000

    Force Error: 0.527041E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011930603   82138.3  127914.4   0.000008942
   2   0.001000612   0.011930613   82113.2  128037.6  -0.000149623
   3   0.002000000   0.011930614   82198.0  128347.1  -0.000000283
     ===========================================================


  TIME: GANDRA  STEP:    54.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0019714823      0.0000000000
        2      0.0000006216      0.0019714944      0.0002112861
        3      0.0000000000      0.0019714971      0.0000000000

    Force Error: 0.527456E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011971482   82211.8  128792.5   0.000010489
   2   0.001000622   0.011971494   82185.9  128917.2  -0.000154402
   3   0.002000000   0.011971497   82270.2  129229.9   0.000001208
     ===========================================================


  TIME: GANDRA  STEP:    55.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0020123935      0.0000000000
        2      0.0000006313      0.0020124071      0.0002194972
        3      0.0000000000      0.0020124114      0.0000000000

    Force Error: 0.527760E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012012393   82286.4  129675.5   0.000012068
   2   0.001000631   0.012012407   82259.5  129801.7  -0.000159240
   3   0.002000000   0.012012411   82343.3  130117.7   0.000002730
     ===========================================================


  TIME: GANDRA  STEP:    56.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0020533270      0.0000000000
        2      0.0000006410      0.0020533423      0.0002278164
        3      0.0000000000      0.0020533482      0.0000000000

    Force Error: 0.527950E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012053327   82361.8  130563.4   0.000013678
   2   0.001000641   0.012053342   82334.2  130691.1  -0.000164134
   3   0.002000000   0.012053348   82417.4  131010.3   0.000004283
     ===========================================================


  TIME: GANDRA  STEP:    57.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0020942738      0.0000000000
        2      0.0000006505      0.0020942907      0.0002362406
        3      0.0000000000      0.0020942982      0.0000000000

    Force Error: 0.528025E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012094274   82438.2  131455.8   0.000015318
   2   0.001000651   0.012094291   82409.7  131585.0  -0.000169084
   3   0.002000000   0.012094298   82492.5  131907.5   0.000005866
     ===========================================================


  TIME: GANDRA  STEP:    58.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0021352245      0.0000000000
        2      0.0000006600      0.0021352432      0.0002447665
        3      0.0000000000      0.0021352523      0.0000000000

    Force Error: 0.527984E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012135224   82515.6  132352.8   0.000016987
   2   0.001000660   0.012135243   82486.2  132483.4  -0.000174087
   3   0.002000000   0.012135252   82568.5  132809.2   0.000007479
     ===========================================================


  TIME: GANDRA  STEP:    59.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0021761698      0.0000000000
        2      0.0000006694      0.0021761902      0.0002533907
        3      0.0000000000      0.0021762010      0.0000000000

    Force Error: 0.527825E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012176170   82593.9  133254.0   0.000018685
   2   0.001000669   0.012176190   82563.7  133386.1  -0.000179142
   3   0.002000000   0.012176201   82645.4  133715.2   0.000009119
     ===========================================================


  TIME: GANDRA  STEP:    60.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0022171001      0.0000000000
        2      0.0000006787      0.0022171223      0.0002621100
        3      0.0000000000      0.0022171348      0.0000000000

    Force Error: 0.527548E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012217100   82673.1  134159.4   0.000020411
   2   0.001000679   0.012217122   82642.1  134293.0  -0.000184247
   3   0.002000000   0.012217135   82723.4  134625.3   0.000010788
     ===========================================================


  TIME: GANDRA  STEP:    61.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0022580059      0.0000000000
        2      0.0000006880      0.0022580299      0.0002709208
        3      0.0000000000      0.0022580441      0.0000000000

    Force Error: 0.527151E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012258006   82753.3  135068.7   0.000022164
   2   0.001000688   0.012258030   82721.5  135203.7  -0.000189400
   3   0.002000000   0.012258044   82802.2  135539.4   0.000012483
     ===========================================================


  TIME: GANDRA  STEP:    62.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0022988775      0.0000000000
        2      0.0000006971      0.0022989032      0.0002798197
        3      0.0000000000      0.0022989192      0.0000000000

    Force Error: 0.526634E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012298877   82834.4  135981.7   0.000023943
   2   0.001000697   0.012298903   82801.7  136118.3  -0.000194598
   3   0.002000000   0.012298919   82882.0  136457.3   0.000014204
     ===========================================================


  TIME: GANDRA  STEP:    63.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0023397051      0.0000000000
        2      0.0000007062      0.0023397326      0.0002888031
        3      0.0000000000      0.0023397504      0.0000000000

    Force Error: 0.525995E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012339705   82916.4  136898.3   0.000025747
   2   0.001000706   0.012339733   82883.0  137036.4  -0.000199841
   3   0.002000000   0.012339750   82962.8  137378.7   0.000015951
     ===========================================================


  TIME: GANDRA  STEP:    64.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0023804788      0.0000000000
        2      0.0000007152      0.0023805083      0.0002978674
        3      0.0000000000      0.0023805278      0.0000000000

    Force Error: 0.525233E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012380479   82999.3  137818.3   0.000027576
   2   0.001000715   0.012380508   82965.1  137957.8  -0.000205127
   3   0.002000000   0.012380528   83044.5  138303.5   0.000017721
     ===========================================================


  TIME: GANDRA  STEP:    65.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0024211888      0.0000000000
        2      0.0000007241      0.0024212201      0.0003070089
        3      0.0000000000      0.0024212415      0.0000000000

    Force Error: 0.524348E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012421189   83083.1  138741.5   0.000029429
   2   0.001000724   0.012421220   83048.1  138882.4  -0.000210452
   3   0.002000000   0.012421241   83127.0  139231.4   0.000019516
     ===========================================================


  TIME: GANDRA  STEP:    66.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0024618252      0.0000000000
        2      0.0000007329      0.0024618584      0.0003162239
        3      0.0000000000      0.0024618816      0.0000000000

    Force Error: 0.523339E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012461825   83167.9  139667.6   0.000031304
   2   0.001000733   0.012461858   83132.1  139810.0  -0.000215816
   3   0.002000000   0.012461882   83210.5  140162.3   0.000021333
     ===========================================================


  TIME: GANDRA  STEP:    67.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025023778      0.0000000000
        2      0.0000007417      0.0025024130      0.0003255085
        3      0.0000000000      0.0025024380      0.0000000000

    Force Error: 0.522207E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012502378   83253.5  140596.5   0.000033201
   2   0.001000742   0.012502413   83216.9  140740.3  -0.000221215
   3   0.002000000   0.012502438   83295.0  141096.0   0.000023171
     ===========================================================


  TIME: GANDRA  STEP:    68.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025428368      0.0000000000
        2      0.0000007503      0.0025428739      0.0003348590
        3      0.0000000000      0.0025429008      0.0000000000

    Force Error: 0.520950E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012542837   83340.0  141527.9   0.000035120
   2   0.001000750   0.012542874   83302.6  141673.2  -0.000226649
   3   0.002000000   0.012542901   83380.3  142032.2   0.000025031
     ===========================================================


  TIME: GANDRA  STEP:    69.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025831920      0.0000000000
        2      0.0000007589      0.0025832310      0.0003442714
        3      0.0000000000      0.0025832598      0.0000000000

    Force Error: 0.519568E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012583192   83427.4  142461.6   0.000037058
   2   0.001000759   0.012583231   83389.3  142608.3  -0.000232114
   3   0.002000000   0.012583260   83466.5  142970.6   0.000026910
     ===========================================================


  TIME: GANDRA  STEP:    70.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026234334      0.0000000000
        2      0.0000007674      0.0026234744      0.0003537417
        3      0.0000000000      0.0026235051      0.0000000000

    Force Error: 0.518062E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012623433   83515.6  143397.3   0.000039016
   2   0.001000767   0.012623474   83476.7  143545.5  -0.000237610
   3   0.002000000   0.012623505   83553.5  143911.2   0.000028809
     ===========================================================


  TIME: GANDRA  STEP:    71.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026635509      0.0000000000
        2      0.0000007758      0.0026635939      0.0003632661
        3      0.0000000000      0.0026636265      0.0000000000

    Force Error: 0.516431E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012663551   83604.7  144335.0   0.000040991
   2   0.001000776   0.012663594   83565.1  144484.6  -0.000243133
   3   0.002000000   0.012663627   83641.5  144853.6   0.000030726
     ===========================================================


  TIME: GANDRA  STEP:    72.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0027035344      0.0000000000
        2      0.0000007841      0.0027035794      0.0003728403
        3      0.0000000000      0.0027036140      0.0000000000

    Force Error: 0.514676E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012703534   83694.6  145274.2   0.000042984
   2   0.001000784   0.012703579   83654.3  145425.2  -0.000248681
   3   0.002000000   0.012703614   83730.3  145797.6   0.000032660
     ===========================================================


  TIME: GANDRA  STEP:    73.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0027433741      0.0000000000
        2      0.0000007923      0.0027434211      0.0003824604
        3      0.0000000000      0.0027434577      0.0000000000

    Force Error: 0.512797E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012743374   83785.3  146214.8   0.000044994
   2   0.001000792   0.012743421   83744.3  146367.2  -0.000254252
   3   0.002000000   0.012743458   83819.9  146742.9   0.000034610
     ===========================================================


  TIME: GANDRA  STEP:    74.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0027830598      0.0000000000
        2      0.0000008004      0.0027831088      0.0003921222
        3      0.0000000000      0.0027831474      0.0000000000

    Force Error: 0.510794E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012783060   83876.9  147156.5   0.000047018
   2   0.001000800   0.012783109   83835.2  147310.4  -0.000259844
   3   0.002000000   0.012783147   83910.4  147689.4   0.000036575
     ===========================================================


  TIME: GANDRA  STEP:    75.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0028225816      0.0000000000
        2      0.0000008084      0.0028226327      0.0004018216
        3      0.0000000000      0.0028226732      0.0000000000

    Force Error: 0.508669E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012822582   83969.3  148099.1   0.000049057
   2   0.001000808   0.012822633   83926.8  148254.4  -0.000265455
   3   0.002000000   0.012822673   84001.7  148636.8   0.000038554
     ===========================================================


  TIME: GANDRA  STEP:    76.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0028619296      0.0000000000
        2      0.0000008163      0.0028619828      0.0004115544
        3      0.0000000000      0.0028620253      0.0000000000

    Force Error: 0.506421E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012861930   84062.5  149042.4   0.000051110
   2   0.001000816   0.012861983   84019.3  149199.0  -0.000271082
   3   0.002000000   0.012862025   84093.8  149584.7   0.000040547
     ===========================================================


  TIME: GANDRA  STEP:    77.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0029010941      0.0000000000
        2      0.0000008242      0.0029011493      0.0004213164
        3      0.0000000000      0.0029011939      0.0000000000

    Force Error: 0.504053E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012901094   84156.4  149986.0   0.000053174
   2   0.001000824   0.012901149   84112.6  150144.0  -0.000276724
   3   0.002000000   0.012901194   84186.8  150533.0   0.000042552
     ===========================================================


  TIME: GANDRA  STEP:    78.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0029400652      0.0000000000
        2      0.0000008319      0.0029401225      0.0004311033
        3      0.0000000000      0.0029401691      0.0000000000

    Force Error: 0.501564E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012940065   84251.2  150929.7   0.000055250
   2   0.001000832   0.012940123   84206.6  151089.0  -0.000282377
   3   0.002000000   0.012940169   84280.5  151481.4   0.000044569
     ===========================================================


  TIME: GANDRA  STEP:    79.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0029788334      0.0000000000
        2      0.0000008396      0.0029788928      0.0004409110
        3      0.0000000000      0.0029789414      0.0000000000

    Force Error: 0.498956E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012978833   84346.7  151873.3   0.000057336
   2   0.001000840   0.012978893   84301.4  152034.0  -0.000288039
   3   0.002000000   0.012978941   84375.0  152429.7   0.000046595
     ===========================================================


  TIME: GANDRA  STEP:    80.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0030173890      0.0000000000
        2      0.0000008471      0.0030174506      0.0004507351
        3      0.0000000000      0.0030175013      0.0000000000

    Force Error: 0.496230E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013017389   84442.9  152816.5   0.000059432
   2   0.001000847   0.013017451   84397.0  152978.5  -0.000293709
   3   0.002000000   0.013017501   84470.2  153377.5   0.000048631
     ===========================================================


  TIME: GANDRA  STEP:    81.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0030557228      0.0000000000
        2      0.0000008546      0.0030557865      0.0004605715
        3      0.0000000000      0.0030558392      0.0000000000

    Force Error: 0.493389E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013055723   84539.8  153759.0   0.000061536
   2   0.001000855   0.013055786   84493.3  153922.3  -0.000299383
   3   0.002000000   0.013055839   84566.2  154324.6   0.000050675
     ===========================================================


  TIME: GANDRA  STEP:    82.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0030938254      0.0000000000
        2      0.0000008620      0.0030938911      0.0004704160
        3      0.0000000000      0.0030939459      0.0000000000

    Force Error: 0.490433E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013093825   84637.5  154700.5   0.000063646
   2   0.001000862   0.013093891   84590.3  154865.2  -0.000305060
   3   0.002000000   0.013093946   84662.9  155270.8   0.000052726
     ===========================================================


  TIME: GANDRA  STEP:    83.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0031316876      0.0000000000
        2      0.0000008693      0.0031317555      0.0004802641
        3      0.0000000000      0.0031318123      0.0000000000

    Force Error: 0.487364E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013131688   84735.9  155640.9   0.000065763
   2   0.001000869   0.013131755   84688.0  155806.8  -0.000310737
   3   0.002000000   0.013131812   84760.4  156215.7   0.000054783
     ===========================================================


  TIME: GANDRA  STEP:    84.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0031693005      0.0000000000
        2      0.0000008764      0.0031693705      0.0004901118
        3      0.0000000000      0.0031694294      0.0000000000

    Force Error: 0.484184E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013169300   84834.9  156579.8   0.000067886
   2   0.001000876   0.013169371   84786.4  156747.0  -0.000316412
   3   0.002000000   0.013169429   84858.5  157159.2   0.000056845
     ===========================================================


  TIME: GANDRA  STEP:    85.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032066552      0.0000000000
        2      0.0000008835      0.0032067273      0.0004999548
        3      0.0000000000      0.0032067883      0.0000000000

    Force Error: 0.480895E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013206655   84934.6  157516.9   0.000070012
   2   0.001000884   0.013206727   84885.5  157685.4  -0.000322082
   3   0.002000000   0.013206788   84957.3  158100.9   0.000058911
     ===========================================================


  TIME: GANDRA  STEP:    86.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032437431      0.0000000000
        2      0.0000008905      0.0032438174      0.0005097890
        3      0.0000000000      0.0032438804      0.0000000000

    Force Error: 0.477500E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013243743   85035.0  158452.0   0.000072141
   2   0.001000890   0.013243817   84985.3  158621.8  -0.000327746
   3   0.002000000   0.013243880   85056.8  159040.5   0.000060980
     ===========================================================


  TIME: GANDRA  STEP:    87.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032805557      0.0000000000
        2      0.0000008974      0.0032806321      0.0005196102
        3      0.0000000000      0.0032806972      0.0000000000

    Force Error: 0.474000E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013280556   85136.0  159384.9   0.000074273
   2   0.001000897   0.013280632   85085.7  159555.9  -0.000333401
   3   0.002000000   0.013280697   85157.0  159977.9   0.000063051
     ===========================================================


  TIME: GANDRA  STEP:    88.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0033170847      0.0000000000
        2      0.0000009041      0.0033171633      0.0005294142
        3      0.0000000000      0.0033172305      0.0000000000

    Force Error: 0.470398E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013317085   85237.6  160315.2   0.000076405
   2   0.001000904   0.013317163   85186.7  160487.4  -0.000339044
   3   0.002000000   0.013317230   85257.8  160912.6   0.000065123
     ===========================================================


  TIME: GANDRA  STEP:    89.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0033533221      0.0000000000
        2      0.0000009108      0.0033534028      0.0005391970
        3      0.0000000000      0.0033534721      0.0000000000

    Force Error: 0.466697E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013353322   85339.8  161242.6   0.000078537
   2   0.001000911   0.013353403   85288.3  161416.1  -0.000344674
   3   0.002000000   0.013353472   85359.2  161844.5   0.000067195
     ===========================================================


  TIME: GANDRA  STEP:    90.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0033892600      0.0000000000
        2      0.0000009174      0.0033893428      0.0005489547
        3      0.0000000000      0.0033894142      0.0000000000

    Force Error: 0.462899E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013389260   85442.6  162167.0   0.000080668
   2   0.001000917   0.013389343   85390.6  162341.7  -0.000350289
   3   0.002000000   0.013389414   85461.2  162773.3   0.000069266
     ===========================================================


  TIME: GANDRA  STEP:    91.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0034248908      0.0000000000
        2      0.0000009239      0.0034249757      0.0005586831
        3      0.0000000000      0.0034250491      0.0000000000

    Force Error: 0.459006E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013424891   85546.0  163088.0   0.000082797
   2   0.001000924   0.013424976   85493.4  163263.9  -0.000355886
   3   0.002000000   0.013425049   85563.8  163698.7   0.000071335
     ===========================================================


  TIME: GANDRA  STEP:    92.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0034602071      0.0000000000
        2      0.0000009303      0.0034602941      0.0005683784
        3      0.0000000000      0.0034603696      0.0000000000

    Force Error: 0.455023E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013460207   85649.9  164005.4   0.000084923
   2   0.001000930   0.013460294   85596.7  164182.4  -0.000361462
   3   0.002000000   0.013460370   85667.0  164620.5   0.000073401
     ===========================================================


  TIME: GANDRA  STEP:    93.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0034952017      0.0000000000
        2      0.0000009366      0.0034952908      0.0005780368
        3      0.0000000000      0.0034953684      0.0000000000

    Force Error: 0.450951E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013495202   85754.3  164918.9   0.000087045
   2   0.001000937   0.013495291   85700.6  165097.1  -0.000367017
   3   0.002000000   0.013495368   85770.7  165538.3   0.000075462
     ===========================================================


  TIME: GANDRA  STEP:    94.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0035298677      0.0000000000
        2      0.0000009428      0.0035299590      0.0005876545
        3      0.0000000000      0.0035300385      0.0000000000

    Force Error: 0.446793E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013529868   85859.3  165828.3   0.000089162
   2   0.001000943   0.013529959   85805.0  166007.6  -0.000372548
   3   0.002000000   0.013530039   85875.0  166452.0   0.000077519
     ===========================================================


  TIME: GANDRA  STEP:    95.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0035641985      0.0000000000
        2      0.0000009489      0.0035642919      0.0005972278
        3      0.0000000000      0.0035643735      0.0000000000

    Force Error: 0.442553E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013564199   85964.7  166733.3   0.000091273
   2   0.001000949   0.013564292   85909.9  166913.7  -0.000378052
   3   0.002000000   0.013564374   85979.7  167361.2   0.000079569
     ===========================================================


  TIME: GANDRA  STEP:    96.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0035981877      0.0000000000
        2      0.0000009548      0.0035982832      0.0006067530
        3      0.0000000000      0.0035983668      0.0000000000

    Force Error: 0.438235E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013598188   86070.6  167633.6   0.000093377
   2   0.001000955   0.013598283   86015.4  167815.1  -0.000383529
   3   0.002000000   0.013598367   86085.0  168265.7   0.000081613
     ===========================================================


  TIME: GANDRA  STEP:    97.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0036318292      0.0000000000
        2      0.0000009607      0.0036319268      0.0006162267
        3      0.0000000000      0.0036320125      0.0000000000

    Force Error: 0.433840E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013631829   86177.0  168529.0   0.000095473
   2   0.001000961   0.013631927   86121.2  168711.6  -0.000388975
   3   0.002000000   0.013632012   86190.8  169165.4   0.000083648
     ===========================================================


  TIME: GANDRA  STEP:    98.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0036651172      0.0000000000
        2      0.0000009665      0.0036652168      0.0006256454
        3      0.0000000000      0.0036653045      0.0000000000

    Force Error: 0.429373E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013665117   86283.8  169419.2   0.000097561
   2   0.001000967   0.013665217   86227.6  169602.9  -0.000394390
   3   0.002000000   0.013665304   86297.0  170059.8   0.000085675
     ===========================================================


  TIME: GANDRA  STEP:    99.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0036980460      0.0000000000
        2      0.0000009722      0.0036981477      0.0006350057
        3      0.0000000000      0.0036982374      0.0000000000

    Force Error: 0.424838E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013698046   86391.1  170304.1   0.000099638
   2   0.001000972   0.013698148   86334.3  170488.7  -0.000399771
   3   0.002000000   0.013698237   86403.6  170948.7   0.000087692
     ===========================================================


  TIME: GANDRA  STEP:   100.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0037306105      0.0000000000
        2      0.0000009778      0.0037307142      0.0006443045
        3      0.0000000000      0.0037308059      0.0000000000

    Force Error: 0.420236E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013730610   86498.7  171183.3   0.000101705
   2   0.001000978   0.013730714   86441.5  171369.0  -0.000405117
   3   0.002000000   0.013730806   86510.7  171832.1   0.000089699
     ===========================================================


  TIME: GANDRA  STEP:   101.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0037628056      0.0000000000
        2      0.0000009833      0.0037629114      0.0006535386
        3      0.0000000000      0.0037630050      0.0000000000

    Force Error: 0.415573E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013762806   86606.8  172056.6   0.000103761
   2   0.001000983   0.013762911   86549.1  172243.3  -0.000410425
   3   0.002000000   0.013763005   86618.2  172709.5   0.000091694
     ===========================================================


  TIME: GANDRA  STEP:   102.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0037946266      0.0000000000
        2      0.0000009887      0.0037947344      0.0006627049
        3      0.0000000000      0.0037948301      0.0000000000

    Force Error: 0.410851E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013794627   86715.2  172923.8   0.000105804
   2   0.001000989   0.013794734   86657.0  173111.5  -0.000415695
   3   0.002000000   0.013794830   86726.1  173580.8   0.000093676
     ===========================================================


  TIME: GANDRA  STEP:   103.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0038260692      0.0000000000
        2      0.0000009940      0.0038261791      0.0006718006
        3      0.0000000000      0.0038262767      0.0000000000

    Force Error: 0.406074E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013826069   86823.9  173784.7   0.000107835
   2   0.001000994   0.013826179   86765.3  173973.4  -0.000420924
   3   0.002000000   0.013826277   86834.4  174445.7   0.000095646
     ===========================================================


  TIME: GANDRA  STEP:   104.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0038571293      0.0000000000
        2      0.0000009992      0.0038572411      0.0006808228
        3      0.0000000000      0.0038573407      0.0000000000

    Force Error: 0.401246E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013857129   86933.0  174639.1   0.000109852
   2   0.001000999   0.013857241   86874.0  174828.8  -0.000426111
   3   0.002000000   0.013857341   86943.0  175304.0   0.000097602
     ===========================================================


  TIME: GANDRA  STEP:   105.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0038878030      0.0000000000
        2      0.0000010043      0.0038879168      0.0006897689
        3      0.0000000000      0.0038880183      0.0000000000

    Force Error: 0.396370E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013887803   87042.4  175486.7   0.000111854
   2   0.001001004   0.013887917   86982.9  175677.3  -0.000431255
   3   0.002000000   0.013888018   87051.9  176155.6   0.000099543
     ===========================================================


  TIME: GANDRA  STEP:   106.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0039180869      0.0000000000
        2      0.0000010093      0.0039182027      0.0006986363
        3      0.0000000000      0.0039183061      0.0000000000

    Force Error: 0.391451E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013918087   87152.1  176327.4   0.000113841
   2   0.001001009   0.013918203   87092.2  176518.9  -0.000436355
   3   0.002000000   0.013918306   87161.2  177000.2   0.000101469
     ===========================================================


  TIME: GANDRA  STEP:   107.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0039479777      0.0000000000
        2      0.0000010142      0.0039480955      0.0007074226
        3      0.0000000000      0.0039482008      0.0000000000

    Force Error: 0.386490E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013947978   87262.0  177160.9   0.000115811
   2   0.001001014   0.013948095   87201.8  177353.3  -0.000441408
   3   0.002000000   0.013948201   87270.8  177837.6   0.000103379
     ===========================================================


  TIME: GANDRA  STEP:   108.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0039774726      0.0000000000
        2      0.0000010190      0.0039775923      0.0007161254
        3      0.0000000000      0.0039776995      0.0000000000

    Force Error: 0.381493E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013977473   87372.3  177987.0   0.000117766
   2   0.001001019   0.013977592   87311.6  178180.4  -0.000446414
   3   0.002000000   0.013977699   87380.6  178667.6   0.000105272
     ===========================================================


  TIME: GANDRA  STEP:   109.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0040065690      0.0000000000
        2      0.0000010237      0.0040066906      0.0007247425
        3      0.0000000000      0.0040067996      0.0000000000

    Force Error: 0.376463E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014006569   87482.7  178805.6   0.000119703
   2   0.001001024   0.014006691   87421.7  178999.9  -0.000451371
   3   0.002000000   0.014006800   87490.7  179490.0   0.000107148
     ===========================================================


  TIME: GANDRA  STEP:   110.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0040352644      0.0000000000
        2      0.0000010284      0.0040353880      0.0007332720
        3      0.0000000000      0.0040354988      0.0000000000

    Force Error: 0.371403E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014035264   87593.4  179616.6   0.000121622
   2   0.001001028   0.014035388   87532.0  179811.6  -0.000456279
   3   0.002000000   0.014035499   87601.1  180304.7   0.000109006
     ===========================================================


  TIME: GANDRA  STEP:   111.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0040635571      0.0000000000
        2      0.0000010329      0.0040636825      0.0007417118
        3      0.0000000000      0.0040637951      0.0000000000

    Force Error: 0.366318E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014063557   87704.3  180419.6   0.000123522
   2   0.001001033   0.014063682   87642.5  180615.5  -0.000461136
   3   0.002000000   0.014063795   87711.7  181111.5   0.000110845
     ===========================================================


  TIME: GANDRA  STEP:   112.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0040914451      0.0000000000
        2      0.0000010373      0.0040915723      0.0007500602
        3      0.0000000000      0.0040916868      0.0000000000

    Force Error: 0.361209E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014091445   87815.4  181214.6   0.000125404
   2   0.001001037   0.014091572   87753.3  181411.3  -0.000465941
   3   0.002000000   0.014091687   87822.5  181910.2   0.000112666
     ===========================================================


  TIME: GANDRA  STEP:   113.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0041189271      0.0000000000
        2      0.0000010417      0.0041190562      0.0007583155
        3      0.0000000000      0.0041191724      0.0000000000

    Force Error: 0.356082E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014118927   87926.7  182001.3   0.000127266
   2   0.001001042   0.014119056   87864.2  182198.9  -0.000470694
   3   0.002000000   0.014119172   87933.5  182700.7   0.000114466
     ===========================================================


  TIME: GANDRA  STEP:   114.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0041460019      0.0000000000
        2      0.0000010460      0.0041461328      0.0007664761
        3      0.0000000000      0.0041462508      0.0000000000

    Force Error: 0.350940E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014146002   88038.1  182779.8   0.000129108
   2   0.001001046   0.014146133   87975.3  182978.1  -0.000475393
   3   0.002000000   0.014146251   88044.7  183482.8   0.000116247
     ===========================================================


  TIME: GANDRA  STEP:   115.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0041726687      0.0000000000
        2      0.0000010501      0.0041728014      0.0007745406
        3      0.0000000000      0.0041729211      0.0000000000

    Force Error: 0.345785E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014172669   88149.7  183549.7   0.000130929
   2   0.001001050   0.014172801   88086.5  183748.8  -0.000480039
   3   0.002000000   0.014172921   88156.1  184256.4   0.000118007
     ===========================================================


  TIME: GANDRA  STEP:   116.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0041989268      0.0000000000
        2      0.0000010542      0.0041990613      0.0007825077
        3      0.0000000000      0.0041991828      0.0000000000

    Force Error: 0.340622E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014198927   88261.4  184311.0   0.000132730
   2   0.001001054   0.014199061   88197.9  184510.9  -0.000484629
   3   0.002000000   0.014199183   88267.6  185021.3   0.000119746
     ===========================================================


  TIME: GANDRA  STEP:   117.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0042247760      0.0000000000
        2      0.0000010582      0.0042249123      0.0007903763
        3      0.0000000000      0.0042250354      0.0000000000

    Force Error: 0.335453E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014224776   88373.2  185063.6   0.000134509
   2   0.001001058   0.014224912   88309.4  185264.2  -0.000489164
   3   0.002000000   0.014225035   88379.2  185777.5   0.000121464
     ===========================================================


  TIME: GANDRA  STEP:   118.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0042502162      0.0000000000
        2      0.0000010621      0.0042503542      0.0007981453
        3      0.0000000000      0.0042504790      0.0000000000

    Force Error: 0.330282E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014250216   88485.1  185807.2   0.000136267
   2   0.001001062   0.014250354   88421.0  186008.6  -0.000493643
   3   0.002000000   0.014250479   88491.0  186524.8   0.000123160
     ===========================================================


  TIME: GANDRA  STEP:   119.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0042752476      0.0000000000
        2      0.0000010659      0.0042753873      0.0008058137
        3      0.0000000000      0.0042755138      0.0000000000

    Force Error: 0.325113E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014275248   88597.1  186542.0   0.000138002
   2   0.001001066   0.014275387   88532.7  186744.1  -0.000498065
   3   0.002000000   0.014275514   88602.9  187263.0   0.000124834
     ===========================================================


  TIME: GANDRA  STEP:   120.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0042998706      0.0000000000
        2      0.0000010697      0.0043000120      0.0008133809
        3      0.0000000000      0.0043001401      0.0000000000

    Force Error: 0.319948E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014299871   88709.2  187267.6   0.000139716
   2   0.001001070   0.014300012   88644.5  187470.4  -0.000502431
   3   0.002000000   0.014300140   88714.9  187992.2   0.000126486
     ===========================================================


  TIME: GANDRA  STEP:   121.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0043240860      0.0000000000
        2      0.0000010733      0.0043242291      0.0008208460
        3      0.0000000000      0.0043243588      0.0000000000

    Force Error: 0.314789E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014324086   88821.3  187984.1   0.000141406
   2   0.001001073   0.014324229   88756.4  188187.6  -0.000506739
   3   0.002000000   0.014324359   88826.9  188712.1   0.000128115
     ===========================================================


  TIME: GANDRA  STEP:   122.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0043478947      0.0000000000
        2      0.0000010769      0.0043480394      0.0008282086
        3      0.0000000000      0.0043481707      0.0000000000

    Force Error: 0.309642E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014347895   88933.4  188691.3   0.000143074
   2   0.001001077   0.014348039   88868.3  188895.5  -0.000510990
   3   0.002000000   0.014348171   88939.0  189422.8   0.000129721
     ===========================================================


  TIME: GANDRA  STEP:   123.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0043712979      0.0000000000
        2      0.0000010804      0.0043714442      0.0008354682
        3      0.0000000000      0.0043715771      0.0000000000

    Force Error: 0.304507E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014371298   89045.6  189389.2   0.000144719
   2   0.001001080   0.014371444   88980.2  189594.0  -0.000515183
   3   0.002000000   0.014371577   89051.2  190124.1   0.000131304
     ===========================================================


  TIME: GANDRA  STEP:   124.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0043942970      0.0000000000
        2      0.0000010838      0.0043944450      0.0008426244
        3      0.0000000000      0.0043945794      0.0000000000

    Force Error: 0.299388E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014394297   89157.8  190077.6   0.000146340
   2   0.001001084   0.014394445   89092.1  190283.1  -0.000519317
   3   0.002000000   0.014394579   89163.4  190816.0   0.000132864
     ===========================================================


  TIME: GANDRA  STEP:   125.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0044168937      0.0000000000
        2      0.0000010871      0.0044170432      0.0008496771
        3      0.0000000000      0.0044171791      0.0000000000

    Force Error: 0.294288E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014416894   89270.0  190756.7   0.000147939
   2   0.001001087   0.014417043   89204.1  190962.8  -0.000523394
   3   0.002000000   0.014417179   89275.6  191498.4   0.000134400
     ===========================================================


  TIME: GANDRA  STEP:   126.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0044390897      0.0000000000
        2      0.0000010904      0.0044392408      0.0008566260
        3      0.0000000000      0.0044393782      0.0000000000

    Force Error: 0.289209E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014439090   89382.2  191426.1   0.000149513
   2   0.001001090   0.014439241   89316.1  191632.9  -0.000527413
   3   0.002000000   0.014439378   89387.8  192171.3   0.000135913
     ===========================================================


  TIME: GANDRA  STEP:   127.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0044608872      0.0000000000
        2      0.0000010935      0.0044610398      0.0008634713
        3      0.0000000000      0.0044611787      0.0000000000

    Force Error: 0.284154E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014460887   89494.4  192086.1   0.000151064
   2   0.001001094   0.014461040   89428.0  192293.5  -0.000531373
   3   0.002000000   0.014461179   89500.1  192834.5   0.000137402
     ===========================================================


  TIME: GANDRA  STEP:   128.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0044822884      0.0000000000
        2      0.0000010966      0.0044824424      0.0008702129
        3      0.0000000000      0.0044825828      0.0000000000

    Force Error: 0.279125E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014482288   89606.5  192736.4   0.000152592
   2   0.001001097   0.014482442   89539.9  192944.4  -0.000535275
   3   0.002000000   0.014482583   89612.3  193488.2   0.000138867
     ===========================================================


  TIME: GANDRA  STEP:   129.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0045032956      0.0000000000
        2      0.0000010996      0.0045034512      0.0008768511
        3      0.0000000000      0.0045035929      0.0000000000

    Force Error: 0.274125E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014503296   89718.6  193377.1   0.000154096
   2   0.001001100   0.014503451   89651.8  193585.7  -0.000539120
   3   0.002000000   0.014503593   89724.5  194132.2   0.000140309
     ===========================================================


  TIME: GANDRA  STEP:   130.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0045239117      0.0000000000
        2      0.0000011026      0.0045240687      0.0008833860
        3      0.0000000000      0.0045242118      0.0000000000

    Force Error: 0.269156E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014523912   89830.7  194008.1   0.000155575
   2   0.001001103   0.014524069   89763.7  194217.3  -0.000542906
   3   0.002000000   0.014524212   89836.6  194766.5   0.000141727
     ===========================================================


  TIME: GANDRA  STEP:   131.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0045441392      0.0000000000
        2      0.0000011055      0.0045442977      0.0008898181
        3      0.0000000000      0.0045444422      0.0000000000

    Force Error: 0.264220E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014544139   89942.6  194629.5   0.000157032
   2   0.001001105   0.014544298   89875.4  194839.2  -0.000546635
   3   0.002000000   0.014544442   89948.7  195391.1   0.000143121
     ===========================================================


  TIME: GANDRA  STEP:   132.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0045639813      0.0000000000
        2      0.0000011083      0.0045641411      0.0008961478
        3      0.0000000000      0.0045642870      0.0000000000

    Force Error: 0.259319E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014563981   90054.5  195241.1   0.000158464
   2   0.001001108   0.014564141   89987.1  195451.4  -0.000550307
   3   0.002000000   0.014564287   90060.8  196006.0   0.000144491
     ===========================================================


  TIME: GANDRA  STEP:   133.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0045834409      0.0000000000
        2      0.0000011110      0.0045836022      0.0009023756
        3      0.0000000000      0.0045837493      0.0000000000

    Force Error: 0.254455E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014583441   90166.3  195843.1   0.000159873
   2   0.001001111   0.014583602   90098.7  196054.0  -0.000553921
   3   0.002000000   0.014583749   90172.7  196611.2   0.000145837
     ===========================================================


  TIME: GANDRA  STEP:   134.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0046025215      0.0000000000
        2      0.0000011137      0.0046026841      0.0009085021
        3      0.0000000000      0.0046028325      0.0000000000

    Force Error: 0.249631E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014602521   90278.0  196435.4   0.000161258
   2   0.001001114   0.014602684   90210.2  196646.8  -0.000557479
   3   0.002000000   0.014602833   90284.6  197206.7   0.000147160
     ===========================================================


  TIME: GANDRA  STEP:   135.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0046212263      0.0000000000
        2      0.0000011163      0.0046213903      0.0009145279
        3      0.0000000000      0.0046215400      0.0000000000

    Force Error: 0.244847E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014621226   90389.6  197018.0   0.000162619
   2   0.001001116   0.014621390   90321.7  197229.9  -0.000560981
   3   0.002000000   0.014621540   90396.4  197792.4   0.000148460
     ===========================================================


  TIME: GANDRA  STEP:   136.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0046395590      0.0000000000
        2      0.0000011188      0.0046397243      0.0009204539
        3      0.0000000000      0.0046398752      0.0000000000

    Force Error: 0.240106E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014639559   90501.0  197590.9   0.000163957
   2   0.001001119   0.014639724   90432.9  197803.4  -0.000564426
   3   0.002000000   0.014639875   90508.1  198368.5   0.000149736
     ===========================================================


  TIME: GANDRA  STEP:   137.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0046575232      0.0000000000
        2      0.0000011213      0.0046576897      0.0009262808
        3      0.0000000000      0.0046578420      0.0000000000

    Force Error: 0.235409E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014657523   90612.3  198154.2   0.000165272
   2   0.001001121   0.014657690   90544.1  198367.2  -0.000567816
   3   0.002000000   0.014657842   90619.7  198935.0   0.000150988
     ===========================================================


  TIME: GANDRA  STEP:   138.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0046751227      0.0000000000
        2      0.0000011237      0.0046752905      0.0009320094
        3      0.0000000000      0.0046754439      0.0000000000

    Force Error: 0.230757E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014675123   90723.5  198707.9   0.000166564
   2   0.001001124   0.014675291   90655.1  198921.3  -0.000571151
   3   0.002000000   0.014675444   90731.2  199491.8   0.000152218
     ===========================================================


  TIME: GANDRA  STEP:   139.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0046923614      0.0000000000
        2      0.0000011260      0.0046925305      0.0009376407
        3      0.0000000000      0.0046926851      0.0000000000

    Force Error: 0.226153E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014692361   90834.5  199252.0   0.000167832
   2   0.001001126   0.014692530   90766.0  199465.9  -0.000574432
   3   0.002000000   0.014692685   90842.5  200039.0   0.000153424
     ===========================================================


  TIME: GANDRA  STEP:   140.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0047092434      0.0000000000
        2      0.0000011283      0.0047094137      0.0009431757
        3      0.0000000000      0.0047095694      0.0000000000

    Force Error: 0.221598E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014709243   90945.3  199786.5   0.000169078
   2   0.001001128   0.014709414   90876.7  200001.0  -0.000577658
   3   0.002000000   0.014709569   90953.7  200576.6   0.000154608
     ===========================================================


  TIME: GANDRA  STEP:   141.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0047257727      0.0000000000
        2      0.0000011305      0.0047259442      0.0009486154
        3      0.0000000000      0.0047261011      0.0000000000

    Force Error: 0.217092E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014725773   91056.0  200311.5   0.000170301
   2   0.001001130   0.014725944   90987.3  200526.5  -0.000580832
   3   0.002000000   0.014726101   91064.7  201104.7   0.000155769
     ===========================================================


  TIME: GANDRA  STEP:   142.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0047419535      0.0000000000
        2      0.0000011326      0.0047421262      0.0009539609
        3      0.0000000000      0.0047422842      0.0000000000

    Force Error: 0.212638E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014741954   91166.5  200827.1   0.000171502
   2   0.001001133   0.014742126   91097.7  201042.5  -0.000583952
   3   0.002000000   0.014742284   91175.6  201623.4   0.000156907
     ===========================================================


  TIME: GANDRA  STEP:   143.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0047577902      0.0000000000
        2      0.0000011347      0.0047579640      0.0009592133
        3      0.0000000000      0.0047581231      0.0000000000

    Force Error: 0.208235E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014757790   91276.8  201333.3   0.000172680
   2   0.001001135   0.014757964   91207.8  201549.2  -0.000587020
   3   0.002000000   0.014758123   91286.2  202132.6   0.000158024
     ===========================================================


  TIME: GANDRA  STEP:   144.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0047732870      0.0000000000
        2      0.0000011368      0.0047734620      0.0009643737
        3      0.0000000000      0.0047736222      0.0000000000

    Force Error: 0.203885E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014773287   91386.9  201830.2   0.000173837
   2   0.001001137   0.014773462   91317.8  202046.5  -0.000590037
   3   0.002000000   0.014773622   91396.7  202632.5   0.000159118
     ===========================================================


  TIME: GANDRA  STEP:   145.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0047884485      0.0000000000
        2      0.0000011388      0.0047886246      0.0009694433
        3      0.0000000000      0.0047887858      0.0000000000

    Force Error: 0.199590E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014788449   91496.7  202317.7   0.000174972
   2   0.001001139   0.014788625   91427.6  202534.5  -0.000593003
   3   0.002000000   0.014788786   91507.0  203123.0   0.000160191
     ===========================================================


  TIME: GANDRA  STEP:   146.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0048032791      0.0000000000
        2      0.0000011407      0.0048034563      0.0009744234
        3      0.0000000000      0.0048036186      0.0000000000

    Force Error: 0.195349E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014803279   91606.4  202796.1   0.000176085
   2   0.001001141   0.014803456   91537.1  203013.3  -0.000595919
   3   0.002000000   0.014803619   91617.1  203604.4   0.000161243
     ===========================================================


  TIME: GANDRA  STEP:   147.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0048177834      0.0000000000
        2      0.0000011426      0.0048179616      0.0009793152
        3      0.0000000000      0.0048181249      0.0000000000

    Force Error: 0.191164E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014817783   91715.8  203265.3   0.000177177
   2   0.001001143   0.014817962   91646.5  203483.0  -0.000598786
   3   0.002000000   0.014818125   91727.0  204076.6   0.000162273
     ===========================================================


  TIME: GANDRA  STEP:   148.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0048319659      0.0000000000
        2      0.0000011444      0.0048321452      0.0009841199
        3      0.0000000000      0.0048323095      0.0000000000

    Force Error: 0.187036E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014831966   91824.9  203725.5   0.000178249
   2   0.001001144   0.014832145   91755.5  203943.6  -0.000601603
   3   0.002000000   0.014832309   91836.6  204539.7   0.000163283
     ===========================================================


  TIME: GANDRA  STEP:   149.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0048458314      0.0000000000
        2      0.0000011462      0.0048460117      0.0009888390
        3      0.0000000000      0.0048461769      0.0000000000

    Force Error: 0.182964E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014845831   91933.8  204176.6   0.000179299
   2   0.001001146   0.014846012   91864.4  204395.2  -0.000604373
   3   0.002000000   0.014846177   91946.0  204993.8   0.000164272
     ===========================================================


  TIME: GANDRA  STEP:   150.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0048593844      0.0000000000
        2      0.0000011479      0.0048595658      0.0009934737
        3      0.0000000000      0.0048597320      0.0000000000

    Force Error: 0.178950E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014859384   92042.4  204618.9   0.000180330
   2   0.001001148   0.014859566   91972.9  204837.9  -0.000607095
   3   0.002000000   0.014859732   92055.1  205439.0   0.000165240
     ===========================================================


  TIME: GANDRA  STEP:   151.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0048726299      0.0000000000
        2      0.0000011496      0.0048728122      0.0009980253
        3      0.0000000000      0.0048729793      0.0000000000

    Force Error: 0.174994E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014872630   92150.8  205052.4   0.000181340
   2   0.001001150   0.014872812   92081.2  205271.7  -0.000609771
   3   0.002000000   0.014872979   92164.0  205875.4   0.000166189
     ===========================================================


  TIME: GANDRA  STEP:   152.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0048855723      0.0000000000
        2      0.0000011512      0.0048857557      0.0010024953
        3      0.0000000000      0.0048859237      0.0000000000

    Force Error: 0.171096E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014885572   92258.8  205477.1   0.000182331
   2   0.001001151   0.014885756   92189.2  205696.8  -0.000612401
   3   0.002000000   0.014885924   92272.6  206303.0   0.000167118
     ===========================================================


  TIME: GANDRA  STEP:   153.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0048982167      0.0000000000
        2      0.0000011528      0.0048984010      0.0010068849
        3      0.0000000000      0.0048985699      0.0000000000

    Force Error: 0.167257E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014898217   92366.6  205893.1   0.000183302
   2   0.001001153   0.014898401   92296.9  206113.3  -0.000614986
   3   0.002000000   0.014898570   92380.9  206721.9   0.000168028
     ===========================================================


  TIME: GANDRA  STEP:   154.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0049105677      0.0000000000
        2      0.0000011543      0.0049107529      0.0010111956
        3      0.0000000000      0.0049109227      0.0000000000

    Force Error: 0.163477E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014910568   92474.0  206300.7   0.000184254
   2   0.001001154   0.014910753   92404.3  206521.2  -0.000617526
   3   0.002000000   0.014910923   92489.0  207132.3   0.000168919
     ===========================================================


  TIME: GANDRA  STEP:   155.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0049226302      0.0000000000
        2      0.0000011558      0.0049228163      0.0010154287
        3      0.0000000000      0.0049229869      0.0000000000

    Force Error: 0.159757E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014922630   92581.1  206699.7   0.000185187
   2   0.001001156   0.014922816   92511.4  206920.7  -0.000620023
   3   0.002000000   0.014922987   92596.7  207534.3   0.000169792
     ===========================================================


  TIME: GANDRA  STEP:   156.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0049344090      0.0000000000
        2      0.0000011572      0.0049345960      0.0010195857
        3      0.0000000000      0.0049347674      0.0000000000

    Force Error: 0.156096E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014934409   92687.9  207090.4   0.000186102
   2   0.001001157   0.014934596   92618.1  207311.8  -0.000622477
   3   0.002000000   0.014934767   92704.1  207927.8   0.000170646
     ===========================================================


  TIME: GANDRA  STEP:   157.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0049459088      0.0000000000
        2      0.0000011586      0.0049460967      0.0010236678
        3      0.0000000000      0.0049462690      0.0000000000

    Force Error: 0.152494E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014945909   92794.3  207472.9   0.000186999
   2   0.001001159   0.014946097   92724.5  207694.6  -0.000624889
   3   0.002000000   0.014946269   92811.1  208313.1   0.000171482
     ===========================================================


  TIME: GANDRA  STEP:   158.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0049571346      0.0000000000
        2      0.0000011600      0.0049573233      0.0010276766
        3      0.0000000000      0.0049574964      0.0000000000

    Force Error: 0.148953E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014957135   92900.4  207847.2   0.000187878
   2   0.001001160   0.014957323   92830.5  208069.3  -0.000627260
   3   0.002000000   0.014957496   92917.8  208690.3   0.000172300
     ===========================================================


  TIME: GANDRA  STEP:   159.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0049680911      0.0000000000
        2      0.0000011613      0.0049682807      0.0010316134
        3      0.0000000000      0.0049684546      0.0000000000

    Force Error: 0.145471E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014968091   93006.0  208213.5   0.000188739
   2   0.001001161   0.014968281   92936.2  208436.0  -0.000629590
   3   0.002000000   0.014968455   93024.1  209059.3   0.000173102
     ===========================================================


  TIME: GANDRA  STEP:   160.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0049787831      0.0000000000
        2      0.0000011625      0.0049789736      0.0010354796
        3      0.0000000000      0.0049791482      0.0000000000

    Force Error: 0.142049E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014978783   93111.3  208571.8   0.000189584
   2   0.001001163   0.014978974   93041.4  208794.7  -0.000631881
   3   0.002000000   0.014979148   93130.1  209420.4   0.000173886
     ===========================================================


  TIME: GANDRA  STEP:   161.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0049892155      0.0000000000
        2      0.0000011638      0.0049894068      0.0010392766
        3      0.0000000000      0.0049895822      0.0000000000

    Force Error: 0.138686E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014989216   93216.2  208922.3   0.000190412
   2   0.001001164   0.014989407   93146.3  209145.6  -0.000634132
   3   0.002000000   0.014989582   93235.7  209773.7   0.000174654
     ===========================================================


  TIME: GANDRA  STEP:   162.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0049993930      0.0000000000
        2      0.0000011650      0.0049995851      0.0010430057
        3      0.0000000000      0.0049997612      0.0000000000

    Force Error: 0.135383E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014999393   93320.7  209265.1   0.000191223
   2   0.001001165   0.014999585   93250.8  209488.7  -0.000636346
   3   0.002000000   0.014999761   93340.9  210119.3   0.000175405
     ===========================================================


  TIME: GANDRA  STEP:   163.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0050093204      0.0000000000
        2      0.0000011661      0.0050095132      0.0010466683
        3      0.0000000000      0.0050096901      0.0000000000

    Force Error: 0.132139E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015009320   93424.7  209600.3   0.000192018
   2   0.001001166   0.015009513   93354.8  209824.2  -0.000638521
   3   0.002000000   0.015009690   93445.6  210457.2   0.000176141
     ===========================================================


  TIME: GANDRA  STEP:   164.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0050190024      0.0000000000
        2      0.0000011672      0.0050191960      0.0010502658
        3      0.0000000000      0.0050193736      0.0000000000

    Force Error: 0.128954E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015019002   93528.3  209928.0   0.000192797
   2   0.001001167   0.015019196   93458.4  210152.3  -0.000640660
   3   0.002000000   0.015019374   93550.0  210787.5   0.000176861
     ===========================================================


  TIME: GANDRA  STEP:   165.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0050284438      0.0000000000
        2      0.0000011683      0.0050286381      0.0010537995
        3      0.0000000000      0.0050288163      0.0000000000

    Force Error: 0.125828E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015028444   93631.4  210248.2   0.000193561
   2   0.001001168   0.015028638   93561.5  210472.9  -0.000642763
   3   0.002000000   0.015028816   93653.9  211110.5   0.000177566
     ===========================================================


  TIME: GANDRA  STEP:   166.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0050376491      0.0000000000
        2      0.0000011694      0.0050378442      0.0010572707
        3      0.0000000000      0.0050380231      0.0000000000

    Force Error: 0.122761E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015037649   93734.1  210561.2   0.000194310
   2   0.001001169   0.015037844   93664.2  210786.2  -0.000644831
   3   0.002000000   0.015038023   93757.3  211426.2   0.000178256
     ===========================================================


  TIME: GANDRA  STEP:   167.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0050466232      0.0000000000
        2      0.0000011704      0.0050468189      0.0010606808
        3      0.0000000000      0.0050469985      0.0000000000

    Force Error: 0.119752E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015046623   93836.3  210867.1   0.000195044
   2   0.001001170   0.015046819   93766.4  211092.4  -0.000646863
   3   0.002000000   0.015046999   93860.2  211734.7   0.000178932
     ===========================================================


  TIME: GANDRA  STEP:   168.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0050553705      0.0000000000
        2      0.0000011714      0.0050555670      0.0010640311
        3      0.0000000000      0.0050557472      0.0000000000

    Force Error: 0.116800E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015055370   93937.9  211165.9   0.000195764
   2   0.001001171   0.015055567   93868.1  211391.5  -0.000648862
   3   0.002000000   0.015055747   93962.7  212036.2   0.000179593
     ===========================================================


  TIME: GANDRA  STEP:   169.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0050638957      0.0000000000
        2      0.0000011723      0.0050640929      0.0010673228
        3      0.0000000000      0.0050642737      0.0000000000

    Force Error: 0.113906E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015063896   94039.1  211457.7   0.000196470
   2   0.001001172   0.015064093   93969.3  211683.7  -0.000650828
   3   0.002000000   0.015064274   94064.7  212330.7   0.000180241
     ===========================================================


  TIME: GANDRA  STEP:   170.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0050722033      0.0000000000
        2      0.0000011732      0.0050724012      0.0010705573
        3      0.0000000000      0.0050725827      0.0000000000

    Force Error: 0.111070E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015072203   94139.7  211742.7   0.000197162
   2   0.001001173   0.015072401   94070.0  211969.1  -0.000652761
   3   0.002000000   0.015072583   94166.1  212618.3   0.000180875
     ===========================================================


  TIME: GANDRA  STEP:   171.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0050802979      0.0000000000
        2      0.0000011741      0.0050804964      0.0010737357
        3      0.0000000000      0.0050806785      0.0000000000

    Force Error: 0.108290E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015080298   94239.8  212021.1   0.000197840
   2   0.001001174   0.015080496   94170.1  212247.7  -0.000654662
   3   0.002000000   0.015080679   94267.0  212899.2   0.000181496
     ===========================================================


  TIME: GANDRA  STEP:   172.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0050881839      0.0000000000
        2      0.0000011749      0.0050883830      0.0010768594
        3      0.0000000000      0.0050885657      0.0000000000

    Force Error: 0.105566E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015088184   94339.3  212292.8   0.000198506
   2   0.001001175   0.015088383   94269.6  212519.8  -0.000656532
   3   0.002000000   0.015088566   94367.4  213173.6   0.000182104
     ===========================================================


  TIME: GANDRA  STEP:   173.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0050958656      0.0000000000
        2      0.0000011758      0.0050960654      0.0010799294
        3      0.0000000000      0.0050962487      0.0000000000

    Force Error: 0.102897E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015095866   94438.3  212558.0   0.000199158
   2   0.001001176   0.015096065   94368.6  212785.4  -0.000658372
   3   0.002000000   0.015096249   94467.2  213441.4   0.000182700
     ===========================================================


  TIME: GANDRA  STEP:   174.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0051033476      0.0000000000
        2      0.0000011765      0.0051035481      0.0010829471
        3      0.0000000000      0.0051037319      0.0000000000

    Force Error: 0.100284E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015103348   94536.6  212816.9   0.000199798
   2   0.001001177   0.015103548   94467.0  213044.6  -0.000660181
   3   0.002000000   0.015103732   94566.4  213702.8   0.000183284
     ===========================================================


  TIME: GANDRA  STEP:   175.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0051106341      0.0000000000
        2      0.0000011773      0.0051108352      0.0010859137
        3      0.0000000000      0.0051110196      0.0000000000

    Force Error: 0.977254E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015110634   94634.3  213069.6   0.000200426
   2   0.001001177   0.015110835   94564.8  213297.5  -0.000661961
   3   0.002000000   0.015111020   94665.0  213958.0   0.000183856
     ===========================================================


  TIME: GANDRA  STEP:   176.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0051177294      0.0000000000
        2      0.0000011780      0.0051179311      0.0010888301
        3      0.0000000000      0.0051181160      0.0000000000

    Force Error: 0.952208E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015117729   94731.5  213316.1   0.000201042
   2   0.001001178   0.015117931   94661.9  213544.3  -0.000663713
   3   0.002000000   0.015118116   94763.0  214207.0   0.000184416
     ===========================================================


  TIME: GANDRA  STEP:   177.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0051246377      0.0000000000
        2      0.0000011787      0.0051248400      0.0010916977
        3      0.0000000000      0.0051250255      0.0000000000

    Force Error: 0.927697E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015124638   94827.9  213556.6   0.000201647
   2   0.001001179   0.015124840   94758.5  213785.1  -0.000665436
   3   0.002000000   0.015125025   94860.4  214450.0   0.000184965
     ===========================================================


  TIME: GANDRA  STEP:   178.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0051313632      0.0000000000
        2      0.0000011794      0.0051315661      0.0010945175
        3      0.0000000000      0.0051317521      0.0000000000

    Force Error: 0.903713E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015131363   94923.8  213791.1   0.000202240
   2   0.001001179   0.015131566   94854.4  214020.0  -0.000667132
   3   0.002000000   0.015131752   94957.2  214687.1   0.000185503
     ===========================================================


  TIME: GANDRA  STEP:   179.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0051379101      0.0000000000
        2      0.0000011801      0.0051381135      0.0010972905
        3      0.0000000000      0.0051383000      0.0000000000

    Force Error: 0.880252E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015137910   95018.9  214019.9   0.000202822
   2   0.001001180   0.015138113   94949.6  214249.1  -0.000668801
   3   0.002000000   0.015138300   95053.2  214918.3   0.000186031
     ===========================================================


  TIME: GANDRA  STEP:   180.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0051442823      0.0000000000
        2      0.0000011807      0.0051444862      0.0011000180
        3      0.0000000000      0.0051446733      0.0000000000

    Force Error: 0.857307E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015144282   95113.4  214243.0   0.000203393
   2   0.001001181   0.015144486   95044.1  214472.5  -0.000670444
   3   0.002000000   0.015144673   95148.6  215143.9   0.000186548
     ===========================================================


  TIME: GANDRA  STEP:   181.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0051504839      0.0000000000
        2      0.0000011813      0.0051506884      0.0011027008
        3      0.0000000000      0.0051508759      0.0000000000

    Force Error: 0.834872E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015150484   95207.1  214460.5   0.000203955
   2   0.001001181   0.015150688   95137.9  214690.3  -0.000672061
   3   0.002000000   0.015150876   95243.3  215363.8   0.000187055
     ===========================================================


  TIME: GANDRA  STEP:   182.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0051565188      0.0000000000
        2      0.0000011819      0.0051567239      0.0011053401
        3      0.0000000000      0.0051569119      0.0000000000

    Force Error: 0.812939E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015156519   95300.2  214672.6   0.000204506
   2   0.001001182   0.015156724   95231.0  214902.7  -0.000673652
   3   0.002000000   0.015156912   95337.3  215578.3   0.000187553
     ===========================================================


  TIME: GANDRA  STEP:   183.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0051623910      0.0000000000
        2      0.0000011824      0.0051625966      0.0011079369
        3      0.0000000000      0.0051627851      0.0000000000

    Force Error: 0.791503E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015162391   95392.5  214879.3   0.000205047
   2   0.001001182   0.015162597   95323.4  215109.7  -0.000675219
   3   0.002000000   0.015162785   95430.6  215787.4   0.000188041
     ===========================================================


  TIME: GANDRA  STEP:   184.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0051681043      0.0000000000
        2      0.0000011829      0.0051683104      0.0011104920
        3      0.0000000000      0.0051684994      0.0000000000

    Force Error: 0.770556E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015168104   95484.1  215080.8   0.000205578
   2   0.001001183   0.015168310   95415.1  215311.4  -0.000676762
   3   0.002000000   0.015168499   95523.1  215991.2   0.000188520
     ===========================================================


  TIME: GANDRA  STEP:   185.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0051736624      0.0000000000
        2      0.0000011834      0.0051738691      0.0011130066
        3      0.0000000000      0.0051740585      0.0000000000

    Force Error: 0.750092E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015173662   95574.9  215277.1   0.000206101
   2   0.001001183   0.015173869   95506.0  215508.0  -0.000678281
   3   0.002000000   0.015174059   95614.9  216189.9   0.000188990
     ===========================================================


  TIME: GANDRA  STEP:   186.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0051790692      0.0000000000
        2      0.0000011839      0.0051792763      0.0011154815
        3      0.0000000000      0.0051794662      0.0000000000

    Force Error: 0.730103E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015179069   95664.9  215468.4   0.000206614
   2   0.001001184   0.015179276   95596.1  215699.6  -0.000679777
   3   0.002000000   0.015179466   95705.9  216383.5   0.000189451
     ===========================================================


  TIME: GANDRA  STEP:   187.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0051843282      0.0000000000
        2      0.0000011844      0.0051845358      0.0011179176
        3      0.0000000000      0.0051847262      0.0000000000

    Force Error: 0.710583E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015184328   95754.1  215654.8   0.000207118
   2   0.001001184   0.015184536   95685.4  215886.3  -0.000681250
   3   0.002000000   0.015184726   95796.1  216572.2   0.000189905
     ===========================================================


  TIME: GANDRA  STEP:   188.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0051894431      0.0000000000
        2      0.0000011848      0.0051896512      0.0011203159
        3      0.0000000000      0.0051898420      0.0000000000

    Force Error: 0.691525E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015189443   95842.6  215836.3   0.000207614
   2   0.001001185   0.015189651   95773.9  216068.1  -0.000682701
   3   0.002000000   0.015189842   95885.5  216756.0   0.000190349
     ===========================================================


  TIME: GANDRA  STEP:   189.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0051944174      0.0000000000
        2      0.0000011852      0.0051946260      0.0011226771
        3      0.0000000000      0.0051948172      0.0000000000

    Force Error: 0.672921E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015194417   95930.2  216013.2   0.000208102
   2   0.001001185   0.015194626   95861.6  216245.2  -0.000684130
   3   0.002000000   0.015194817   95974.1  216935.1   0.000190786
     ===========================================================


  TIME: GANDRA  STEP:   190.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0051992546      0.0000000000
        2      0.0000011856      0.0051994636      0.0011250023
        3      0.0000000000      0.0051996553      0.0000000000

    Force Error: 0.654765E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015199255   96016.9  216185.4   0.000208581
   2   0.001001186   0.015199464   95948.5  216417.7  -0.000685538
   3   0.002000000   0.015199655   96061.9  217109.6   0.000191216
     ===========================================================


  TIME: GANDRA  STEP:   191.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0052039581      0.0000000000
        2      0.0000011860      0.0052041676      0.0011272921
        3      0.0000000000      0.0052043597      0.0000000000

    Force Error: 0.637048E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015203958   96102.9  216353.1   0.000209053
   2   0.001001186   0.015204168   96034.5  216585.7  -0.000686925
   3   0.002000000   0.015204360   96148.8  217279.5   0.000191638
     ===========================================================


  TIME: GANDRA  STEP:   192.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0052085314      0.0000000000
        2      0.0000011864      0.0052087413      0.0011295474
        3      0.0000000000      0.0052089338      0.0000000000

    Force Error: 0.619765E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015208531   96187.9  216516.4   0.000209516
   2   0.001001186   0.015208741   96119.7  216749.3  -0.000688292
   3   0.002000000   0.015208934   96234.9  217445.0   0.000192053
     ===========================================================


  TIME: GANDRA  STEP:   193.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0052129776      0.0000000000
        2      0.0000011867      0.0052131880      0.0011317690
        3      0.0000000000      0.0052133809      0.0000000000

    Force Error: 0.602907E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015212978   96272.2  216675.4   0.000209973
   2   0.001001187   0.015213188   96204.0  216908.5  -0.000689638
   3   0.002000000   0.015213381   96320.1  217606.2   0.000192461
     ===========================================================


  TIME: GANDRA  STEP:   194.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0052173001      0.0000000000
        2      0.0000011870      0.0052175109      0.0011339577
        3      0.0000000000      0.0052177042      0.0000000000

    Force Error: 0.586468E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015217300   96355.5  216830.2   0.000210422
   2   0.001001187   0.015217511   96287.4  217063.5  -0.000690965
   3   0.002000000   0.015217704   96404.5  217763.1   0.000192862
     ===========================================================


  TIME: GANDRA  STEP:   195.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0052215020      0.0000000000
        2      0.0000011873      0.0052217133      0.0011361141
        3      0.0000000000      0.0052219069      0.0000000000

    Force Error: 0.570441E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015221502   96437.9  216980.8   0.000210865
   2   0.001001187   0.015221713   96369.9  217214.4  -0.000692273
   3   0.002000000   0.015221907   96487.9  217915.9   0.000193257
     ===========================================================


  TIME: GANDRA  STEP:   196.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0052255865      0.0000000000
        2      0.0000011876      0.0052257982      0.0011382391
        3      0.0000000000      0.0052259923      0.0000000000

    Force Error: 0.554817E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015225587   96519.4  217127.4   0.000211300
   2   0.001001188   0.015225798   96451.5  217361.3  -0.000693561
   3   0.002000000   0.015225992   96570.4  218064.6   0.000193645
     ===========================================================


  TIME: GANDRA  STEP:   197.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0052295566      0.0000000000
        2      0.0000011879      0.0052297688      0.0011403333
        3      0.0000000000      0.0052299632      0.0000000000

    Force Error: 0.539590E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015229557   96600.0  217270.1   0.000211729
   2   0.001001188   0.015229769   96532.2  217504.3  -0.000694832
   3   0.002000000   0.015229963   96652.1  218209.4   0.000194027
     ===========================================================


  TIME: GANDRA  STEP:   198.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0052334154      0.0000000000
        2      0.0000011881      0.0052336280      0.0011423974
        3      0.0000000000      0.0052338228      0.0000000000

    Force Error: 0.524753E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015233415   96679.7  217409.0   0.000212152
   2   0.001001188   0.015233628   96612.0  217643.4  -0.000696084
   3   0.002000000   0.015233823   96732.8  218350.3   0.000194404
     ===========================================================


  TIME: GANDRA  STEP:   199.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0052371658      0.0000000000
        2      0.0000011883      0.0052373788      0.0011444321
        3      0.0000000000      0.0052375739      0.0000000000

    Force Error: 0.510298E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015237166   96758.4  217544.1   0.000212568
   2   0.001001188   0.015237379   96690.8  217778.7  -0.000697318
   3   0.002000000   0.015237574   96812.5  218487.5   0.000194774
     ===========================================================


  TIME: GANDRA  STEP:   200.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0052408107      0.0000000000
        2      0.0000011885      0.0052410241      0.0011464380
        3      0.0000000000      0.0052412196      0.0000000000

    Force Error: 0.496219E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015240811   96836.2  217675.6   0.000212979
   2   0.001001189   0.015241024   96768.7  217910.4  -0.000698535
   3   0.002000000   0.015241220   96891.4  218620.9   0.000195140
