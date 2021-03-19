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
         GandR variable 1 ...................... GNR1    =   0.150000    
         GandR variable 2 ...................... GNR2    =   0.150000    
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
        1      0.0000000000      0.0000461742      0.0000000000
        2      0.0000000178      0.0000461694     -0.0000015276
        3      0.0000000000      0.0000461625      0.0000000000

    Force Error: 0.582975E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010046174   81261.5   90097.7   0.000000000
   2   0.001000018   0.010046169   81283.9   90124.5   0.000000000
   3   0.002000000   0.010046163   81335.2   90185.6  -0.000000000
     ===========================================================


  TIME: GANDRA  STEP:     3.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0000735904      0.0000000000
        2      0.0000000292      0.0000735826     -0.0000023511
        3      0.0000000000      0.0000735714      0.0000000000

    Force Error: 0.357273E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010073590   81749.1   92605.0  -0.000004846
   2   0.001000029   0.010073583   81766.4   92637.8  -0.000004648
   3   0.002000000   0.010073571   81831.8   92728.0  -0.000006859
     ===========================================================


  TIME: GANDRA  STEP:     4.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0001060725      0.0000000000
        2      0.0000000426      0.0001060624     -0.0000026625
        3      0.0000000000      0.0001060479      0.0000000000

    Force Error: 0.424355E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010106073   80971.0   92566.5  -0.000007813
   2   0.001000043   0.010106062   80991.2   92607.8  -0.000007625
   3   0.002000000   0.010106048   81073.4   92723.2  -0.000011146
     ===========================================================


  TIME: GANDRA  STEP:     5.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0001363923      0.0000000000
        2      0.0000000553      0.0001363804     -0.0000026738
        3      0.0000000000      0.0001363635      0.0000000000

    Force Error: 0.398004E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010136392   80791.5   93351.0  -0.000010158
   2   0.001000055   0.010136380   80811.2   93397.4  -0.000010213
   3   0.002000000   0.010136363   80902.7   93530.1  -0.000014466
     ===========================================================


  TIME: GANDRA  STEP:     6.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0001671056      0.0000000000
        2      0.0000000681      0.0001670923     -0.0000022491
        3      0.0000000000      0.0001670735      0.0000000000

    Force Error: 0.403489E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010167106   80558.2   93856.1  -0.000011924
   2   0.001000068   0.010167092   80577.8   93906.9  -0.000012324
   3   0.002000000   0.010167074   80676.3   94052.9  -0.000016941
     ===========================================================


  TIME: GANDRA  STEP:     7.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0001975023      0.0000000000
        2      0.0000000806      0.0001974881     -0.0000014512
        3      0.0000000000      0.0001974679      0.0000000000

    Force Error: 0.399618E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010197502   80448.3   94447.3  -0.000013260
   2   0.001000081   0.010197488   80467.3   94501.2  -0.000014256
   3   0.002000000   0.010197468   80570.0   94657.4  -0.000018800
     ===========================================================


  TIME: GANDRA  STEP:     8.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0002278655      0.0000000000
        2      0.0000000930      0.0002278506     -0.0000002614
        3      0.0000000000      0.0002278294      0.0000000000

    Force Error: 0.399270E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010227866   80376.9   95009.1  -0.000014246
   2   0.001000093   0.010227851   80395.2   95065.7  -0.000016064
   3   0.002000000   0.010227829   80500.7   95229.7  -0.000020172
     ===========================================================


  TIME: GANDRA  STEP:     9.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0002581405      0.0000000000
        2      0.0000001052      0.0002581251      0.0000013011
        3      0.0000000000      0.0002581033      0.0000000000

    Force Error: 0.398201E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010258141   80349.4   95579.5  -0.000014947
   2   0.001000105   0.010258125   80366.9   95638.3  -0.000017848
   3   0.002000000   0.010258103   80474.0   95808.4  -0.000021160
     ===========================================================


  TIME: GANDRA  STEP:    10.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0002883650      0.0000000000
        2      0.0000001172      0.0002883493      0.0000032295
        3      0.0000000000      0.0002883270      0.0000000000

    Force Error: 0.397625E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010288365   80348.3   96147.2  -0.000015413
   2   0.001000117   0.010288349   80364.9   96207.9  -0.000019654
   3   0.002000000   0.010288327   80472.9   96383.0  -0.000021843
     ===========================================================


  TIME: GANDRA  STEP:    11.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0003185390      0.0000000000
        2      0.0000001291      0.0003185233      0.0000055118
        3      0.0000000000      0.0003185008      0.0000000000

    Force Error: 0.397068E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010318539   80367.8   96716.4  -0.000015680
   2   0.001000129   0.010318523   80383.4   96778.7  -0.000021526
   3   0.002000000   0.010318501   80491.8   96958.0  -0.000022277
     ===========================================================


  TIME: GANDRA  STEP:    12.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0003486687      0.0000000000
        2      0.0000001408      0.0003486530      0.0000081382
        3      0.0000000000      0.0003486305      0.0000000000

    Force Error: 0.396607E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010348669   80401.6   97286.2  -0.000015777
   2   0.001000141   0.010348653   80416.2   97349.8  -0.000023488
   3   0.002000000   0.010348630   80524.6   97532.8  -0.000022504
     ===========================================================


  TIME: GANDRA  STEP:    13.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0003787544      0.0000000000
        2      0.0000001524      0.0003787388      0.0000110984
        3      0.0000000000      0.0003787164      0.0000000000

    Force Error: 0.396165E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010378754   80445.9   97857.0  -0.000015725
   2   0.001000152   0.010378739   80459.5   97922.0  -0.000025560
   3   0.002000000   0.010378716   80567.7   98108.1  -0.000022557
     ===========================================================


  TIME: GANDRA  STEP:    14.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0004087954      0.0000000000
        2      0.0000001639      0.0004087801      0.0000143826
        3      0.0000000000      0.0004087579      0.0000000000

    Force Error: 0.395727E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010408795   80497.9   98429.0  -0.000015540
   2   0.001000164   0.010408780   80510.4   98495.1  -0.000027753
   3   0.002000000   0.010408758   80618.3   98684.1  -0.000022459
     ===========================================================


  TIME: GANDRA  STEP:    15.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0004387894      0.0000000000
        2      0.0000001752      0.0004387746      0.0000179816
        3      0.0000000000      0.0004387527      0.0000000000

    Force Error: 0.395270E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010438789   80555.4   99002.1  -0.000015235
   2   0.001000175   0.010438775   80567.0   99069.3  -0.000030075
   3   0.002000000   0.010438753   80674.3   99261.0  -0.000022229
     ===========================================================


  TIME: GANDRA  STEP:    16.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0004687333      0.0000000000
        2      0.0000001864      0.0004687190      0.0000218861
        3      0.0000000000      0.0004686976      0.0000000000

    Force Error: 0.394778E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010468733   80617.1   99576.4  -0.000014820
   2   0.001000186   0.010468719   80627.7   99644.7  -0.000032531
   3   0.002000000   0.010468698   80734.5   99838.8  -0.000021878
     ===========================================================


  TIME: GANDRA  STEP:    17.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0004986230      0.0000000000
        2      0.0000001975      0.0004986093      0.0000260873
        3      0.0000000000      0.0004985884      0.0000000000

    Force Error: 0.394241E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010498623   80682.0  100151.8  -0.000014302
   2   0.001000197   0.010498609   80691.6  100221.1  -0.000035122
   3   0.002000000   0.010498588   80797.8  100417.6  -0.000021419
     ===========================================================


  TIME: GANDRA  STEP:    18.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0005284539      0.0000000000
        2      0.0000002084      0.0005284409      0.0000305766
        3      0.0000000000      0.0005284207      0.0000000000

    Force Error: 0.393648E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010528454   80749.3  100728.3  -0.000013689
   2   0.001000208   0.010528441   80757.9  100798.6  -0.000037849
   3   0.002000000   0.010528421   80863.5  100997.3  -0.000020859
     ===========================================================


  TIME: GANDRA  STEP:    19.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0005582210      0.0000000000
        2      0.0000002192      0.0005582088      0.0000353456
        3      0.0000000000      0.0005581893      0.0000000000

    Force Error: 0.392993E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010558221   80818.6  101305.9  -0.000012986
   2   0.001000219   0.010558209   80826.2  101377.2  -0.000040711
   3   0.002000000   0.010558189   80931.2  101578.1  -0.000020205
     ===========================================================


  TIME: GANDRA  STEP:    20.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0005879189      0.0000000000
        2      0.0000002299      0.0005879076      0.0000403861
        3      0.0000000000      0.0005878890      0.0000000000

    Force Error: 0.392272E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010587919   80889.3  101884.4  -0.000012196
   2   0.001000230   0.010587908   80896.0  101956.6  -0.000043706
   3   0.002000000   0.010587889   81000.4  102159.7  -0.000019463
     ===========================================================


  TIME: GANDRA  STEP:    21.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0006175421      0.0000000000
        2      0.0000002405      0.0006175318      0.0000456898
        3      0.0000000000      0.0006175140      0.0000000000

    Force Error: 0.391479E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010617542   80961.4  102463.9  -0.000011325
   2   0.001000240   0.010617532   80967.1  102537.0  -0.000046833
   3   0.002000000   0.010617514   81070.8  102742.2  -0.000018636
     ===========================================================


  TIME: GANDRA  STEP:    22.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0006470847      0.0000000000
        2      0.0000002509      0.0006470754      0.0000512489
        3      0.0000000000      0.0006470586      0.0000000000

    Force Error: 0.390612E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010647085   81034.5  103044.1  -0.000010375
   2   0.001000251   0.010647075   81039.2  103118.1  -0.000050088
   3   0.002000000   0.010647059   81142.4  103325.4  -0.000017730
     ===========================================================


  TIME: GANDRA  STEP:    23.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0006765407      0.0000000000
        2      0.0000002612      0.0006765324      0.0000570555
        3      0.0000000000      0.0006765168      0.0000000000

    Force Error: 0.389668E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010676541   81108.6  103625.0  -0.000009349
   2   0.001000261   0.010676532   81112.4  103699.9  -0.000053468
   3   0.002000000   0.010676517   81214.9  103909.3  -0.000016748
     ===========================================================


  TIME: GANDRA  STEP:    24.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0007059040      0.0000000000
        2      0.0000002714      0.0007058969      0.0000631018
        3      0.0000000000      0.0007058824      0.0000000000

    Force Error: 0.388645E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010705904   81183.5  104206.5  -0.000008251
   2   0.001000271   0.010705897   81186.4  104282.3  -0.000056971
   3   0.002000000   0.010705882   81288.3  104493.7  -0.000015692
     ===========================================================


  TIME: GANDRA  STEP:    25.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0007351684      0.0000000000
        2      0.0000002815      0.0007351626      0.0000693802
        3      0.0000000000      0.0007351492      0.0000000000

    Force Error: 0.387542E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010735168   81259.2  104788.4  -0.000007084
   2   0.001000282   0.010735163   81261.1  104865.1  -0.000060592
   3   0.002000000   0.010735149   81362.4  105078.6  -0.000014565
     ===========================================================


  TIME: GANDRA  STEP:    26.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0007643277      0.0000000000
        2      0.0000002915      0.0007643232      0.0000758831
        3      0.0000000000      0.0007643110      0.0000000000

    Force Error: 0.386358E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010764328   81335.6  105370.7  -0.000005848
   2   0.001000292   0.010764323   81336.6  105448.3  -0.000064329
   3   0.002000000   0.010764311   81437.3  105663.8  -0.000013370
     ===========================================================


  TIME: GANDRA  STEP:    27.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0007933755      0.0000000000
        2      0.0000003014      0.0007933724      0.0000826031
        3      0.0000000000      0.0007933616      0.0000000000

    Force Error: 0.385092E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010793376   81412.6  105953.1  -0.000004548
   2   0.001000301   0.010793372   81412.7  106031.6  -0.000068177
   3   0.002000000   0.010793362   81512.8  106249.1  -0.000012110
     ===========================================================


  TIME: GANDRA  STEP:    28.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0008223056      0.0000000000
        2      0.0000003111      0.0008223039      0.0000895326
        3      0.0000000000      0.0008222945      0.0000000000

    Force Error: 0.383743E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010822306   81490.3  106535.7  -0.000003185
   2   0.001000311   0.010822304   81489.5  106615.0  -0.000072134
   3   0.002000000   0.010822294   81589.0  106834.6  -0.000010787
     ===========================================================


  TIME: GANDRA  STEP:    29.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0008511116      0.0000000000
        2      0.0000003207      0.0008511113      0.0000966644
        3      0.0000000000      0.0008511034      0.0000000000

    Force Error: 0.382311E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010851112   81568.5  107118.2  -0.000001761
   2   0.001000321   0.010851111   81566.8  107198.4  -0.000076195
   3   0.002000000   0.010851103   81665.8  107419.9  -0.000009403
     ===========================================================


  TIME: GANDRA  STEP:    30.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0008797872      0.0000000000
        2      0.0000003303      0.0008797884      0.0001039912
        3      0.0000000000      0.0008797820      0.0000000000

    Force Error: 0.380796E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010879787   81647.3  107700.5  -0.000000279
   2   0.001000330   0.010879788   81644.8  107781.6  -0.000080357
   3   0.002000000   0.010879782   81743.1  108005.1  -0.000007960
     ===========================================================


  TIME: GANDRA  STEP:    31.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0009083259      0.0000000000
        2      0.0000003397      0.0009083288      0.0001115058
        3      0.0000000000      0.0009083239      0.0000000000

    Force Error: 0.379198E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010908326   81726.7  108282.5   0.000001260
   2   0.001000340   0.010908329   81723.3  108364.4  -0.000084617
   3   0.002000000   0.010908324   81821.1  108589.9  -0.000006461
     ===========================================================


  TIME: GANDRA  STEP:    32.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0009367217      0.0000000000
        2      0.0000003490      0.0009367262      0.0001192009
        3      0.0000000000      0.0009367229      0.0000000000

    Force Error: 0.377517E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010936722   81806.6  108864.0   0.000002853
   2   0.001000349   0.010936726   81802.3  108946.8  -0.000088970
   3   0.002000000   0.010936723   81899.5  109174.3  -0.000004906
     ===========================================================


  TIME: GANDRA  STEP:    33.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0009649681      0.0000000000
        2      0.0000003581      0.0009649743      0.0001270695
        3      0.0000000000      0.0009649726      0.0000000000

    Force Error: 0.375753E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010964968   81887.0  109445.0   0.000004498
   2   0.001000358   0.010964974   81881.9  109528.6  -0.000093413
   3   0.002000000   0.010964973   81978.6  109758.0  -0.000003300
     ===========================================================


  TIME: GANDRA  STEP:    34.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0009930589      0.0000000000
        2      0.0000003672      0.0009930669      0.0001351045
        3      0.0000000000      0.0009930669      0.0000000000

    Force Error: 0.373906E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010993059   81967.9  110025.1   0.000006194
   2   0.001000367   0.010993067   81961.9  110109.6  -0.000097943
   3   0.002000000   0.010993067   82058.1  110341.0  -0.000001643
     ===========================================================


  TIME: GANDRA  STEP:    35.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0010209881      0.0000000000
        2      0.0000003762      0.0010209978      0.0001432989
        3      0.0000000000      0.0010209996      0.0000000000

    Force Error: 0.371978E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011020988   82049.3  110604.5   0.000007937
   2   0.001000376   0.011020998   82042.5  110689.8  -0.000102555
   3   0.002000000   0.011021000   82138.1  110923.0   0.000000063
     ===========================================================


  TIME: GANDRA  STEP:    36.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0010487494      0.0000000000
        2      0.0000003850      0.0010487610      0.0001516458
        3      0.0000000000      0.0010487646      0.0000000000

    Force Error: 0.369968E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011048749   82131.1  111182.7   0.000009728
   2   0.001000385   0.011048761   82123.6  111268.9  -0.000107246
   3   0.002000000   0.011048765   82218.6  111504.1   0.000001816
     ===========================================================


  TIME: GANDRA  STEP:    37.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0010763369      0.0000000000
        2      0.0000003938      0.0010763503      0.0001601382
        3      0.0000000000      0.0010763558      0.0000000000

    Force Error: 0.367878E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011076337   82213.5  111759.8   0.000011562
   2   0.001000394   0.011076350   82205.1  111846.8  -0.000112013
   3   0.002000000   0.011076356   82299.6  112083.9   0.000003613
     ===========================================================


  TIME: GANDRA  STEP:    38.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0011037445      0.0000000000
        2      0.0000004024      0.0011037599      0.0001687693
        3      0.0000000000      0.0011037672      0.0000000000

    Force Error: 0.365707E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011103745   82296.2  112335.6   0.000013440
   2   0.001000402   0.011103760   82287.0  112423.4  -0.000116852
   3   0.002000000   0.011103767   82381.1  112662.4   0.000005453
     ===========================================================


  TIME: GANDRA  STEP:    39.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0011309665      0.0000000000
        2      0.0000004109      0.0011309838      0.0001775323
        3      0.0000000000      0.0011309931      0.0000000000

    Force Error: 0.363458E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011130966   82379.4  112909.9   0.000015358
   2   0.001000411   0.011130984   82369.4  112998.5  -0.000121760
   3   0.002000000   0.011130993   82463.0  113239.4   0.000007334
     ===========================================================


  TIME: GANDRA  STEP:    40.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0011579970      0.0000000000
        2      0.0000004193      0.0011580163      0.0001864205
        3      0.0000000000      0.0011580275      0.0000000000

    Force Error: 0.361131E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011157997   82463.0  113482.6   0.000017315
   2   0.001000419   0.011158016   82452.3  113572.0  -0.000126733
   3   0.002000000   0.011158027   82545.3  113814.8   0.000009254
     ===========================================================


  TIME: GANDRA  STEP:    41.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0011848303      0.0000000000
        2      0.0000004276      0.0011848516      0.0001954271
        3      0.0000000000      0.0011848648      0.0000000000

    Force Error: 0.358728E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011184830   82547.0  114053.5   0.000019309
   2   0.001000428   0.011184852   82535.5  114143.7  -0.000131767
   3   0.002000000   0.011184865   82628.1  114388.4   0.000011211
     ===========================================================


  TIME: GANDRA  STEP:    42.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0012114609      0.0000000000
        2      0.0000004359      0.0012114843      0.0002045456
        3      0.0000000000      0.0012114995      0.0000000000

    Force Error: 0.356249E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011211461   82631.4  114622.6   0.000021338
   2   0.001000436   0.011211484   82619.1  114713.5  -0.000136859
   3   0.002000000   0.011211500   82711.2  114960.0   0.000013204
     ===========================================================


  TIME: GANDRA  STEP:    43.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0012378833      0.0000000000
        2      0.0000004440      0.0012379088      0.0002137695
        3      0.0000000000      0.0012379261      0.0000000000

    Force Error: 0.353695E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011237883   82716.1  115189.5   0.000023401
   2   0.001000444   0.011237909   82703.1  115281.3  -0.000142006
   3   0.002000000   0.011237926   82794.7  115529.6   0.000015231
     ===========================================================


  TIME: GANDRA  STEP:    44.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0012640922      0.0000000000
        2      0.0000004520      0.0012641198      0.0002230920
        3      0.0000000000      0.0012641392      0.0000000000

    Force Error: 0.351069E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011264092   82801.2  115754.3   0.000025495
   2   0.001000452   0.011264120   82787.5  115846.8  -0.000147204
   3   0.002000000   0.011264139   82878.6  116097.0   0.000017289
     ===========================================================


  TIME: GANDRA  STEP:    45.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0012900823      0.0000000000
        2      0.0000004598      0.0012901121      0.0002325070
        3      0.0000000000      0.0012901336      0.0000000000

    Force Error: 0.348371E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011290082   82886.6  116316.7   0.000027619
   2   0.001000460   0.011290112   82872.2  116410.0  -0.000152451
   3   0.002000000   0.011290134   82962.8  116662.0   0.000019378
     ===========================================================


  TIME: GANDRA  STEP:    46.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0013158486      0.0000000000
        2      0.0000004676      0.0013158806      0.0002420079
        3      0.0000000000      0.0013159042      0.0000000000

    Force Error: 0.345604E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011315849   82972.4  116876.7   0.000029771
   2   0.001000468   0.011315881   82957.2  116970.7  -0.000157741
   3   0.002000000   0.011315904   83047.4  117224.5   0.000021495
     ===========================================================


  TIME: GANDRA  STEP:    47.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0013413862      0.0000000000
        2      0.0000004753      0.0013414203      0.0002515886
        3      0.0000000000      0.0013414461      0.0000000000

    Force Error: 0.342769E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011341386   83058.4  117433.9   0.000031950
   2   0.001000475   0.011341420   83042.6  117528.7  -0.000163073
   3   0.002000000   0.011341446   83132.3  117784.3   0.000023638
     ===========================================================


  TIME: GANDRA  STEP:    48.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0013666902      0.0000000000
        2      0.0000004829      0.0013667265      0.0002612427
        3      0.0000000000      0.0013667545      0.0000000000

    Force Error: 0.339867E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011366690   83144.8  117988.5   0.000034153
   2   0.001000483   0.011366727   83128.2  118084.0  -0.000168444
   3   0.002000000   0.011366755   83217.5  118341.3   0.000025807
     ===========================================================


  TIME: GANDRA  STEP:    49.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0013917560      0.0000000000
        2      0.0000004904      0.0013917946      0.0002709641
        3      0.0000000000      0.0013918248      0.0000000000

    Force Error: 0.336901E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011391756   83231.4  118540.1   0.000036380
   2   0.001000490   0.011391795   83214.2  118636.3  -0.000173848
   3   0.002000000   0.011391825   83303.0  118895.4   0.000027999
     ===========================================================


  TIME: GANDRA  STEP:    50.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0014165792      0.0000000000
        2      0.0000004978      0.0014166201      0.0002807467
        3      0.0000000000      0.0014166525      0.0000000000

    Force Error: 0.333872E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011416579   83318.2  119088.6   0.000038627
   2   0.001000498   0.011416620   83300.4  119185.6  -0.000179285
   3   0.002000000   0.011416653   83388.8  119446.4   0.000030212
     ===========================================================


  TIME: GANDRA  STEP:    51.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0014411554      0.0000000000
        2      0.0000005051      0.0014411985      0.0002905846
        3      0.0000000000      0.0014412332      0.0000000000

    Force Error: 0.330782E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011441155   83405.3  119634.0   0.000040895
   2   0.001000505   0.011441199   83386.8  119731.7  -0.000184750
   3   0.002000000   0.011441233   83474.8  119994.2   0.000032446
     ===========================================================


  TIME: GANDRA  STEP:    52.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0014654804      0.0000000000
        2      0.0000005122      0.0014655259      0.0003004719
        3      0.0000000000      0.0014655629      0.0000000000

    Force Error: 0.327634E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011465480   83492.7  120176.0   0.000043180
   2   0.001000512   0.011465526   83473.5  120274.4  -0.000190240
   3   0.002000000   0.011465563   83561.1  120538.6   0.000034697
     ===========================================================


  TIME: GANDRA  STEP:    53.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0014895504      0.0000000000
        2      0.0000005193      0.0014895982      0.0003104028
        3      0.0000000000      0.0014896374      0.0000000000

    Force Error: 0.324429E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011489550   83580.2  120714.5   0.000045482
   2   0.001000519   0.011489598   83560.4  120813.6  -0.000195753
   3   0.002000000   0.011489637   83647.5  121079.5   0.000036966
     ===========================================================


  TIME: GANDRA  STEP:    54.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0015133614      0.0000000000
        2      0.0000005263      0.0015134116      0.0003203715
        3      0.0000000000      0.0015134531      0.0000000000

    Force Error: 0.321170E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011513361   83667.9  121249.5   0.000047799
   2   0.001000526   0.011513412   83647.4  121349.2  -0.000201285
   3   0.002000000   0.011513453   83734.2  121616.8   0.000039249
     ===========================================================


  TIME: GANDRA  STEP:    55.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0015369100      0.0000000000
        2      0.0000005332      0.0015369624      0.0003303725
        3      0.0000000000      0.0015370063      0.0000000000

    Force Error: 0.317859E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011536910   83755.8  121780.7   0.000050129
   2   0.001000533   0.011536962   83734.7  121881.1  -0.000206833
   3   0.002000000   0.011537006   83821.1  122150.3   0.000041547
     ===========================================================


  TIME: GANDRA  STEP:    56.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0015601925      0.0000000000
        2      0.0000005400      0.0015602474      0.0003404002
        3      0.0000000000      0.0015602935      0.0000000000

    Force Error: 0.314498E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011560193   83843.9  122308.0   0.000052471
   2   0.001000540   0.011560247   83822.1  122409.2  -0.000212395
   3   0.002000000   0.011560294   83908.1  122680.0   0.000043856
     ===========================================================


  TIME: GANDRA  STEP:    57.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0015832059      0.0000000000
        2      0.0000005467      0.0015832631      0.0003504492
        3      0.0000000000      0.0015833116      0.0000000000

    Force Error: 0.311090E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011583206   83932.0  122831.4   0.000054823
   2   0.001000547   0.011583263   83909.7  122933.2  -0.000217968
   3   0.002000000   0.011583312   83995.3  123205.6   0.000046176
     ===========================================================


  TIME: GANDRA  STEP:    58.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0016059470      0.0000000000
        2      0.0000005533      0.0016060065      0.0003605142
        3      0.0000000000      0.0016060574      0.0000000000

    Force Error: 0.307636E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011605947   84020.4  123350.7   0.000057184
   2   0.001000553   0.011606007   83997.4  123453.1  -0.000223548
   3   0.002000000   0.011606057   84082.7  123727.2   0.000048505
     ===========================================================


  TIME: GANDRA  STEP:    59.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0016284129      0.0000000000
        2      0.0000005598      0.0016284748      0.0003705901
        3      0.0000000000      0.0016285280      0.0000000000

    Force Error: 0.304139E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011628413   84108.8  123865.8   0.000059553
   2   0.001000560   0.011628475   84085.2  123968.8  -0.000229134
   3   0.002000000   0.011628528   84170.1  124244.5   0.000050842
     ===========================================================


  TIME: GANDRA  STEP:    60.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0016506010      0.0000000000
        2      0.0000005662      0.0016506653      0.0003806717
        3      0.0000000000      0.0016507209      0.0000000000

    Force Error: 0.300602E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011650601   84197.3  124376.5   0.000061927
   2   0.001000566   0.011650665   84173.2  124480.2  -0.000234721
   3   0.002000000   0.011650721   84257.7  124757.4   0.000053185
     ===========================================================


  TIME: GANDRA  STEP:    61.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0016725089      0.0000000000
        2      0.0000005725      0.0016725756      0.0003907541
        3      0.0000000000      0.0016726334      0.0000000000

    Force Error: 0.297027E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011672509   84285.8  124882.8   0.000064306
   2   0.001000572   0.011672576   84261.2  124987.1  -0.000240309
   3   0.002000000   0.011672633   84345.3  125265.8   0.000055533
     ===========================================================


  TIME: GANDRA  STEP:    62.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0016941341      0.0000000000
        2      0.0000005787      0.0016942032      0.0004008324
        3      0.0000000000      0.0016942634      0.0000000000

    Force Error: 0.293417E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011694134   84374.4  125384.5   0.000066688
   2   0.001000579   0.011694203   84349.2  125489.5  -0.000245894
   3   0.002000000   0.011694263   84433.0  125769.7   0.000057885
     ===========================================================


  TIME: GANDRA  STEP:    63.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0017154747      0.0000000000
        2      0.0000005848      0.0017155462      0.0004109020
        3      0.0000000000      0.0017156088      0.0000000000

    Force Error: 0.289774E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011715475   84463.1  125881.6   0.000069073
   2   0.001000585   0.011715546   84437.3  125987.2  -0.000251474
   3   0.002000000   0.011715609   84520.8  126268.9   0.000060238
     ===========================================================


  TIME: GANDRA  STEP:    64.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0017365288      0.0000000000
        2      0.0000005908      0.0017366026      0.0004209582
        3      0.0000000000      0.0017366676      0.0000000000

    Force Error: 0.286101E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011736529   84551.8  126373.9   0.000071457
   2   0.001000591   0.011736603   84525.5  126480.1  -0.000257045
   3   0.002000000   0.011736668   84608.6  126763.3   0.000062593
     ===========================================================


  TIME: GANDRA  STEP:    65.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0017572947      0.0000000000
        2      0.0000005968      0.0017573709      0.0004309965
        3      0.0000000000      0.0017574382      0.0000000000

    Force Error: 0.282400E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011757295   84640.4  126861.4   0.000073842
   2   0.001000597   0.011757371   84613.6  126968.1  -0.000262607
   3   0.002000000   0.011757438   84696.4  127252.8   0.000064947
     ===========================================================


  TIME: GANDRA  STEP:    66.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0017777708      0.0000000000
        2      0.0000006026      0.0017778494      0.0004410127
        3      0.0000000000      0.0017779191      0.0000000000

    Force Error: 0.278674E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011777771   84729.1  127343.9   0.000076224
   2   0.001000603   0.011777849   84701.7  127451.2  -0.000268157
   3   0.002000000   0.011777919   84784.3  127737.4   0.000067300
     ===========================================================


  TIME: GANDRA  STEP:    67.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0017979560      0.0000000000
        2      0.0000006084      0.0017980369      0.0004510025
        3      0.0000000000      0.0017981089      0.0000000000

    Force Error: 0.274925E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011797956   84817.7  127821.4   0.000078604
   2   0.001000608   0.011798037   84789.9  127929.3  -0.000273692
   3   0.002000000   0.011798109   84872.1  128216.8   0.000069650
     ===========================================================


  TIME: GANDRA  STEP:    68.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0018178490      0.0000000000
        2      0.0000006141      0.0018179324      0.0004609618
        3      0.0000000000      0.0018180067      0.0000000000

    Force Error: 0.271156E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011817849   84906.3  128293.8   0.000080979
   2   0.001000614   0.011817932   84877.9  128402.2  -0.000279210
   3   0.002000000   0.011818007   84959.9  128691.2   0.000071996
     ===========================================================


  TIME: GANDRA  STEP:    69.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0018374491      0.0000000000
        2      0.0000006196      0.0018375349      0.0004708867
        3      0.0000000000      0.0018376115      0.0000000000

    Force Error: 0.267370E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011837449   84994.8  128760.9   0.000083349
   2   0.001000620   0.011837535   84966.0  128869.9  -0.000284709
   3   0.002000000   0.011837612   85047.6  129160.3   0.000074337
     ===========================================================


  TIME: GANDRA  STEP:    70.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0018567556      0.0000000000
        2      0.0000006251      0.0018568437      0.0004807734
        3      0.0000000000      0.0018569227      0.0000000000

    Force Error: 0.263569E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011856756   85083.3  129222.8   0.000085712
   2   0.001000625   0.011856844   85053.9  129332.3  -0.000290187
   3   0.002000000   0.011856923   85135.3  129624.1   0.000076672
     ===========================================================


  TIME: GANDRA  STEP:    71.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0018757679      0.0000000000
        2      0.0000006306      0.0018758583      0.0004906183
        3      0.0000000000      0.0018759396      0.0000000000

    Force Error: 0.259755E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011875768   85171.6  129679.4   0.000088068
   2   0.001000631   0.011875858   85141.8  129789.4  -0.000295643
   3   0.002000000   0.011875940   85222.9  130082.5   0.000079000
     ===========================================================


  TIME: GANDRA  STEP:    72.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0018944856      0.0000000000
        2      0.0000006359      0.0018945784      0.0005004177
        3      0.0000000000      0.0018946620      0.0000000000

    Force Error: 0.255931E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011894486   85259.8  130130.5   0.000090416
   2   0.001000636   0.011894578   85229.6  130241.1  -0.000301074
   3   0.002000000   0.011894662   85310.4  130535.5   0.000081319
     ===========================================================


  TIME: GANDRA  STEP:    73.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0019129088      0.0000000000
        2      0.0000006411      0.0019130039      0.0005101684
        3      0.0000000000      0.0019130898      0.0000000000

    Force Error: 0.252100E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011912909   85348.0  130576.1   0.000092754
   2   0.001000641   0.011913004   85317.2  130687.2  -0.000306478
   3   0.002000000   0.011913090   85397.8  130983.0   0.000083630
     ===========================================================


  TIME: GANDRA  STEP:    74.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0019310375      0.0000000000
        2      0.0000006463      0.0019311349      0.0005198670
        3      0.0000000000      0.0019312231      0.0000000000

    Force Error: 0.248264E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011931037   85435.9  131016.2   0.000095082
   2   0.001000646   0.011931135   85404.8  131127.8  -0.000311854
   3   0.002000000   0.011931223   85485.0  131424.9   0.000085930
     ===========================================================


  TIME: GANDRA  STEP:    75.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0019488718      0.0000000000
        2      0.0000006514      0.0019489715      0.0005295104
        3      0.0000000000      0.0019490620      0.0000000000

    Force Error: 0.244425E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011948872   85523.8  131450.8   0.000097398
   2   0.001000651   0.011948971   85492.1  131562.8  -0.000317200
   3   0.002000000   0.011949062   85572.2  131861.2   0.000088220
     ===========================================================


  TIME: GANDRA  STEP:    76.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0019664122      0.0000000000
        2      0.0000006563      0.0019665142      0.0005390957
        3      0.0000000000      0.0019666070      0.0000000000

    Force Error: 0.240586E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011966412   85611.4  131879.6   0.000099703
   2   0.001000656   0.011966514   85579.4  131992.2  -0.000322515
   3   0.002000000   0.011966607   85659.2  132291.8   0.000090497
     ===========================================================


  TIME: GANDRA  STEP:    77.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0019836594      0.0000000000
        2      0.0000006613      0.0019837637      0.0005486200
        3      0.0000000000      0.0019838587      0.0000000000

    Force Error: 0.236750E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011983659   85698.9  132302.8   0.000101994
   2   0.001000661   0.011983764   85666.4  132415.9  -0.000327796
   3   0.002000000   0.011983859   85746.0  132716.8   0.000092762
     ===========================================================


  TIME: GANDRA  STEP:    78.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0020006140      0.0000000000
        2      0.0000006661      0.0020007205      0.0005580806
        3      0.0000000000      0.0020008178      0.0000000000

    Force Error: 0.232918E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012000614   85786.1  132720.3   0.000104272
   2   0.001000666   0.012000721   85753.3  132833.8  -0.000333043
   3   0.002000000   0.012000818   85832.6  133135.9   0.000095013
     ===========================================================


  TIME: GANDRA  STEP:    79.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0020172771      0.0000000000
        2      0.0000006708      0.0020173858      0.0005674750
        3      0.0000000000      0.0020174853      0.0000000000

    Force Error: 0.229092E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012017277   85873.2  133132.0   0.000106535
   2   0.001000671   0.012017386   85839.9  133246.0  -0.000338254
   3   0.002000000   0.012017485   85919.0  133549.3   0.000097250
     ===========================================================


  TIME: GANDRA  STEP:    80.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0020336496      0.0000000000
        2      0.0000006755      0.0020337606      0.0005768007
        3      0.0000000000      0.0020338623      0.0000000000

    Force Error: 0.225276E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012033650   85960.0  133537.9   0.000108783
   2   0.001000676   0.012033761   85926.3  133652.3  -0.000343428
   3   0.002000000   0.012033862   86005.3  133956.9   0.000099473
     ===========================================================


  TIME: GANDRA  STEP:    81.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0020497329      0.0000000000
        2      0.0000006801      0.0020498462      0.0005860554
        3      0.0000000000      0.0020499500      0.0000000000

    Force Error: 0.221470E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012049733   86046.6  133937.9   0.000111015
   2   0.001000680   0.012049846   86012.5  134052.8  -0.000348564
   3   0.002000000   0.012049950   86091.2  134358.6   0.000101679
     ===========================================================


  TIME: GANDRA  STEP:    82.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0020655284      0.0000000000
        2      0.0000006846      0.0020656439      0.0005952370
        3      0.0000000000      0.0020657499      0.0000000000

    Force Error: 0.217678E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012065528   86132.9  134332.2   0.000113231
   2   0.001000685   0.012065644   86098.5  134447.5  -0.000353660
   3   0.002000000   0.012065750   86177.0  134754.4   0.000103869
     ===========================================================


  TIME: GANDRA  STEP:    83.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0020810376      0.0000000000
        2      0.0000006891      0.0020811553      0.0006043434
        3      0.0000000000      0.0020812635      0.0000000000

    Force Error: 0.213901E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012081038   86219.0  134720.5   0.000115429
   2   0.001000689   0.012081155   86184.2  134836.3  -0.000358716
   3   0.002000000   0.012081263   86262.5  135144.4   0.000106043
     ===========================================================


  TIME: GANDRA  STEP:    84.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0020962623      0.0000000000
        2      0.0000006934      0.0020963821      0.0006133727
        3      0.0000000000      0.0020964924      0.0000000000

    Force Error: 0.210142E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012096262   86304.8  135103.0   0.000117610
   2   0.001000693   0.012096382   86269.6  135219.2  -0.000363729
   3   0.002000000   0.012096492   86347.8  135528.4   0.000108198
     ===========================================================


  TIME: GANDRA  STEP:    85.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0021112042      0.0000000000
        2      0.0000006977      0.0021113261      0.0006223232
        3      0.0000000000      0.0021114386      0.0000000000

    Force Error: 0.206401E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012111204   86390.3  135479.6   0.000119772
   2   0.001000698   0.012111326   86354.7  135596.2  -0.000368701
   3   0.002000000   0.012111439   86432.7  135906.6   0.000110336
     ===========================================================


  TIME: GANDRA  STEP:    86.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0021258654      0.0000000000
        2      0.0000007020      0.0021259894      0.0006311932
        3      0.0000000000      0.0021261040      0.0000000000

    Force Error: 0.202682E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012125865   86475.5  135850.3   0.000121916
   2   0.001000702   0.012125989   86439.6  135967.3  -0.000373628
   3   0.002000000   0.012126104   86517.4  136278.8   0.000112455
     ===========================================================


  TIME: GANDRA  STEP:    87.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0021402479      0.0000000000
        2      0.0000007061      0.0021403740      0.0006399811
        3      0.0000000000      0.0021404907      0.0000000000

    Force Error: 0.198985E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012140248   86560.3  136215.1   0.000124040
   2   0.001000706   0.012140374   86524.1  136332.5  -0.000378511
   3   0.002000000   0.012140491   86601.8  136645.1   0.000114556
     ===========================================================


  TIME: GANDRA  STEP:    88.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0021543539      0.0000000000
        2      0.0000007102      0.0021544822      0.0006486857
        3      0.0000000000      0.0021546009      0.0000000000

    Force Error: 0.195313E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012154354   86644.9  136574.0   0.000126145
   2   0.001000710   0.012154482   86608.3  136691.9  -0.000383350
   3   0.002000000   0.012154601   86685.8  137005.5   0.000116637
     ===========================================================


  TIME: GANDRA  STEP:    89.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0021681859      0.0000000000
        2      0.0000007142      0.0021683162      0.0006573055
        3      0.0000000000      0.0021684369      0.0000000000

    Force Error: 0.191667E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012168186   86729.1  136927.1   0.000128230
   2   0.001000714   0.012168316   86692.2  137045.3  -0.000388142
   3   0.002000000   0.012168437   86769.5  137360.0   0.000118697
     ===========================================================


  TIME: GANDRA  STEP:    90.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0021817462      0.0000000000
        2      0.0000007182      0.0021818786      0.0006658395
        3      0.0000000000      0.0021820013      0.0000000000

    Force Error: 0.188049E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012181746   86812.9  137274.2   0.000130294
   2   0.001000718   0.012181879   86775.7  137392.8  -0.000392888
   3   0.002000000   0.012182001   86852.9  137708.5   0.000120738
     ===========================================================


  TIME: GANDRA  STEP:    91.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0021950374      0.0000000000
        2      0.0000007220      0.0021951718      0.0006742865
        3      0.0000000000      0.0021952966      0.0000000000

    Force Error: 0.184460E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012195037   86896.4  137615.5   0.000132337
   2   0.001000722   0.012195172   86858.9  137734.4  -0.000397586
   3   0.002000000   0.012195297   86936.0  138051.2   0.000122758
     ===========================================================


  TIME: GANDRA  STEP:    92.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0022080622      0.0000000000
        2      0.0000007259      0.0022081986      0.0006826456
        3      0.0000000000      0.0022083253      0.0000000000

    Force Error: 0.180902E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012208062   86979.5  137950.9   0.000134359
   2   0.001000726   0.012208199   86941.7  138070.2  -0.000402238
   3   0.002000000   0.012208325   87018.6  138388.0   0.000124758
     ===========================================================


  TIME: GANDRA  STEP:    93.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0022208234      0.0000000000
        2      0.0000007296      0.0022209617      0.0006909160
        3      0.0000000000      0.0022210904      0.0000000000

    Force Error: 0.177377E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012220823   87062.2  138280.5   0.000136360
   2   0.001000730   0.012220962   87024.1  138400.2  -0.000406841
   3   0.002000000   0.012221090   87100.9  138719.0   0.000126736
     ===========================================================


  TIME: GANDRA  STEP:    94.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0022333236      0.0000000000
        2      0.0000007333      0.0022334639      0.0006990968
        3      0.0000000000      0.0022335945      0.0000000000

    Force Error: 0.173885E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012233324   87144.5  138604.3   0.000138339
   2   0.001000733   0.012233464   87106.1  138724.4  -0.000411396
   3   0.002000000   0.012233595   87182.8  139044.2   0.000128693
     ===========================================================


  TIME: GANDRA  STEP:    95.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0022455660      0.0000000000
        2      0.0000007369      0.0022457082      0.0007071876
        3      0.0000000000      0.0022458407      0.0000000000

    Force Error: 0.170427E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012245566   87226.4  138922.3   0.000140297
   2   0.001000737   0.012245708   87187.7  139042.7  -0.000415902
   3   0.002000000   0.012245841   87264.3  139363.5   0.000130628
     ===========================================================


  TIME: GANDRA  STEP:    96.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0022575534      0.0000000000
        2      0.0000007405      0.0022576976      0.0007151877
        3      0.0000000000      0.0022578320      0.0000000000

    Force Error: 0.167006E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012257553   87307.9  139234.6   0.000142232
   2   0.001000740   0.012257698   87268.9  139355.3  -0.000420358
   3   0.002000000   0.012257832   87345.4  139677.1   0.000132541
     ===========================================================


  TIME: GANDRA  STEP:    97.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0022692890      0.0000000000
        2      0.0000007439      0.0022694350      0.0007230967
        3      0.0000000000      0.0022695713      0.0000000000

    Force Error: 0.163621E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012269289   87388.9  139541.1   0.000144145
   2   0.001000744   0.012269435   87349.6  139662.2  -0.000424766
   3   0.002000000   0.012269571   87426.1  139984.9   0.000134432
     ===========================================================


  TIME: GANDRA  STEP:    98.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0022807759      0.0000000000
        2      0.0000007474      0.0022809238      0.0007309143
        3      0.0000000000      0.0022810620      0.0000000000

    Force Error: 0.160275E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012280776   87469.5  139842.0   0.000146035
   2   0.001000747   0.012280924   87430.0  139963.4  -0.000429124
   3   0.002000000   0.012281062   87506.3  140287.1   0.000136301
     ===========================================================


  TIME: GANDRA  STEP:    99.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0022920173      0.0000000000
        2      0.0000007507      0.0022921671      0.0007386400
        3      0.0000000000      0.0022923071      0.0000000000

    Force Error: 0.156968E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012292017   87549.6  140137.2   0.000147903
   2   0.001000751   0.012292167   87509.8  140259.0  -0.000433432
   3   0.002000000   0.012292307   87586.1  140583.6   0.000138148
     ===========================================================


  TIME: GANDRA  STEP:   100.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0023030166      0.0000000000
        2      0.0000007541      0.0023031681      0.0007462739
        3      0.0000000000      0.0023033099      0.0000000000

    Force Error: 0.153701E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012303017   87629.3  140426.9   0.000149749
   2   0.001000754   0.012303168   87589.3  140549.0  -0.000437690
   3   0.002000000   0.012303310   87665.5  140874.5   0.000139972
     ===========================================================


  TIME: GANDRA  STEP:   101.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0023137769      0.0000000000
        2      0.0000007573      0.0023139302      0.0007538156
        3      0.0000000000      0.0023140738      0.0000000000

    Force Error: 0.150475E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012313777   87708.5  140710.9   0.000151572
   2   0.001000757   0.012313930   87668.2  140833.4  -0.000441898
   3   0.002000000   0.012314074   87744.4  141159.8   0.000141774
     ===========================================================


  TIME: GANDRA  STEP:   102.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0023243016      0.0000000000
        2      0.0000007605      0.0023244568      0.0007612653
        3      0.0000000000      0.0023246021      0.0000000000

    Force Error: 0.147290E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012324302   87787.2  140989.5   0.000153372
   2   0.001000761   0.012324457   87746.7  141112.3  -0.000446056
   3   0.002000000   0.012324602   87822.8  141439.6   0.000143554
     ===========================================================


  TIME: GANDRA  STEP:   103.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0023345943      0.0000000000
        2      0.0000007636      0.0023347512      0.0007686230
        3      0.0000000000      0.0023348982      0.0000000000

    Force Error: 0.144148E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012334594   87865.4  141262.7   0.000155149
   2   0.001000764   0.012334751   87824.7  141385.7  -0.000450164
   3   0.002000000   0.012334898   87900.7  141713.9   0.000145311
     ===========================================================


  TIME: GANDRA  STEP:   104.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0023446582      0.0000000000
        2      0.0000007667      0.0023448168      0.0007758887
        3      0.0000000000      0.0023449656      0.0000000000

    Force Error: 0.141048E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012344658   87943.1  141530.4   0.000156904
   2   0.001000767   0.012344817   87902.1  141653.8  -0.000454223
   3   0.002000000   0.012344966   87978.2  141982.8   0.000147045
     ===========================================================


  TIME: GANDRA  STEP:   105.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0023544970      0.0000000000
        2      0.0000007698      0.0023546573      0.0007830627
        3      0.0000000000      0.0023548077      0.0000000000

    Force Error: 0.137992E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012354497   88020.3  141792.7   0.000158636
   2   0.001000770   0.012354657   87979.1  141916.4  -0.000458231
   3   0.002000000   0.012354808   88055.1  142246.4   0.000148757
     ===========================================================


  TIME: GANDRA  STEP:   106.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0023641140      0.0000000000
        2      0.0000007727      0.0023642760      0.0007901451
        3      0.0000000000      0.0023644281      0.0000000000

    Force Error: 0.134981E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012364114   88097.0  142049.8   0.000160345
   2   0.001000773   0.012364276   88055.6  142173.8  -0.000462189
   3   0.002000000   0.012364428   88131.5  142504.6   0.000150447
     ===========================================================


  TIME: GANDRA  STEP:   107.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0023735128      0.0000000000
        2      0.0000007757      0.0023736765      0.0007971363
        3      0.0000000000      0.0023738303      0.0000000000

    Force Error: 0.132013E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012373513   88173.1  142301.6   0.000162032
   2   0.001000776   0.012373677   88131.5  142425.9  -0.000466098
   3   0.002000000   0.012373830   88207.4  142757.5   0.000152114
     ===========================================================


  TIME: GANDRA  STEP:   108.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0023826971      0.0000000000
        2      0.0000007785      0.0023828624      0.0008040366
        3      0.0000000000      0.0023830178      0.0000000000

    Force Error: 0.129091E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012382697   88248.7  142548.3   0.000163696
   2   0.001000779   0.012382862   88206.9  142672.9  -0.000469958
   3   0.002000000   0.012383018   88282.8  143005.3   0.000153758
     ===========================================================


  TIME: GANDRA  STEP:   109.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0023916703      0.0000000000
        2      0.0000007814      0.0023918372      0.0008108465
        3      0.0000000000      0.0023919942      0.0000000000

    Force Error: 0.126214E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012391670   88323.8  142789.8   0.000165338
   2   0.001000781   0.012391837   88281.7  142914.7  -0.000473768
   3   0.002000000   0.012391994   88357.6  143247.9   0.000155381
     ===========================================================


  TIME: GANDRA  STEP:   110.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0024004360      0.0000000000
        2      0.0000007841      0.0024006045      0.0008175664
        3      0.0000000000      0.0024007631      0.0000000000

    Force Error: 0.123383E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012400436   88398.2  143026.3   0.000166957
   2   0.001000784   0.012400605   88356.0  143151.5  -0.000477529
   3   0.002000000   0.012400763   88431.8  143485.5   0.000156981
     ===========================================================


  TIME: GANDRA  STEP:   111.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0024089978      0.0000000000
        2      0.0000007869      0.0024091679      0.0008241968
        3      0.0000000000      0.0024093281      0.0000000000

    Force Error: 0.120598E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012408998   88472.1  143257.8   0.000168554
   2   0.001000787   0.012409168   88429.7  143383.2  -0.000481241
   3   0.002000000   0.012409328   88505.6  143718.1   0.000158559
     ===========================================================


  TIME: GANDRA  STEP:   112.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0024173593      0.0000000000
        2      0.0000007895      0.0024175310      0.0008307383
        3      0.0000000000      0.0024176927      0.0000000000

    Force Error: 0.117858E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012417359   88545.5  143484.4   0.000170128
   2   0.001000790   0.012417531   88502.8  143610.1  -0.000484905
   3   0.002000000   0.012417693   88578.7  143945.7   0.000160115
     ===========================================================


  TIME: GANDRA  STEP:   113.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0024255242      0.0000000000
        2      0.0000007922      0.0024256974      0.0008371914
        3      0.0000000000      0.0024258605      0.0000000000

    Force Error: 0.115165E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012425524   88618.2  143706.1   0.000171681
   2   0.001000792   0.012425697   88575.4  143832.0  -0.000488521
   3   0.002000000   0.012425861   88651.2  144168.4   0.000161650
     ===========================================================


  TIME: GANDRA  STEP:   114.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0024334959      0.0000000000
        2      0.0000007947      0.0024336706      0.0008435568
        3      0.0000000000      0.0024338352      0.0000000000

    Force Error: 0.112518E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012433496   88690.3  143923.0   0.000173212
   2   0.001000795   0.012433671   88647.3  144049.2  -0.000492088
   3   0.002000000   0.012433835   88723.2  144386.4   0.000163162
     ===========================================================


  TIME: GANDRA  STEP:   115.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0024412780      0.0000000000
        2      0.0000007973      0.0024414542      0.0008498351
        3      0.0000000000      0.0024416204      0.0000000000

    Force Error: 0.109918E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012441278   88761.9  144135.1   0.000174721
   2   0.001000797   0.012441454   88718.7  144261.6  -0.000495609
   3   0.002000000   0.012441620   88794.6  144599.5   0.000164654
     ===========================================================


  TIME: GANDRA  STEP:   116.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0024488742      0.0000000000
        2      0.0000007998      0.0024490519      0.0008560272
        3      0.0000000000      0.0024492195      0.0000000000

    Force Error: 0.107364E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012448874   88832.8  144342.6   0.000176209
   2   0.001000800   0.012449052   88789.4  144469.4  -0.000499081
   3   0.002000000   0.012449219   88865.4  144808.1   0.000166123
     ===========================================================


  TIME: GANDRA  STEP:   117.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0024562881      0.0000000000
        2      0.0000008022      0.0024564672      0.0008621336
        3      0.0000000000      0.0024566362      0.0000000000

    Force Error: 0.104856E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012456288   88903.1  144545.6   0.000177675
   2   0.001000802   0.012456467   88859.6  144672.6  -0.000502507
   3   0.002000000   0.012456636   88935.5  145012.0   0.000167572
     ===========================================================


  TIME: GANDRA  STEP:   118.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0024635230      0.0000000000
        2      0.0000008046      0.0024637036      0.0008681552
        3      0.0000000000      0.0024638740      0.0000000000

    Force Error: 0.102394E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012463523   88972.7  144744.0   0.000179120
   2   0.001000805   0.012463704   88929.1  144871.3  -0.000505887
   3   0.002000000   0.012463874   89005.0  145211.4   0.000169000
     ===========================================================


  TIME: GANDRA  STEP:   119.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0024705827      0.0000000000
        2      0.0000008070      0.0024707646      0.0008740927
        3      0.0000000000      0.0024709364      0.0000000000

    Force Error: 0.999786E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012470583   89041.8  144937.9   0.000180544
   2   0.001000807   0.012470765   88997.9  145065.5  -0.000509220
   3   0.002000000   0.012470936   89073.9  145406.3   0.000170407
     ===========================================================


  TIME: GANDRA  STEP:   120.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0024774706      0.0000000000
        2      0.0000008093      0.0024776539      0.0008799470
        3      0.0000000000      0.0024778271      0.0000000000

    Force Error: 0.976091E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012477471   89110.1  145127.5   0.000181948
   2   0.001000809   0.012477654   89066.2  145255.3  -0.000512508
   3   0.002000000   0.012477827   89142.2  145596.8   0.000171794
     ===========================================================


  TIME: GANDRA  STEP:   121.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0024841901      0.0000000000
        2      0.0000008116      0.0024843748      0.0008857189
        3      0.0000000000      0.0024845493      0.0000000000

    Force Error: 0.952855E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012484190   89177.9  145312.8   0.000183330
   2   0.001000812   0.012484375   89133.7  145440.8  -0.000515751
   3   0.002000000   0.012484549   89209.8  145783.0   0.000173160
     ===========================================================


  TIME: GANDRA  STEP:   122.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0024907448      0.0000000000
        2      0.0000008138      0.0024909309      0.0008914092
        3      0.0000000000      0.0024911067      0.0000000000

    Force Error: 0.930073E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012490745   89244.9  145493.8   0.000184693
   2   0.001000814   0.012490931   89200.7  145622.1  -0.000518949
   3   0.002000000   0.012491107   89276.8  145965.0   0.000174506
     ===========================================================


  TIME: GANDRA  STEP:   123.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0024971381      0.0000000000
        2      0.0000008160      0.0024973255      0.0008970189
        3      0.0000000000      0.0024975026      0.0000000000

    Force Error: 0.907746E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012497138   89311.3  145670.7   0.000186036
   2   0.001000816   0.012497325   89266.9  145799.2  -0.000522102
   3   0.002000000   0.012497503   89343.1  146142.8   0.000175832
     ===========================================================


  TIME: GANDRA  STEP:   124.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025033734      0.0000000000
        2      0.0000008182      0.0025035621      0.0009025488
        3      0.0000000000      0.0025037405      0.0000000000

    Force Error: 0.885868E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012503373   89377.0  145843.5   0.000187358
   2   0.001000818   0.012503562   89332.5  145972.2  -0.000525212
   3   0.002000000   0.012503740   89408.7  146316.5   0.000177139
     ===========================================================


  TIME: GANDRA  STEP:   125.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025094541      0.0000000000
        2      0.0000008203      0.0025096440      0.0009079998
        3      0.0000000000      0.0025098237      0.0000000000

    Force Error: 0.864438E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012509454   89442.1  146012.3   0.000188661
   2   0.001000820   0.012509644   89397.4  146141.2  -0.000528278
   3   0.002000000   0.012509824   89473.7  146486.1   0.000178426
     ===========================================================


  TIME: GANDRA  STEP:   126.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025153835      0.0000000000
        2      0.0000008224      0.0025155747      0.0009133728
        3      0.0000000000      0.0025157556      0.0000000000

    Force Error: 0.843451E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012515383   89506.4  146177.1   0.000189945
   2   0.001000822   0.012515575   89461.6  146306.3  -0.000531301
   3   0.002000000   0.012515756   89538.0  146651.8   0.000179694
     ===========================================================


  TIME: GANDRA  STEP:   127.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025211649      0.0000000000
        2      0.0000008244      0.0025213574      0.0009186687
        3      0.0000000000      0.0025215395      0.0000000000

    Force Error: 0.822905E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012521165   89570.1  146338.1   0.000191210
   2   0.001000824   0.012521357   89525.2  146467.5  -0.000534282
   3   0.002000000   0.012521540   89601.6  146813.6   0.000180943
     ===========================================================


  TIME: GANDRA  STEP:   128.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025268016      0.0000000000
        2      0.0000008264      0.0025269953      0.0009238885
        3      0.0000000000      0.0025271787      0.0000000000

    Force Error: 0.802795E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012526802   89633.0  146495.2   0.000192455
   2   0.001000826   0.012526995   89588.0  146624.9  -0.000537221
   3   0.002000000   0.012527179   89664.5  146971.6   0.000182173
     ===========================================================


  TIME: GANDRA  STEP:   129.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025322969      0.0000000000
        2      0.0000008284      0.0025324918      0.0009290332
        3      0.0000000000      0.0025326764      0.0000000000

    Force Error: 0.783117E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012532297   89695.3  146648.7   0.000193682
   2   0.001000828   0.012532492   89650.1  146778.5  -0.000540118
   3   0.002000000   0.012532676   89726.7  147125.9   0.000183385
     ===========================================================


  TIME: GANDRA  STEP:   130.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025376540      0.0000000000
        2      0.0000008303      0.0025378501      0.0009341035
        3      0.0000000000      0.0025380358      0.0000000000

    Force Error: 0.763867E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012537654   89756.8  146798.4   0.000194891
   2   0.001000830   0.012537850   89711.6  146928.5  -0.000542974
   3   0.002000000   0.012538036   89788.2  147276.5   0.000184579
     ===========================================================


  TIME: GANDRA  STEP:   131.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025428760      0.0000000000
        2      0.0000008322      0.0025430732      0.0009391006
        3      0.0000000000      0.0025432601      0.0000000000

    Force Error: 0.745041E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012542876   89817.6  146944.6   0.000196082
   2   0.001000832   0.012543073   89772.3  147074.9  -0.000545790
   3   0.002000000   0.012543260   89849.0  147423.5   0.000185755
     ===========================================================


  TIME: GANDRA  STEP:   132.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025479660      0.0000000000
        2      0.0000008341      0.0025481644      0.0009440254
        3      0.0000000000      0.0025483524      0.0000000000

    Force Error: 0.726633E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012547966   89877.7  147087.3   0.000197254
   2   0.001000834   0.012548164   89832.3  147217.8  -0.000548566
   3   0.002000000   0.012548352   89909.1  147567.0   0.000186913
     ===========================================================


  TIME: GANDRA  STEP:   133.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025529271      0.0000000000
        2      0.0000008359      0.0025531266      0.0009488787
        3      0.0000000000      0.0025533158      0.0000000000

    Force Error: 0.708639E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012552927   89937.1  147226.5   0.000198409
   2   0.001000836   0.012553127   89891.5  147357.2  -0.000551302
   3   0.002000000   0.012553316   89968.5  147707.0   0.000188053
     ===========================================================


  TIME: GANDRA  STEP:   134.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025577623      0.0000000000
        2      0.0000008377      0.0025579630      0.0009536616
        3      0.0000000000      0.0025581533      0.0000000000

    Force Error: 0.691053E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012557762   89995.8  147362.4   0.000199547
   2   0.001000838   0.012557963   89950.1  147493.3  -0.000553999
   3   0.002000000   0.012558153   90027.1  147843.6   0.000189177
     ===========================================================


  TIME: GANDRA  STEP:   135.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025624747      0.0000000000
        2      0.0000008395      0.0025626765      0.0009583750
        3      0.0000000000      0.0025628679      0.0000000000

    Force Error: 0.673871E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012562475   90053.7  147495.0   0.000200668
   2   0.001000839   0.012562677   90007.9  147626.0  -0.000556657
   3   0.002000000   0.012562868   90085.0  147977.0   0.000190284
     ===========================================================


  TIME: GANDRA  STEP:   136.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025670672      0.0000000000
        2      0.0000008412      0.0025672701      0.0009630199
        3      0.0000000000      0.0025674625      0.0000000000

    Force Error: 0.657088E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012567067   90110.8  147624.3   0.000201772
   2   0.001000841   0.012567270   90065.0  147755.6  -0.000559278
   3   0.002000000   0.012567463   90142.2  148107.1   0.000191374
     ===========================================================


  TIME: GANDRA  STEP:   137.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025715427      0.0000000000
        2      0.0000008429      0.0025717467      0.0009675972
        3      0.0000000000      0.0025719402      0.0000000000

    Force Error: 0.640697E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012571543   90167.3  147750.4   0.000202859
   2   0.001000843   0.012571747   90121.3  147881.9  -0.000561860
   3   0.002000000   0.012571940   90198.6  148234.0   0.000192447
     ===========================================================


  TIME: GANDRA  STEP:   138.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025759041      0.0000000000
        2      0.0000008446      0.0025761091      0.0009721078
        3      0.0000000000      0.0025763036      0.0000000000

    Force Error: 0.624694E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012575904   90223.0  147873.5   0.000203930
   2   0.001000845   0.012576109   90176.9  148005.2  -0.000564406
   3   0.002000000   0.012576304   90254.3  148357.7   0.000193505
     ===========================================================


  TIME: GANDRA  STEP:   139.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025801541      0.0000000000
        2      0.0000008463      0.0025803601      0.0009765528
        3      0.0000000000      0.0025805557      0.0000000000

    Force Error: 0.609073E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012580154   90277.9  147993.5   0.000204985
   2   0.001000846   0.012580360   90231.8  148125.4  -0.000566915
   3   0.002000000   0.012580556   90309.3  148478.5   0.000194546
     ===========================================================


  TIME: GANDRA  STEP:   140.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025842956      0.0000000000
        2      0.0000008479      0.0025845026      0.0009809329
        3      0.0000000000      0.0025846992      0.0000000000

    Force Error: 0.593827E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012584296   90332.1  148110.6   0.000206024
   2   0.001000848   0.012584503   90285.9  148242.6  -0.000569389
   3   0.002000000   0.012584699   90363.5  148596.3   0.000195572
     ===========================================================


  TIME: GANDRA  STEP:   141.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025883312      0.0000000000
        2      0.0000008495      0.0025885392      0.0009852492
        3      0.0000000000      0.0025887368      0.0000000000

    Force Error: 0.578952E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012588331   90385.6  148224.8   0.000207047
   2   0.001000849   0.012588539   90339.3  148357.0  -0.000571826
   3   0.002000000   0.012588737   90417.0  148711.1   0.000196583
     ===========================================================


  TIME: GANDRA  STEP:   142.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025922636      0.0000000000
        2      0.0000008510      0.0025924727      0.0009895026
        3      0.0000000000      0.0025926712      0.0000000000

    Force Error: 0.564442E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012592264   90438.3  148336.1   0.000208056
   2   0.001000851   0.012592473   90391.9  148468.5  -0.000574228
   3   0.002000000   0.012592671   90469.7  148823.2   0.000197578
     ===========================================================


  TIME: GANDRA  STEP:   143.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025960955      0.0000000000
        2      0.0000008526      0.0025963055      0.0009936940
        3      0.0000000000      0.0025965050      0.0000000000

    Force Error: 0.550289E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012596095   90490.2  148444.7   0.000209049
   2   0.001000853   0.012596306   90443.8  148577.3  -0.000576596
   3   0.002000000   0.012596505   90521.7  148932.4   0.000198559
     ===========================================================


  TIME: GANDRA  STEP:   144.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025998294      0.0000000000
        2      0.0000008541      0.0026000404      0.0009978243
        3      0.0000000000      0.0026002409      0.0000000000

    Force Error: 0.536490E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012599829   90541.4  148550.5   0.000210027
   2   0.001000854   0.012600040   90494.9  148683.3  -0.000578930
   3   0.002000000   0.012600241   90572.9  149038.9   0.000199525
     ===========================================================


  TIME: GANDRA  STEP:   145.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026034679      0.0000000000
        2      0.0000008555      0.0026036798      0.0010018944
        3      0.0000000000      0.0026038813      0.0000000000

    Force Error: 0.523037E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012603468   90591.9  148653.7   0.000210991
   2   0.001000856   0.012603680   90545.3  148786.7  -0.000581230
   3   0.002000000   0.012603881   90623.4  149142.8   0.000200476
     ===========================================================


  TIME: GANDRA  STEP:   146.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026070134      0.0000000000
        2      0.0000008570      0.0026072263      0.0010059052
        3      0.0000000000      0.0026074286      0.0000000000

    Force Error: 0.509925E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012607013   90641.5  148754.4   0.000211940
   2   0.001000857   0.012607226   90594.9  148887.5  -0.000583496
   3   0.002000000   0.012607429   90673.1  149244.1   0.000201414
     ===========================================================


  TIME: GANDRA  STEP:   147.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026104685      0.0000000000
        2      0.0000008584      0.0026106822      0.0010098575
        3      0.0000000000      0.0026108855      0.0000000000

    Force Error: 0.497147E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012610468   90690.5  148852.5   0.000212875
   2   0.001000858   0.012610682   90643.8  148985.8  -0.000585730
   3   0.002000000   0.012610885   90722.1  149342.9   0.000202337
     ===========================================================


  TIME: GANDRA  STEP:   148.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026138353      0.0000000000
        2      0.0000008598      0.0026140501      0.0010137523
        3      0.0000000000      0.0026142542      0.0000000000

    Force Error: 0.484698E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012613835   90738.7  148948.2   0.000213797
   2   0.001000860   0.012614050   90691.9  149081.6  -0.000587932
   3   0.002000000   0.012614254   90770.4  149439.1   0.000203247
     ===========================================================


  TIME: GANDRA  STEP:   149.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026171165      0.0000000000
        2      0.0000008612      0.0026173321      0.0010175904
        3      0.0000000000      0.0026175371      0.0000000000

    Force Error: 0.472571E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012617116   90786.1  149041.4   0.000214705
   2   0.001000861   0.012617332   90739.2  149175.0  -0.000590101
   3   0.002000000   0.012617537   90817.8  149533.0   0.000204143
     ===========================================================


  TIME: GANDRA  STEP:   150.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026203141      0.0000000000
        2      0.0000008626      0.0026205306      0.0010213727
        3      0.0000000000      0.0026207365      0.0000000000

    Force Error: 0.460761E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012620314   90832.8  149132.3   0.000215599
   2   0.001000863   0.012620531   90785.9  149266.1  -0.000592240
   3   0.002000000   0.012620736   90864.6  149624.5   0.000205026
     ===========================================================


  TIME: GANDRA  STEP:   151.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026234305      0.0000000000
        2      0.0000008639      0.0026236478      0.0010251000
        3      0.0000000000      0.0026238546      0.0000000000

    Force Error: 0.449261E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012623430   90878.7  149221.0   0.000216480
   2   0.001000864   0.012623648   90831.7  149354.9  -0.000594347
   3   0.002000000   0.012623855   90910.6  149713.8   0.000205896
     ===========================================================


  TIME: GANDRA  STEP:   152.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026264678      0.0000000000
        2      0.0000008652      0.0026266860      0.0010287732
        3      0.0000000000      0.0026268936      0.0000000000

    Force Error: 0.438066E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012626468   90923.9  149307.4   0.000217348
   2   0.001000865   0.012626686   90876.9  149441.4  -0.000596424
   3   0.002000000   0.012626894   90955.8  149800.8   0.000206753
     ===========================================================


  TIME: GANDRA  STEP:   153.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026294283      0.0000000000
        2      0.0000008665      0.0026296473      0.0010323930
        3      0.0000000000      0.0026298558      0.0000000000

    Force Error: 0.427168E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012629428   90968.3  149391.6   0.000218204
   2   0.001000866   0.012629647   90921.3  149525.8  -0.000598471
   3   0.002000000   0.012629856   91000.3  149885.6   0.000207598
     ===========================================================


  TIME: GANDRA  STEP:   154.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026323140      0.0000000000
        2      0.0000008677      0.0026325339      0.0010359603
        3      0.0000000000      0.0026327431      0.0000000000

    Force Error: 0.416564E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012632314   91012.0  149473.7   0.000219047
   2   0.001000868   0.012632534   90964.9  149608.1  -0.000600488
   3   0.002000000   0.012632743   91044.1  149968.2   0.000208430
     ===========================================================


  TIME: GANDRA  STEP:   155.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026351270      0.0000000000
        2      0.0000008690      0.0026353477      0.0010394759
        3      0.0000000000      0.0026355578      0.0000000000

    Force Error: 0.406245E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012635127   91055.0  149553.8   0.000219878
   2   0.001000869   0.012635348   91007.8  149688.3  -0.000602476
   3   0.002000000   0.012635558   91087.1  150048.8   0.000209250
     ===========================================================


  TIME: GANDRA  STEP:   156.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026378693      0.0000000000
        2      0.0000008702      0.0026380908      0.0010429405
        3      0.0000000000      0.0026383017      0.0000000000

    Force Error: 0.396207E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012637869   91097.2  149631.8   0.000220696
   2   0.001000870   0.012638091   91050.0  149766.5  -0.000604435
   3   0.002000000   0.012638302   91129.4  150127.4   0.000210059
     ===========================================================


  TIME: GANDRA  STEP:   157.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026405429      0.0000000000
        2      0.0000008714      0.0026407652      0.0010463550
        3      0.0000000000      0.0026409769      0.0000000000

    Force Error: 0.386444E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012640543   91138.7  149707.9   0.000221503
   2   0.001000871   0.012640765   91091.5  149842.7  -0.000606366
   3   0.002000000   0.012640977   91171.0  150204.0   0.000210855
     ===========================================================


  TIME: GANDRA  STEP:   158.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026431498      0.0000000000
        2      0.0000008725      0.0026433728      0.0010497201
        3      0.0000000000      0.0026435853      0.0000000000

    Force Error: 0.376949E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012643150   91179.5  149782.0   0.000222298
   2   0.001000873   0.012643373   91132.2  149917.0  -0.000608269
   3   0.002000000   0.012643585   91211.9  150278.7   0.000211640
     ===========================================================


  TIME: GANDRA  STEP:   159.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026456917      0.0000000000
        2      0.0000008737      0.0026459156      0.0010530366
        3      0.0000000000      0.0026461287      0.0000000000

    Force Error: 0.367717E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012645692   91219.6  149854.4   0.000223081
   2   0.001000874   0.012645916   91172.2  149989.4  -0.000610145
   3   0.002000000   0.012646129   91252.0  150351.6   0.000212414
     ===========================================================


  TIME: GANDRA  STEP:   160.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026481706      0.0000000000
        2      0.0000008748      0.0026483952      0.0010563052
        3      0.0000000000      0.0026486091      0.0000000000

    Force Error: 0.358743E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012648171   91258.9  149924.9   0.000223854
   2   0.001000875   0.012648395   91211.5  150060.1  -0.000611993
   3   0.002000000   0.012648609   91291.4  150422.6   0.000213176
     ===========================================================


  TIME: GANDRA  STEP:   161.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026505883      0.0000000000
        2      0.0000008759      0.0026508136      0.0010595266
        3      0.0000000000      0.0026510283      0.0000000000

    Force Error: 0.350019E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012650588   91297.5  149993.6   0.000224615
   2   0.001000876   0.012650814   91250.1  150128.9  -0.000613814
   3   0.002000000   0.012651028   91330.1  150491.8   0.000213928
     ===========================================================


  TIME: GANDRA  STEP:   162.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026529464      0.0000000000
        2      0.0000008770      0.0026531725      0.0010627017
        3      0.0000000000      0.0026533879      0.0000000000

    Force Error: 0.341542E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012652946   91335.4  150060.6   0.000225365
   2   0.001000877   0.012653173   91288.0  150196.1  -0.000615610
   3   0.002000000   0.012653388   91368.1  150559.3   0.000214669
     ===========================================================


  TIME: GANDRA  STEP:   163.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026552468      0.0000000000
        2      0.0000008781      0.0026554737      0.0010658310
        3      0.0000000000      0.0026556898      0.0000000000

    Force Error: 0.333305E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012655247   91372.7  150126.0   0.000226104
   2   0.001000878   0.012655474   91325.1  150261.6  -0.000617379
   3   0.002000000   0.012655690   91405.4  150625.2   0.000215399
     ===========================================================


  TIME: GANDRA  STEP:   164.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026574911      0.0000000000
        2      0.0000008792      0.0026577187      0.0010689153
        3      0.0000000000      0.0026579355      0.0000000000

    Force Error: 0.325302E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012657491   91409.2  150189.7   0.000226833
   2   0.001000879   0.012657719   91361.6  150325.4  -0.000619122
   3   0.002000000   0.012657936   91442.0  150689.4   0.000216119
     ===========================================================


  TIME: GANDRA  STEP:   165.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026596810      0.0000000000
        2      0.0000008802      0.0026599092      0.0010719553
        3      0.0000000000      0.0026601268      0.0000000000

    Force Error: 0.317529E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012659681   91445.0  150251.9   0.000227552
   2   0.001000880   0.012659909   91397.4  150387.7  -0.000620841
   3   0.002000000   0.012660127   91478.0  150752.0   0.000216828
     ===========================================================


  TIME: GANDRA  STEP:   166.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026618180      0.0000000000
        2      0.0000008812      0.0026620469      0.0010749516
        3      0.0000000000      0.0026622651      0.0000000000

    Force Error: 0.309979E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012661818   91480.2  150312.5   0.000228260
   2   0.001000881   0.012662047   91432.6  150448.4  -0.000622535
   3   0.002000000   0.012662265   91513.2  150813.1   0.000217528
     ===========================================================


  TIME: GANDRA  STEP:   167.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026639036      0.0000000000
        2      0.0000008822      0.0026641333      0.0010779050
        3      0.0000000000      0.0026643522      0.0000000000

    Force Error: 0.302648E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012663904   91514.7  150371.6   0.000228959
   2   0.001000882   0.012664133   91467.0  150507.7  -0.000624204
   3   0.002000000   0.012664352   91547.8  150872.6   0.000218217
     ===========================================================


  TIME: GANDRA  STEP:   168.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026659395      0.0000000000
        2      0.0000008832      0.0026661699      0.0010808160
        3      0.0000000000      0.0026663894      0.0000000000

    Force Error: 0.295531E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012665940   91548.5  150429.3   0.000229647
   2   0.001000883   0.012666170   91500.8  150565.5  -0.000625849
   3   0.002000000   0.012666389   91581.7  150930.7   0.000218897
     ===========================================================


  TIME: GANDRA  STEP:   169.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026679271      0.0000000000
        2      0.0000008841      0.0026681581      0.0010836854
        3      0.0000000000      0.0026683783      0.0000000000

    Force Error: 0.288621E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012667927   91581.6  150485.5   0.000230326
   2   0.001000884   0.012668158   91533.9  150621.8  -0.000627470
   3   0.002000000   0.012668378   91614.9  150987.4   0.000219568
     ===========================================================


  TIME: GANDRA  STEP:   170.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026698678      0.0000000000
        2      0.0000008851      0.0026700995      0.0010865138
        3      0.0000000000      0.0026703204      0.0000000000

    Force Error: 0.281914E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012669868   91614.1  150540.4   0.000230995
   2   0.001000885   0.012670099   91566.4  150676.8  -0.000629068
   3   0.002000000   0.012670320   91647.5  151042.7   0.000220229
     ===========================================================


  TIME: GANDRA  STEP:   171.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026717631      0.0000000000
        2      0.0000008860      0.0026719954      0.0010893017
        3      0.0000000000      0.0026722169      0.0000000000

    Force Error: 0.275405E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012671763   91646.0  150594.0   0.000231655
   2   0.001000886   0.012671995   91598.2  150730.5  -0.000630643
   3   0.002000000   0.012672217   91679.5  151096.7   0.000220880
     ===========================================================


  TIME: GANDRA  STEP:   172.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026736142      0.0000000000
        2      0.0000008869      0.0026738472      0.0010920498
        3      0.0000000000      0.0026740693      0.0000000000

    Force Error: 0.269089E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012673614   91677.2  150646.2   0.000232306
   2   0.001000887   0.012673847   91629.4  150782.9  -0.000632195
   3   0.002000000   0.012674069   91710.8  151149.3   0.000221523
     ===========================================================


  TIME: GANDRA  STEP:   173.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026754226      0.0000000000
        2      0.0000008878      0.0026756562      0.0010947588
        3      0.0000000000      0.0026758790      0.0000000000

    Force Error: 0.262961E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012675423   91707.8  150697.2   0.000232948
   2   0.001000888   0.012675656   91660.0  150834.0  -0.000633724
   3   0.002000000   0.012675879   91741.5  151200.7   0.000222157
     ===========================================================


  TIME: GANDRA  STEP:   174.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026771895      0.0000000000
        2      0.0000008887      0.0026774237      0.0010974291
        3      0.0000000000      0.0026776471      0.0000000000

    Force Error: 0.257017E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012677190   91737.8  150747.0   0.000233580
   2   0.001000889   0.012677424   91690.0  150883.9  -0.000635232
   3   0.002000000   0.012677647   91771.5  151250.9   0.000222782
     ===========================================================


  TIME: GANDRA  STEP:   175.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026789162      0.0000000000
        2      0.0000008896      0.0026791510      0.0011000614
        3      0.0000000000      0.0026793750      0.0000000000

    Force Error: 0.251251E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012678916   91767.1  150795.6   0.000234204
   2   0.001000890   0.012679151   91719.3  150932.5  -0.000636718
   3   0.002000000   0.012679375   91801.0  151299.9   0.000223398
     ===========================================================


  TIME: GANDRA  STEP:   176.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026806040      0.0000000000
        2      0.0000008904      0.0026808394      0.0011026563
        3      0.0000000000      0.0026810640      0.0000000000

    Force Error: 0.245659E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012680604   91795.9  150843.0   0.000234820
   2   0.001000890   0.012680839   91748.0  150980.1  -0.000638182
   3   0.002000000   0.012681064   91829.8  151347.7   0.000224006
     ===========================================================


  TIME: GANDRA  STEP:   177.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026822539      0.0000000000
        2      0.0000008912      0.0026824899      0.0011052144
        3      0.0000000000      0.0026827151      0.0000000000

    Force Error: 0.240236E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012682254   91824.1  150889.3   0.000235426
   2   0.001000891   0.012682490   91776.2  151026.5  -0.000639626
   3   0.002000000   0.012682715   91858.1  151394.4   0.000224605
     ===========================================================


  TIME: GANDRA  STEP:   178.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026838672      0.0000000000
        2      0.0000008921      0.0026841038      0.0011077360
        3      0.0000000000      0.0026843296      0.0000000000

    Force Error: 0.234978E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012683867   91851.6  150934.6   0.000236025
   2   0.001000892   0.012684104   91803.7  151071.8  -0.000641048
   3   0.002000000   0.012684330   91885.7  151440.0   0.000225197
     ===========================================================


  TIME: GANDRA  STEP:   179.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026854451      0.0000000000
        2      0.0000008929      0.0026856823      0.0011102220
        3      0.0000000000      0.0026859086      0.0000000000

    Force Error: 0.229881E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012685445   91878.6  150978.8   0.000236615
   2   0.001000893   0.012685682   91830.7  151116.1  -0.000642450
   3   0.002000000   0.012685909   91912.8  151484.5   0.000225780
     ===========================================================


  TIME: GANDRA  STEP:   180.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026869885      0.0000000000
        2      0.0000008937      0.0026872263      0.0011126726
        3      0.0000000000      0.0026874532      0.0000000000

    Force Error: 0.224939E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012686989   91905.1  151021.9   0.000237197
   2   0.001000894   0.012687226   91857.1  151159.3  -0.000643832
   3   0.002000000   0.012687453   91939.4  151528.0   0.000226355
     ===========================================================


  TIME: GANDRA  STEP:   181.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026884987      0.0000000000
        2      0.0000008944      0.0026887370      0.0011150886
        3      0.0000000000      0.0026889645      0.0000000000

    Force Error: 0.220150E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012688499   91930.9  151064.1   0.000237772
   2   0.001000894   0.012688737   91883.0  151201.6  -0.000645194
   3   0.002000000   0.012688965   91965.3  151570.5   0.000226922
     ===========================================================


  TIME: GANDRA  STEP:   182.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026899765      0.0000000000
        2      0.0000008952      0.0026902154      0.0011174703
        3      0.0000000000      0.0026904435      0.0000000000

    Force Error: 0.215509E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012689977   91956.2  151105.3   0.000238338
   2   0.001000895   0.012690215   91908.3  151242.9  -0.000646537
   3   0.002000000   0.012690443   91990.7  151612.0   0.000227482
     ===========================================================


  TIME: GANDRA  STEP:   183.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026914231      0.0000000000
        2      0.0000008959      0.0026916626      0.0011198184
        3      0.0000000000      0.0026918912      0.0000000000

    Force Error: 0.211011E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012691423   91981.0  151145.6   0.000238897
   2   0.001000896   0.012691663   91933.0  151283.2  -0.000647860
   3   0.002000000   0.012691891   92015.6  151652.6   0.000228034
     ===========================================================


  TIME: GANDRA  STEP:   184.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026928395      0.0000000000
        2      0.0000008967      0.0026930795      0.0011221333
        3      0.0000000000      0.0026933086      0.0000000000

    Force Error: 0.206653E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012692839   92005.3  151184.9   0.000239448
   2   0.001000897   0.012693079   91957.3  151322.7  -0.000649164
   3   0.002000000   0.012693309   92039.9  151692.3   0.000228578
     ===========================================================


  TIME: GANDRA  STEP:   185.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026942264      0.0000000000
        2      0.0000008974      0.0026944670      0.0011244155
        3      0.0000000000      0.0026946966      0.0000000000

    Force Error: 0.202430E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012694226   92029.0  151223.4   0.000239991
   2   0.001000897   0.012694467   91981.0  151361.2  -0.000650449
   3   0.002000000   0.012694697   92063.7  151731.1   0.000229116
     ===========================================================


  TIME: GANDRA  STEP:   186.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026955850      0.0000000000
        2      0.0000008981      0.0026958261      0.0011266655
        3      0.0000000000      0.0026960562      0.0000000000

    Force Error: 0.198340E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012695585   92052.2  151261.0   0.000240528
   2   0.001000898   0.012695826   92004.2  151398.9  -0.000651716
   3   0.002000000   0.012696056   92087.0  151769.0   0.000229645
     ===========================================================


  TIME: GANDRA  STEP:   187.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026969161      0.0000000000
        2      0.0000008988      0.0026971577      0.0011288837
        3      0.0000000000      0.0026973883      0.0000000000

    Force Error: 0.194378E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012696916   92074.9  151297.8   0.000241057
   2   0.001000899   0.012697158   92026.9  151435.8  -0.000652965
   3   0.002000000   0.012697388   92109.8  151806.1   0.000230168
     ===========================================================


  TIME: GANDRA  STEP:   188.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026982205      0.0000000000
        2      0.0000008995      0.0026984626      0.0011310706
        3      0.0000000000      0.0026986938      0.0000000000

    Force Error: 0.190541E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012698221   92097.1  151333.8   0.000241578
   2   0.001000899   0.012698463   92049.1  151471.9  -0.000654195
   3   0.002000000   0.012698694   92132.1  151842.4   0.000230684
     ===========================================================


  TIME: GANDRA  STEP:   189.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026994992      0.0000000000
        2      0.0000009001      0.0026997418      0.0011332268
        3      0.0000000000      0.0026999735      0.0000000000

    Force Error: 0.186824E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012699499   92118.9  151369.1   0.000242093
   2   0.001000900   0.012699742   92070.8  151507.2  -0.000655408
   3   0.002000000   0.012699973   92154.0  151877.9   0.000231193
     ===========================================================


  TIME: GANDRA  STEP:   190.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0027007528      0.0000000000
        2      0.0000009008      0.0027009959      0.0011353526
        3      0.0000000000      0.0027012281      0.0000000000

    Force Error: 0.183225E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012700753   92140.1  151403.6   0.000242601
   2   0.001000901   0.012700996   92092.0  151541.8  -0.000656604
   3   0.002000000   0.012701228   92175.3  151912.7   0.000231695
     ===========================================================


  TIME: GANDRA  STEP:   191.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0027019824      0.0000000000
        2      0.0000009014      0.0027022260      0.0011374484
        3      0.0000000000      0.0027024586      0.0000000000

    Force Error: 0.179740E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012701982   92160.9  151437.3   0.000243102
   2   0.001000901   0.012702226   92112.8  151575.6  -0.000657782
   3   0.002000000   0.012702459   92196.2  151946.7   0.000232190
     ===========================================================


  TIME: GANDRA  STEP:   192.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0027031885      0.0000000000
        2      0.0000009021      0.0027034326      0.0011395148
        3      0.0000000000      0.0027036657      0.0000000000

    Force Error: 0.176366E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012703188   92181.2  151470.4   0.000243596
   2   0.001000902   0.012703433   92133.1  151608.7  -0.000658944
   3   0.002000000   0.012703666   92216.6  151980.0   0.000232678
     ===========================================================


  TIME: GANDRA  STEP:   193.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0027043720      0.0000000000
        2      0.0000009027      0.0027046165      0.0011415521
        3      0.0000000000      0.0027048502      0.0000000000

    Force Error: 0.173099E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012704372   92201.1  151502.7   0.000244084
   2   0.001000903   0.012704617   92153.0  151641.1  -0.000660089
   3   0.002000000   0.012704850   92236.5  152012.6   0.000233161
     ===========================================================


  TIME: GANDRA  STEP:   194.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0027055335      0.0000000000
        2      0.0000009033      0.0027057786      0.0011435607
        3      0.0000000000      0.0027060127      0.0000000000

    Force Error: 0.169937E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012705534   92220.5  151534.4   0.000244565
   2   0.001000903   0.012705779   92172.4  151672.9  -0.000661217
   3   0.002000000   0.012706013   92256.1  152044.6   0.000233636
     ===========================================================


  TIME: GANDRA  STEP:   195.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0027066739      0.0000000000
        2      0.0000009039      0.0027069194      0.0011455412
        3      0.0000000000      0.0027071540      0.0000000000

    Force Error: 0.166875E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012706674   92239.6  151565.5   0.000245040
   2   0.001000904   0.012706919   92191.4  151704.0  -0.000662329
   3   0.002000000   0.012707154   92275.2  152075.9   0.000234106
     ===========================================================


  TIME: GANDRA  STEP:   196.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0027077937      0.0000000000
        2      0.0000009045      0.0027080397      0.0011474938
        3      0.0000000000      0.0027082747      0.0000000000

    Force Error: 0.163912E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012707794   92258.2  151595.9   0.000245508
   2   0.001000904   0.012708040   92210.0  151734.5  -0.000663425
   3   0.002000000   0.012708275   92293.9  152106.6   0.000234569
     ===========================================================


  TIME: GANDRA  STEP:   197.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0027088937      0.0000000000
        2      0.0000009050      0.0027091401      0.0011494190
        3      0.0000000000      0.0027093756      0.0000000000

    Force Error: 0.161044E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012708894   92276.3  151625.7   0.000245971
   2   0.001000905   0.012709140   92228.2  151764.4  -0.000664506
   3   0.002000000   0.012709376   92312.1  152136.6   0.000235025
     ===========================================================


  TIME: GANDRA  STEP:   198.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0027099744      0.0000000000
        2      0.0000009056      0.0027102213      0.0011513171
        3      0.0000000000      0.0027104572      0.0000000000

    Force Error: 0.158268E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012709974   92294.1  151655.0   0.000246427
   2   0.001000906   0.012710221   92246.0  151793.7  -0.000665571
   3   0.002000000   0.012710457   92330.0  152166.1   0.000235476
     ===========================================================


  TIME: GANDRA  STEP:   199.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0027110366      0.0000000000
        2      0.0000009061      0.0027112839      0.0011531887
        3      0.0000000000      0.0027115203      0.0000000000

    Force Error: 0.155582E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012711037   92311.5  151683.7   0.000246877
   2   0.001000906   0.012711284   92263.4  151822.5  -0.000666621
   3   0.002000000   0.012711520   92347.5  152195.0   0.000235921
     ===========================================================


  TIME: GANDRA  STEP:   200.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0027120808      0.0000000000
        2      0.0000009067      0.0027123285      0.0011550339
        3      0.0000000000      0.0027125653      0.0000000000

    Force Error: 0.152982E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012712081   92328.5  151711.8   0.000247320
   2   0.001000907   0.012712329   92280.4  151850.7  -0.000667655
   3   0.002000000   0.012712565   92364.6  152223.4   0.000236360
