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
         GandR variable 1 ...................... GNR1    =   0.700000E-01
         GandR variable 2 ...................... GNR2    =   0.700000E-01
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
        1      0.0000000000      0.0000461739      0.0000000000
        2      0.0000000178      0.0000461690     -0.0000015276
        3      0.0000000000      0.0000461622      0.0000000000

    Force Error: 0.582972E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010046174   81261.5   90097.7  -0.000000000
   2   0.001000018   0.010046169   81283.9   90124.5   0.000000000
   3   0.002000000   0.010046162   81335.2   90185.6   0.000000000
     ===========================================================


  TIME: GANDRA  STEP:     3.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0000743221      0.0000000000
        2      0.0000000296      0.0000743142     -0.0000023780
        3      0.0000000000      0.0000743030      0.0000000000

    Force Error: 0.366460E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010074322   81684.9   92533.3  -0.000004846
   2   0.001000030   0.010074314   81702.5   92566.5  -0.000004648
   3   0.002000000   0.010074303   81768.8   92657.8  -0.000006859
     ===========================================================


  TIME: GANDRA  STEP:     4.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0001083992      0.0000000000
        2      0.0000000435      0.0001083888     -0.0000031795
        3      0.0000000000      0.0001083739      0.0000000000

    Force Error: 0.444147E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010108399   80829.4   92425.9  -0.000007892
   2   0.001000044   0.010108389   80850.3   92468.1  -0.000007700
   3   0.002000000   0.010108374   80934.1   92585.5  -0.000011259
     ===========================================================


  TIME: GANDRA  STEP:     5.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0001406355      0.0000000000
        2      0.0000000570      0.0001406230     -0.0000038171
        3      0.0000000000      0.0001406054      0.0000000000

    Force Error: 0.421755E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010140636   80603.9   93207.9  -0.000010463
   2   0.001000057   0.010140623   80624.4   93255.5  -0.000010146
   3   0.002000000   0.010140605   80718.3   93391.3  -0.000014845
     ===========================================================


  TIME: GANDRA  STEP:     6.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0001737847      0.0000000000
        2      0.0000000706      0.0001737705     -0.0000042940
        3      0.0000000000      0.0001737506      0.0000000000

    Force Error: 0.433525E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010173785   80313.6   93698.8  -0.000012504
   2   0.001000071   0.010173771   80334.3   93751.2  -0.000012058
   3   0.002000000   0.010173751   80435.6   93901.3  -0.000017634
     ===========================================================


  TIME: GANDRA  STEP:     7.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0002069952      0.0000000000
        2      0.0000000841      0.0002069796     -0.0000046066
        3      0.0000000000      0.0002069579      0.0000000000

    Force Error: 0.434175E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010206995   80156.4   94299.4  -0.000014200
   2   0.001000084   0.010206980   80176.5   94355.3  -0.000013659
   3   0.002000000   0.010206958   80282.6   94516.4  -0.000019890
     ===========================================================


  TIME: GANDRA  STEP:     8.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0002405853      0.0000000000
        2      0.0000000977      0.0002405685     -0.0000047483
        3      0.0000000000      0.0002405453      0.0000000000

    Force Error: 0.438756E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010240585   80036.7   94874.7  -0.000015611
   2   0.001000098   0.010240568   80056.1   94933.7  -0.000015032
   3   0.002000000   0.010240545   80165.3   95103.4  -0.000021718
     ===========================================================


  TIME: GANDRA  STEP:     9.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0002744733      0.0000000000
        2      0.0000001111      0.0002744555     -0.0000047196
        3      0.0000000000      0.0002744310      0.0000000000

    Force Error: 0.442278E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010274473   79963.4   95469.3  -0.000016803
   2   0.001000111   0.010274455   79982.0   95530.9  -0.000016270
   3   0.002000000   0.010274431   80093.0   95707.5  -0.000023225
     ===========================================================


  TIME: GANDRA  STEP:    10.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0003087022      0.0000000000
        2      0.0000001245      0.0003086835     -0.0000045196
        3      0.0000000000      0.0003086579      0.0000000000

    Force Error: 0.446350E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010308702   79916.9   96068.3  -0.000017820
   2   0.001000124   0.010308683   79934.5   96132.1  -0.000017429
   3   0.002000000   0.010308658   80046.5   96314.5  -0.000024482
     ===========================================================


  TIME: GANDRA  STEP:    11.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0003432694      0.0000000000
        2      0.0000001378      0.0003432499     -0.0000041494
        3      0.0000000000      0.0003432235      0.0000000000

    Force Error: 0.450406E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010343269   79891.6   96676.7  -0.000018696
   2   0.001000138   0.010343250   79908.3   96742.5  -0.000018555
   3   0.002000000   0.010343223   80020.7   96929.7  -0.000025543
     ===========================================================


  TIME: GANDRA  STEP:    12.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0003781843      0.0000000000
        2      0.0000001511      0.0003781641     -0.0000036097
        3      0.0000000000      0.0003781369      0.0000000000

    Force Error: 0.454595E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010378184   79881.0   97293.0  -0.000019455
   2   0.001000151   0.010378164   79896.6   97360.6  -0.000019680
   3   0.002000000   0.010378137   80009.0   97552.0  -0.000026449
     ===========================================================


  TIME: GANDRA  STEP:    13.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0004134501      0.0000000000
        2      0.0000001643      0.0004134294     -0.0000029019
        3      0.0000000000      0.0004134015      0.0000000000

    Force Error: 0.458839E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010413450   79881.0   97917.9  -0.000020118
   2   0.001000164   0.010413429   79895.6   97987.1  -0.000020827
   3   0.002000000   0.010413401   80007.8   98182.3  -0.000027229
     ===========================================================


  TIME: GANDRA  STEP:    14.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0004490706      0.0000000000
        2      0.0000001774      0.0004490494     -0.0000020271
        3      0.0000000000      0.0004490209      0.0000000000

    Force Error: 0.463138E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010449071   79888.8   98551.2  -0.000020697
   2   0.001000177   0.010449049   79902.3   98622.1  -0.000022013
   3   0.002000000   0.010449021   80014.0   98820.7  -0.000027906
     ===========================================================


  TIME: GANDRA  STEP:    15.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0004850482      0.0000000000
        2      0.0000001905      0.0004850266     -0.0000009867
        3      0.0000000000      0.0004849976      0.0000000000

    Force Error: 0.467473E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010485048   79902.3   99193.3  -0.000021203
   2   0.001000190   0.010485027   79914.8   99265.6  -0.000023251
   3   0.002000000   0.010484998   80025.9   99467.5  -0.000028496
     ===========================================================


  TIME: GANDRA  STEP:    16.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0005213850      0.0000000000
        2      0.0000002035      0.0005213630      0.0000002180
        3      0.0000000000      0.0005213335      0.0000000000

    Force Error: 0.471835E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010521385   79920.1   99844.1  -0.000021644
   2   0.001000203   0.010521363   79931.4   99917.9  -0.000024550
   3   0.002000000   0.010521334   80041.9  100122.9  -0.000029010
     ===========================================================


  TIME: GANDRA  STEP:    17.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0005580824      0.0000000000
        2      0.0000002165      0.0005580600      0.0000015857
        3      0.0000000000      0.0005580302      0.0000000000

    Force Error: 0.476216E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010558082   79941.2  100503.8  -0.000022026
   2   0.001000216   0.010558060   79951.4  100579.1  -0.000025915
   3   0.002000000   0.010558030   80061.1  100787.0  -0.000029459
     ===========================================================


  TIME: GANDRA  STEP:    18.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0005951414      0.0000000000
        2      0.0000002294      0.0005951187      0.0000031151
        3      0.0000000000      0.0005950885      0.0000000000

    Force Error: 0.480607E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010595141   79964.8  101172.5  -0.000022354
   2   0.001000229   0.010595119   79973.9  101249.2  -0.000027352
   3   0.002000000   0.010595089   80082.8  101460.1  -0.000029847
     ===========================================================


  TIME: GANDRA  STEP:    19.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0006325627      0.0000000000
        2      0.0000002422      0.0006325398      0.0000048048
        3      0.0000000000      0.0006325094      0.0000000000

    Force Error: 0.485004E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010632563   79990.4  101850.3  -0.000022630
   2   0.001000242   0.010632540   79998.4  101928.4  -0.000028863
   3   0.002000000   0.010632509   80106.5  102142.1  -0.000030181
     ===========================================================


  TIME: GANDRA  STEP:    20.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0006703468      0.0000000000
        2      0.0000002550      0.0006703237      0.0000066536
        3      0.0000000000      0.0006702930      0.0000000000

    Force Error: 0.489402E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010670347   80017.7  102537.2  -0.000022858
   2   0.001000255   0.010670324   80024.6  102616.8  -0.000030451
   3   0.002000000   0.010670293   80131.9  102833.4  -0.000030463
     ===========================================================


  TIME: GANDRA  STEP:    21.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0007084937      0.0000000000
        2      0.0000002678      0.0007084706      0.0000086602
        3      0.0000000000      0.0007084397      0.0000000000

    Force Error: 0.493796E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010708494   80046.5  103233.5  -0.000023040
   2   0.001000268   0.010708471   80052.3  103314.5  -0.000032118
   3   0.002000000   0.010708440   80158.8  103533.9  -0.000030698
     ===========================================================


  TIME: GANDRA  STEP:    22.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0007470035      0.0000000000
        2      0.0000002805      0.0007469803      0.0000108236
        3      0.0000000000      0.0007469492      0.0000000000

    Force Error: 0.498182E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010747004   80076.5  103939.1  -0.000023177
   2   0.001000280   0.010746980   80081.2  104021.5  -0.000033863
   3   0.002000000   0.010746949   80186.9  104243.8  -0.000030887
     ===========================================================


  TIME: GANDRA  STEP:    23.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0007858758      0.0000000000
        2      0.0000002931      0.0007858525      0.0000131425
        3      0.0000000000      0.0007858213      0.0000000000

    Force Error: 0.502558E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010785876   80107.7  104654.2  -0.000023271
   2   0.001000293   0.010785852   80111.3  104738.1  -0.000035689
   3   0.002000000   0.010785821   80216.2  104963.2  -0.000031032
     ===========================================================


  TIME: GANDRA  STEP:    24.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0008251100      0.0000000000
        2      0.0000003057      0.0008250866      0.0000156157
        3      0.0000000000      0.0008250554      0.0000000000

    Force Error: 0.506920E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010825110   80140.0  105378.8  -0.000023322
   2   0.001000306   0.010825087   80142.5  105464.1  -0.000037595
   3   0.002000000   0.010825055   80246.6  105692.2  -0.000031135
     ===========================================================


  TIME: GANDRA  STEP:    25.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0008647054      0.0000000000
        2      0.0000003182      0.0008646821      0.0000182422
        3      0.0000000000      0.0008646508      0.0000000000

    Force Error: 0.511266E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010864705   80173.3  106113.1  -0.000023333
   2   0.001000318   0.010864682   80174.8  106199.8  -0.000039581
   3   0.002000000   0.010864651   80278.0  106430.8  -0.000031196
     ===========================================================


  TIME: GANDRA  STEP:    26.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0009046610      0.0000000000
        2      0.0000003307      0.0009046377      0.0000210209
        3      0.0000000000      0.0009046065      0.0000000000

    Force Error: 0.515592E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010904661   80207.6  106857.0  -0.000023302
   2   0.001000331   0.010904638   80208.0  106945.2  -0.000041648
   3   0.002000000   0.010904607   80310.5  107179.1  -0.000031217
     ===========================================================


  TIME: GANDRA  STEP:    27.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0009449757      0.0000000000
        2      0.0000003432      0.0009449526      0.0000239507
        3      0.0000000000      0.0009449214      0.0000000000

    Force Error: 0.519896E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010944976   80242.9  107610.7  -0.000023232
   2   0.001000343   0.010944953   80242.2  107700.4  -0.000043795
   3   0.002000000   0.010944921   80343.8  107937.2  -0.000031198
     ===========================================================


  TIME: GANDRA  STEP:    28.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0009856481      0.0000000000
        2      0.0000003556      0.0009856251      0.0000270307
        3      0.0000000000      0.0009855941      0.0000000000

    Force Error: 0.524175E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.010985648   80279.1  108374.2  -0.000023122
   2   0.001000356   0.010985625   80277.3  108465.4  -0.000046022
   3   0.002000000   0.010985594   80378.2  108705.3  -0.000031140
     ===========================================================


  TIME: GANDRA  STEP:    29.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0010266767      0.0000000000
        2      0.0000003679      0.0010266539      0.0000302597
        3      0.0000000000      0.0010266230      0.0000000000

    Force Error: 0.528427E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011026677   80316.2  109147.7  -0.000022974
   2   0.001000368   0.011026654   80313.4  109240.4  -0.000048328
   3   0.002000000   0.011026623   80413.5  109483.3  -0.000031043
     ===========================================================


  TIME: GANDRA  STEP:    30.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0010680597      0.0000000000
        2      0.0000003802      0.0010680371      0.0000336369
        3      0.0000000000      0.0010680064      0.0000000000

    Force Error: 0.532648E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011068060   80354.4  109931.1  -0.000022787
   2   0.001000380   0.011068037   80350.5  110025.3  -0.000050715
   3   0.002000000   0.011068006   80449.8  110271.3  -0.000030909
     ===========================================================


  TIME: GANDRA  STEP:    31.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0011097951      0.0000000000
        2      0.0000003925      0.0011097728      0.0000371613
        3      0.0000000000      0.0011097423      0.0000000000

    Force Error: 0.536838E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011109795   80393.4  110724.5  -0.000022562
   2   0.001000392   0.011109773   80388.5  110820.3  -0.000053180
   3   0.002000000   0.011109742   80487.0  111069.4  -0.000030737
     ===========================================================


  TIME: GANDRA  STEP:    32.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0011518807      0.0000000000
        2      0.0000004047      0.0011518587      0.0000408318
        3      0.0000000000      0.0011518285      0.0000000000

    Force Error: 0.540991E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011151881   80433.4  111528.1  -0.000022300
   2   0.001000405   0.011151859   80427.4  111625.4  -0.000055724
   3   0.002000000   0.011151828   80525.2  111877.7  -0.000030528
     ===========================================================


  TIME: GANDRA  STEP:    33.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0011943143      0.0000000000
        2      0.0000004168      0.0011942926      0.0000446476
        3      0.0000000000      0.0011942626      0.0000000000

    Force Error: 0.545107E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011194314   80474.4  112341.8  -0.000022000
   2   0.001000417   0.011194293   80467.4  112440.7  -0.000058346
   3   0.002000000   0.011194263   80564.4  112696.2  -0.000030283
     ===========================================================


  TIME: GANDRA  STEP:    34.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0012370930      0.0000000000
        2      0.0000004290      0.0012370717      0.0000486077
        3      0.0000000000      0.0012370420      0.0000000000

    Force Error: 0.549183E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011237093   80516.3  113165.7  -0.000021664
   2   0.001000429   0.011237072   80508.2  113266.2  -0.000061046
   3   0.002000000   0.011237042   80604.5  113524.9  -0.000030001
     ===========================================================


  TIME: GANDRA  STEP:    35.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0012802141      0.0000000000
        2      0.0000004410      0.0012801933      0.0000527113
        3      0.0000000000      0.0012801639      0.0000000000

    Force Error: 0.553215E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011280214   80559.2  113999.9  -0.000021291
   2   0.001000441   0.011280193   80550.1  114102.0  -0.000063824
   3   0.002000000   0.011280164   80645.6  114363.9  -0.000029683
     ===========================================================


  TIME: GANDRA  STEP:    36.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0013236746      0.0000000000
        2      0.0000004531      0.0013236542      0.0000569573
        3      0.0000000000      0.0013236253      0.0000000000

    Force Error: 0.557200E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011323675   80603.1  114844.3  -0.000020882
   2   0.001000453   0.011323654   80593.0  114948.1  -0.000066679
   3   0.002000000   0.011323625   80687.8  115213.3  -0.000029329
     ===========================================================


  TIME: GANDRA  STEP:    37.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0013674712      0.0000000000
        2      0.0000004650      0.0013674512      0.0000613448
        3      0.0000000000      0.0013674227      0.0000000000

    Force Error: 0.561137E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011367471   80648.0  115699.1  -0.000020437
   2   0.001000465   0.011367451   80636.8  115804.5  -0.000069611
   3   0.002000000   0.011367423   80730.9  116073.1  -0.000028940
     ===========================================================


  TIME: GANDRA  STEP:    38.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0014116003      0.0000000000
        2      0.0000004770      0.0014115808      0.0000658730
        3      0.0000000000      0.0014115528      0.0000000000

    Force Error: 0.565022E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011411600   80693.9  116564.3  -0.000019956
   2   0.001000477   0.011411581   80681.7  116671.4  -0.000072619
   3   0.002000000   0.011411553   80775.0  116943.4  -0.000028517
     ===========================================================


  TIME: GANDRA  STEP:    39.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0014560582      0.0000000000
        2      0.0000004889      0.0014560393      0.0000705408
        3      0.0000000000      0.0014560117      0.0000000000

    Force Error: 0.568853E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011456058   80740.8  117439.9  -0.000019440
   2   0.001000489   0.011456039   80727.5  117548.7  -0.000075703
   3   0.002000000   0.011456012   80820.2  117824.1  -0.000028058
     ===========================================================


  TIME: GANDRA  STEP:    40.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0015008409      0.0000000000
        2      0.0000005007      0.0015008226      0.0000753474
        3      0.0000000000      0.0015007955      0.0000000000

    Force Error: 0.572626E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011500841   80788.7  118326.0  -0.000018889
   2   0.001000501   0.011500823   80774.4  118436.5  -0.000078863
   3   0.002000000   0.011500796   80866.3  118715.4  -0.000027565
     ===========================================================


  TIME: GANDRA  STEP:    41.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0015459441      0.0000000000
        2      0.0000005125      0.0015459264      0.0000802918
        3      0.0000000000      0.0015458999      0.0000000000

    Force Error: 0.576339E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011545944   80837.6  119222.5  -0.000018303
   2   0.001000512   0.011545926   80822.3  119334.7  -0.000082097
   3   0.002000000   0.011545900   80913.6  119617.1  -0.000027037
     ===========================================================


  TIME: GANDRA  STEP:    42.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0015913634      0.0000000000
        2      0.0000005243      0.0015913464      0.0000853730
        3      0.0000000000      0.0015913205      0.0000000000

    Force Error: 0.579988E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011591363   80887.6  120129.6  -0.000017682
   2   0.001000524   0.011591346   80871.3  120243.5  -0.000085406
   3   0.002000000   0.011591321   80961.8  120529.4  -0.000026476
     ===========================================================


  TIME: GANDRA  STEP:    43.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0016370941      0.0000000000
        2      0.0000005360      0.0016370777      0.0000905899
        3      0.0000000000      0.0016370525      0.0000000000

    Force Error: 0.583571E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011637094   80938.6  121047.1  -0.000017028
   2   0.001000536   0.011637078   80921.3  121162.8  -0.000088788
   3   0.002000000   0.011637052   81011.2  121452.3  -0.000025881
     ===========================================================


  TIME: GANDRA  STEP:    44.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0016831311      0.0000000000
        2      0.0000005476      0.0016831155      0.0000959417
        3      0.0000000000      0.0016830909      0.0000000000

    Force Error: 0.587084E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011683131   80990.7  121975.2  -0.000016339
   2   0.001000548   0.011683115   80972.4  122092.6  -0.000092245
   3   0.002000000   0.011683091   81061.5  122385.8  -0.000025253
     ===========================================================


  TIME: GANDRA  STEP:    45.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0017294692      0.0000000000
        2      0.0000005592      0.0017294544      0.0001014272
        3      0.0000000000      0.0017294305      0.0000000000

    Force Error: 0.590525E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011729469   81043.8  122913.8  -0.000015617
   2   0.001000559   0.011729454   81024.5  123033.0  -0.000095774
   3   0.002000000   0.011729430   81113.0  123329.9  -0.000024592
     ===========================================================


  TIME: GANDRA  STEP:    46.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0017761030      0.0000000000
        2      0.0000005708      0.0017760889      0.0001070454
        3      0.0000000000      0.0017760657      0.0000000000

    Force Error: 0.593891E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011776103   81098.0  123862.9  -0.000014861
   2   0.001000571   0.011776089   81077.7  123983.9  -0.000099375
   3   0.002000000   0.011776066   81165.6  124284.5  -0.000023898
     ===========================================================


  TIME: GANDRA  STEP:    47.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0018230265      0.0000000000
        2      0.0000005823      0.0018230133      0.0001127951
        3      0.0000000000      0.0018229909      0.0000000000

    Force Error: 0.597178E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011823027   81153.3  124822.6  -0.000014072
   2   0.001000582   0.011823013   81132.0  124945.4  -0.000103048
   3   0.002000000   0.011822991   81219.2  125249.8  -0.000023171
     ===========================================================


  TIME: GANDRA  STEP:    48.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0018702339      0.0000000000
        2      0.0000005938      0.0018702215      0.0001186753
        3      0.0000000000      0.0018701999      0.0000000000

    Force Error: 0.600384E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011870234   81209.7  125792.7  -0.000013250
   2   0.001000594   0.011870222   81187.4  125917.4  -0.000106792
   3   0.002000000   0.011870200   81273.9  126225.6  -0.000022412
     ===========================================================


  TIME: GANDRA  STEP:    49.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0019177188      0.0000000000
        2      0.0000006052      0.0019177073      0.0001246847
        3      0.0000000000      0.0019176865      0.0000000000

    Force Error: 0.603505E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011917719   81267.2  126773.4  -0.000012396
   2   0.001000605   0.011917707   81243.9  126899.9  -0.000110607
   3   0.002000000   0.011917686   81329.8  127212.0  -0.000021621
     ===========================================================


  TIME: GANDRA  STEP:    50.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0019654746      0.0000000000
        2      0.0000006166      0.0019654640      0.0001308221
        3      0.0000000000      0.0019654441      0.0000000000

    Force Error: 0.606539E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.011965475   81325.8  127764.6  -0.000011509
   2   0.001000617   0.011965464   81301.5  127892.9  -0.000114492
   3   0.002000000   0.011965444   81386.8  128208.9  -0.000020798
     ===========================================================


  TIME: GANDRA  STEP:    51.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0020134946      0.0000000000
        2      0.0000006279      0.0020134849      0.0001370862
        3      0.0000000000      0.0020134659      0.0000000000

    Force Error: 0.609481E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012013495   81385.5  128766.2  -0.000010591
   2   0.001000628   0.012013485   81360.2  128896.4  -0.000118446
   3   0.002000000   0.012013466   81444.8  129216.3  -0.000019944
     ===========================================================


  TIME: GANDRA  STEP:    52.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0020617715      0.0000000000
        2      0.0000006392      0.0020617628      0.0001434757
        3      0.0000000000      0.0020617447      0.0000000000

    Force Error: 0.612330E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012061771   81446.3  129778.2  -0.000009640
   2   0.001000639   0.012061763   81420.1  129910.3  -0.000122469
   3   0.002000000   0.012061745   81504.0  130234.2  -0.000019059
     ===========================================================


  TIME: GANDRA  STEP:    53.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0021102980      0.0000000000
        2      0.0000006505      0.0021102904      0.0001499892
        3      0.0000000000      0.0021102732      0.0000000000

    Force Error: 0.615081E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012110298   81508.2  130800.6  -0.000008658
   2   0.001000650   0.012110290   81481.0  130934.6  -0.000126559
   3   0.002000000   0.012110273   81564.4  131262.5  -0.000018142
     ===========================================================


  TIME: GANDRA  STEP:    54.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0021590665      0.0000000000
        2      0.0000006616      0.0021590599      0.0001566253
        3      0.0000000000      0.0021590437      0.0000000000

    Force Error: 0.617732E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012159067   81571.3  131833.3  -0.000007645
   2   0.001000662   0.012159060   81543.1  131969.3  -0.000130716
   3   0.002000000   0.012159044   81625.9  132301.2  -0.000017196
     ===========================================================


  TIME: GANDRA  STEP:    55.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0022080691      0.0000000000
        2      0.0000006728      0.0022080636      0.0001633824
        3      0.0000000000      0.0022080483      0.0000000000

    Force Error: 0.620280E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012208069   81635.5  132876.2  -0.000006601
   2   0.001000673   0.012208064   81606.4  133014.2  -0.000134940
   3   0.002000000   0.012208048   81688.5  133350.2  -0.000016219
     ===========================================================


  TIME: GANDRA  STEP:    56.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0022572975      0.0000000000
        2      0.0000006838      0.0022572930      0.0001702591
        3      0.0000000000      0.0022572789      0.0000000000

    Force Error: 0.622722E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012257297   81700.8  133929.4  -0.000005527
   2   0.001000684   0.012257293   81670.8  134069.3  -0.000139228
   3   0.002000000   0.012257279   81752.3  134409.4  -0.000015212
     ===========================================================


  TIME: GANDRA  STEP:    57.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0023067432      0.0000000000
        2      0.0000006949      0.0023067399      0.0001772536
        3      0.0000000000      0.0023067268      0.0000000000

    Force Error: 0.625054E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012306743   81767.3  134992.7  -0.000004422
   2   0.001000695   0.012306740   81736.3  135134.6  -0.000143582
   3   0.002000000   0.012306727   81817.3  135478.9  -0.000014176
     ===========================================================


  TIME: GANDRA  STEP:    58.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0023563975      0.0000000000
        2      0.0000007058      0.0023563954      0.0001843644
        3      0.0000000000      0.0023563834      0.0000000000

    Force Error: 0.627274E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012356398   81835.0  136066.1  -0.000003288
   2   0.001000706   0.012356395   81803.0  136209.9  -0.000147998
   3   0.002000000   0.012356383   81883.4  136558.4  -0.000013110
     ===========================================================


  TIME: GANDRA  STEP:    59.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0024062514      0.0000000000
        2      0.0000007168      0.0024062505      0.0001915895
        3      0.0000000000      0.0024062396      0.0000000000

    Force Error: 0.629378E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012406251   81903.8  137149.4  -0.000002125
   2   0.001000717   0.012406251   81870.8  137295.3  -0.000152477
   3   0.002000000   0.012406240   81950.7  137648.0  -0.000012016
     ===========================================================


  TIME: GANDRA  STEP:    60.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0024562957      0.0000000000
        2      0.0000007276      0.0024562960      0.0001989272
        3      0.0000000000      0.0024562862      0.0000000000

    Force Error: 0.631364E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012456296   81973.7  138242.6  -0.000000932
   2   0.001000728   0.012456296   81939.9  138390.5  -0.000157018
   3   0.002000000   0.012456286   82019.1  138747.5  -0.000010893
     ===========================================================


  TIME: GANDRA  STEP:    61.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025065206      0.0000000000
        2      0.0000007384      0.0025065222      0.0002063754
        3      0.0000000000      0.0025065136      0.0000000000

    Force Error: 0.633229E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012506521   82044.9  139345.6   0.000000289
   2   0.001000738   0.012506522   82010.1  139495.5  -0.000161619
   3   0.002000000   0.012506514   82088.8  139856.8  -0.000009742
     ===========================================================


  TIME: GANDRA  STEP:    62.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0025569166      0.0000000000
        2      0.0000007492      0.0025569194      0.0002139323
        3      0.0000000000      0.0025569120      0.0000000000

    Force Error: 0.634970E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012556917   82117.2  140458.2   0.000001539
   2   0.001000749   0.012556919   82081.4  140610.1  -0.000166279
   3   0.002000000   0.012556912   82159.6  140975.9  -0.000008564
     ===========================================================


  TIME: GANDRA  STEP:    63.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026074733      0.0000000000
        2      0.0000007599      0.0026074774      0.0002215957
        3      0.0000000000      0.0026074713      0.0000000000

    Force Error: 0.636584E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012607473   82190.6  141580.4   0.000002816
   2   0.001000760   0.012607477   82154.0  141734.4  -0.000170998
   3   0.002000000   0.012607471   82231.6  142104.5  -0.000007358
     ===========================================================


  TIME: GANDRA  STEP:    64.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0026581806      0.0000000000
        2      0.0000007705      0.0026581861      0.0002293634
        3      0.0000000000      0.0026581812      0.0000000000

    Force Error: 0.638068E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012658181   82265.3  142711.9   0.000004121
   2   0.001000771   0.012658186   82227.7  142868.0  -0.000175773
   3   0.002000000   0.012658181   82304.8  143242.6  -0.000006125
     ===========================================================


  TIME: GANDRA  STEP:    65.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0027090278      0.0000000000
        2      0.0000007811      0.0027090347      0.0002372331
        3      0.0000000000      0.0027090311      0.0000000000

    Force Error: 0.639419E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012709028   82341.1  143852.8   0.000005453
   2   0.001000781   0.012709035   82302.6  144010.9  -0.000180604
   3   0.002000000   0.012709031   82379.1  144389.9  -0.000004866
     ===========================================================


  TIME: GANDRA  STEP:    66.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0027600042      0.0000000000
        2      0.0000007916      0.0027600124      0.0002452025
        3      0.0000000000      0.0027600101      0.0000000000

    Force Error: 0.640636E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012760004   82418.1  145002.8   0.000006811
   2   0.001000792   0.012760012   82378.7  145163.0  -0.000185489
   3   0.002000000   0.012760010   82454.7  145546.5  -0.000003581
     ===========================================================


  TIME: GANDRA  STEP:    67.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0028110985      0.0000000000
        2      0.0000008021      0.0028111081      0.0002532691
        3      0.0000000000      0.0028111072      0.0000000000

    Force Error: 0.641715E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012811099   82496.3  146161.7   0.000008195
   2   0.001000802   0.012811108   82455.9  146324.0  -0.000190427
   3   0.002000000   0.012811107   82531.5  146712.1  -0.000002270
     ===========================================================


  TIME: GANDRA  STEP:    68.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0028622996      0.0000000000
        2      0.0000008124      0.0028623107      0.0002614304
        3      0.0000000000      0.0028623111      0.0000000000

    Force Error: 0.642653E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012862300   82575.6  147329.5   0.000009605
   2   0.001000812   0.012862311   82534.4  147493.9  -0.000195416
   3   0.002000000   0.012862311   82609.4  147886.5  -0.000000935
     ===========================================================


  TIME: GANDRA  STEP:    69.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0029135959      0.0000000000
        2      0.0000008228      0.0029136084      0.0002696836
        3      0.0000000000      0.0029136102      0.0000000000

    Force Error: 0.643450E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012913596   82656.2  148505.9   0.000011039
   2   0.001000823   0.012913608   82614.0  148672.4  -0.000200456
   3   0.002000000   0.012913610   82688.6  149069.6   0.000000425
     ===========================================================


  TIME: GANDRA  STEP:    70.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0029649756      0.0000000000
        2      0.0000008330      0.0029649896      0.0002780261
        3      0.0000000000      0.0029649928      0.0000000000

    Force Error: 0.644102E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.012964976   82737.9  149690.7   0.000012498
   2   0.001000833   0.012964990   82694.8  149859.3  -0.000205544
   3   0.002000000   0.012964993   82768.9  150261.2   0.000001809
     ===========================================================


  TIME: GANDRA  STEP:    71.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0030164267      0.0000000000
        2      0.0000008432      0.0030164422      0.0002864550
        3      0.0000000000      0.0030164469      0.0000000000

    Force Error: 0.644606E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013016427   82820.8  150883.8   0.000013981
   2   0.001000843   0.013016442   82776.9  151054.5  -0.000210678
   3   0.002000000   0.013016447   82850.4  151461.1   0.000003216
     ===========================================================


  TIME: GANDRA  STEP:    72.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0030679371      0.0000000000
        2      0.0000008533      0.0030679541      0.0002949674
        3      0.0000000000      0.0030679602      0.0000000000

    Force Error: 0.644962E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013067937   82904.9  152085.0   0.000015487
   2   0.001000853   0.013067954   82860.0  152257.8  -0.000215858
   3   0.002000000   0.013067960   82933.1  152669.1   0.000004645
     ===========================================================


  TIME: GANDRA  STEP:    73.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0031194944      0.0000000000
        2      0.0000008634      0.0031195130      0.0003035601
        3      0.0000000000      0.0031195206      0.0000000000

    Force Error: 0.645167E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013119494   82990.1  153294.0   0.000017016
   2   0.001000863   0.013119513   82944.4  153469.0  -0.000221081
   3   0.002000000   0.013119521   83017.0  153884.9   0.000006097
     ===========================================================


  TIME: GANDRA  STEP:    74.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0031710861      0.0000000000
        2      0.0000008733      0.0031711062      0.0003122302
        3      0.0000000000      0.0031711153      0.0000000000

    Force Error: 0.645219E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013171086   83076.5  154510.7   0.000018567
   2   0.001000873   0.013171106   83030.0  154687.7  -0.000226346
   3   0.002000000   0.013171115   83102.1  155108.5   0.000007571
     ===========================================================


  TIME: GANDRA  STEP:    75.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032226993      0.0000000000
        2      0.0000008832      0.0032227210      0.0003209742
        3      0.0000000000      0.0032227316      0.0000000000

    Force Error: 0.645116E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013222699   83164.1  155734.7   0.000020139
   2   0.001000883   0.013222721   83116.7  155913.9  -0.000231651
   3   0.002000000   0.013222732   83188.4  156339.4   0.000009065
     ===========================================================


  TIME: GANDRA  STEP:    76.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0032743212      0.0000000000
        2      0.0000008931      0.0032743446      0.0003297890
        3      0.0000000000      0.0032743567      0.0000000000

    Force Error: 0.644858E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013274321   83252.9  156965.9   0.000021732
   2   0.001000893   0.013274345   83204.6  157147.2  -0.000236994
   3   0.002000000   0.013274357   83275.9  157577.5   0.000010580
     ===========================================================


  TIME: GANDRA  STEP:    77.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0033259388      0.0000000000
        2      0.0000009028      0.0033259638      0.0003386710
        3      0.0000000000      0.0033259774      0.0000000000

    Force Error: 0.644442E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013325939   83342.8  158204.0   0.000023344
   2   0.001000903   0.013325964   83293.6  158387.5  -0.000242372
   3   0.002000000   0.013325977   83364.5  158822.6   0.000012114
     ===========================================================


  TIME: GANDRA  STEP:    78.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0033775388      0.0000000000
        2      0.0000009125      0.0033775654      0.0003476167
        3      0.0000000000      0.0033775806      0.0000000000

    Force Error: 0.643867E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013377539   83433.8  159448.7   0.000024976
   2   0.001000912   0.013377565   83383.9  159634.3  -0.000247785
   3   0.002000000   0.013377581   83454.3  160074.3   0.000013667
     ===========================================================


  TIME: GANDRA  STEP:    79.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0034291079      0.0000000000
        2      0.0000009221      0.0034291362      0.0003566226
        3      0.0000000000      0.0034291530      0.0000000000

    Force Error: 0.643132E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013429108   83526.1  160699.9   0.000026627
   2   0.001000922   0.013429136   83475.2  160887.6  -0.000253229
   3   0.002000000   0.013429153   83545.3  161332.5   0.000015238
     ===========================================================


  TIME: GANDRA  STEP:    80.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0034806327      0.0000000000
        2      0.0000009316      0.0034806627      0.0003656848
        3      0.0000000000      0.0034806811      0.0000000000

    Force Error: 0.642237E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013480633   83619.4  161957.1   0.000028296
   2   0.001000932   0.013480663   83567.8  162146.9  -0.000258704
   3   0.002000000   0.013480681   83637.5  162596.7   0.000016826
     ===========================================================


  TIME: GANDRA  STEP:    81.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0035320997      0.0000000000
        2      0.0000009410      0.0035321314      0.0003747996
        3      0.0000000000      0.0035321514      0.0000000000

    Force Error: 0.641179E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013532100   83713.9  163220.1   0.000029981
   2   0.001000941   0.013532131   83661.4  163412.1  -0.000264206
   3   0.002000000   0.013532151   83730.8  163866.8   0.000018431
     ===========================================================


  TIME: GANDRA  STEP:    82.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0035834951      0.0000000000
        2      0.0000009503      0.0035835285      0.0003839631
        3      0.0000000000      0.0035835502      0.0000000000

    Force Error: 0.639959E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013583495   83809.6  164488.7   0.000031683
   2   0.001000950   0.013583529   83756.3  164682.8  -0.000269733
   3   0.002000000   0.013583550   83825.2  165142.5   0.000020051
     ===========================================================


  TIME: GANDRA  STEP:    83.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0036348054      0.0000000000
        2      0.0000009596      0.0036348406      0.0003931714
        3      0.0000000000      0.0036348639      0.0000000000

    Force Error: 0.638577E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013634805   83906.3  165762.5   0.000033400
   2   0.001000960   0.013634841   83852.2  165958.7  -0.000275284
   3   0.002000000   0.013634864   83920.8  166423.3   0.000021687
     ===========================================================


  TIME: GANDRA  STEP:    84.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0036860168      0.0000000000
        2      0.0000009687      0.0036860537      0.0004024203
        3      0.0000000000      0.0036860787      0.0000000000

    Force Error: 0.637031E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013686017   84004.2  167041.1   0.000035131
   2   0.001000969   0.013686054   83949.3  167239.5  -0.000280856
   3   0.002000000   0.013686079   84017.5  167709.1   0.000023337
     ===========================================================


  TIME: GANDRA  STEP:    85.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0037371155      0.0000000000
        2      0.0000009778      0.0037371541      0.0004117059
        3      0.0000000000      0.0037371808      0.0000000000

    Force Error: 0.635322E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013737115   84103.1  168324.4   0.000036877
   2   0.001000978   0.013737154   84047.4  168524.9  -0.000286446
   3   0.002000000   0.013737181   84115.3  168999.5   0.000024999
     ===========================================================


  TIME: GANDRA  STEP:    86.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0037880876      0.0000000000
        2      0.0000009868      0.0037881280      0.0004210238
        3      0.0000000000      0.0037881564      0.0000000000

    Force Error: 0.633450E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013788088   84203.2  169611.9   0.000038635
   2   0.001000987   0.013788128   84146.7  169814.5  -0.000292053
   3   0.002000000   0.013788156   84214.3  170294.1   0.000026675
     ===========================================================


  TIME: GANDRA  STEP:    87.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0038389194      0.0000000000
        2      0.0000009957      0.0038389616      0.0004303700
        3      0.0000000000      0.0038389917      0.0000000000

    Force Error: 0.631415E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013838919   84304.4  170903.3   0.000040405
   2   0.001000996   0.013838962   84247.1  171108.0  -0.000297674
   3   0.002000000   0.013838992   84314.3  171592.6   0.000028362
     ===========================================================


  TIME: GANDRA  STEP:    88.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0038895970      0.0000000000
        2      0.0000010045      0.0038896410      0.0004397400
        3      0.0000000000      0.0038896728      0.0000000000

    Force Error: 0.629218E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013889597   84406.6  172198.3   0.000042186
   2   0.001001005   0.013889641   84348.5  172405.1  -0.000303305
   3   0.002000000   0.013889673   84415.5  172894.8   0.000030059
     ===========================================================


  TIME: GANDRA  STEP:    89.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0039401068      0.0000000000
        2      0.0000010132      0.0039401525      0.0004491295
        3      0.0000000000      0.0039401860      0.0000000000

    Force Error: 0.626859E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013940107   84509.9  173496.5   0.000043977
   2   0.001001013   0.013940153   84451.1  173705.4  -0.000308946
   3   0.002000000   0.013940186   84517.7  174200.1   0.000031766
     ===========================================================


  TIME: GANDRA  STEP:    90.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0039904348      0.0000000000
        2      0.0000010218      0.0039904824      0.0004585342
        3      0.0000000000      0.0039905176      0.0000000000

    Force Error: 0.624340E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.013990435   84614.2  174797.6   0.000045777
   2   0.001001022   0.013990482   84554.6  175008.5  -0.000314594
   3   0.002000000   0.013990518   84621.0  175508.3   0.000033481
     ===========================================================


  TIME: GANDRA  STEP:    91.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0040405675      0.0000000000
        2      0.0000010303      0.0040406169      0.0004679496
        3      0.0000000000      0.0040406539      0.0000000000

    Force Error: 0.621660E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014040568   84719.6  176101.1   0.000047586
   2   0.001001030   0.014040617   84659.2  176314.1  -0.000320245
   3   0.002000000   0.014040654   84725.4  176819.0   0.000035205
     ===========================================================


  TIME: GANDRA  STEP:    92.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0040904913      0.0000000000
        2      0.0000010387      0.0040905425      0.0004773712
        3      0.0000000000      0.0040905812      0.0000000000

    Force Error: 0.618822E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014090491   84825.9  177406.8   0.000049401
   2   0.001001039   0.014090543   84764.9  177621.8  -0.000325898
   3   0.002000000   0.014090581   84830.8  178131.8   0.000036935
     ===========================================================


  TIME: GANDRA  STEP:    93.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0041401927      0.0000000000
        2      0.0000010471      0.0041402458      0.0004867945
        3      0.0000000000      0.0041402862      0.0000000000

    Force Error: 0.615827E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014140193   84933.3  178714.2   0.000051223
   2   0.001001047   0.014140246   84871.6  178931.2  -0.000331550
   3   0.002000000   0.014140286   84937.2  179446.3   0.000038671
     ===========================================================


  TIME: GANDRA  STEP:    94.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0041896584      0.0000000000
        2      0.0000010553      0.0041897133      0.0004962152
        3      0.0000000000      0.0041897554      0.0000000000

    Force Error: 0.612677E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014189658   85041.7  180022.9   0.000053050
   2   0.001001055   0.014189713   84979.2  180242.0  -0.000337198
   3   0.002000000   0.014189755   85044.7  180762.2   0.000040412
     ===========================================================


  TIME: GANDRA  STEP:    95.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0042388750      0.0000000000
        2      0.0000010634      0.0042389318      0.0005056285
        3      0.0000000000      0.0042389757      0.0000000000

    Force Error: 0.609373E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014238875   85151.1  181332.6   0.000054882
   2   0.001001063   0.014238932   85087.9  181553.7  -0.000342840
   3   0.002000000   0.014238976   85153.1  182079.0   0.000042156
     ===========================================================


  TIME: GANDRA  STEP:    96.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0042878296      0.0000000000
        2      0.0000010714      0.0042878882      0.0005150302
        3      0.0000000000      0.0042879339      0.0000000000

    Force Error: 0.605919E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014287830   85261.4  182642.9   0.000056716
   2   0.001001071   0.014287888   85197.5  182865.9  -0.000348473
   3   0.002000000   0.014287934   85262.5  183396.4   0.000043903
     ===========================================================


  TIME: GANDRA  STEP:    97.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0043365093      0.0000000000
        2      0.0000010793      0.0043365697      0.0005244155
        3      0.0000000000      0.0043366171      0.0000000000

    Force Error: 0.602315E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014336509   85372.7  183953.4   0.000058553
   2   0.001001079   0.014336570   85308.1  184178.3  -0.000354095
   3   0.002000000   0.014336617   85373.0  184713.9   0.000045652
     ===========================================================


  TIME: GANDRA  STEP:    98.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0043849013      0.0000000000
        2      0.0000010870      0.0043849635      0.0005337801
        3      0.0000000000      0.0043850127      0.0000000000

    Force Error: 0.598564E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014384901   85484.9  185263.6   0.000060391
   2   0.001001087   0.014384964   85419.6  185490.5  -0.000359703
   3   0.002000000   0.014385013   85484.3  186031.2   0.000047402
     ===========================================================


  TIME: GANDRA  STEP:    99.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0044329931      0.0000000000
        2      0.0000010947      0.0044330572      0.0005431196
        3      0.0000000000      0.0044331081      0.0000000000

    Force Error: 0.594670E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014432993   85598.0  186573.2   0.000062229
   2   0.001001095   0.014433057   85532.1  186802.0  -0.000365295
   3   0.002000000   0.014433108   85596.6  187347.9   0.000049152
     ===========================================================


  TIME: GANDRA  STEP:   100.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0044807725      0.0000000000
        2      0.0000011023      0.0044808384      0.0005524294
        3      0.0000000000      0.0044808911      0.0000000000

    Force Error: 0.590634E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014480773   85712.0  187881.7   0.000064067
   2   0.001001102   0.014480838   85645.4  188112.5  -0.000370868
   3   0.002000000   0.014480891   85709.8  188663.5   0.000050900
     ===========================================================


  TIME: GANDRA  STEP:   101.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0045282274      0.0000000000
        2      0.0000011098      0.0045282952      0.0005617052
        3      0.0000000000      0.0045283496      0.0000000000

    Force Error: 0.586461E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014528227   85826.9  189188.8   0.000065902
   2   0.001001110   0.014528295   85759.7  189421.4  -0.000376420
   3   0.002000000   0.014528350   85823.9  189977.6   0.000052646
     ===========================================================


  TIME: GANDRA  STEP:   102.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0045753461      0.0000000000
        2      0.0000011171      0.0045754157      0.0005709427
        3      0.0000000000      0.0045754718      0.0000000000

    Force Error: 0.582152E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014575346   85942.6  190494.0   0.000067735
   2   0.001001117   0.014575416   85874.8  190728.5  -0.000381948
   3   0.002000000   0.014575472   85938.9  191289.8   0.000054388
     ===========================================================


  TIME: GANDRA  STEP:   103.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0046221171      0.0000000000
        2      0.0000011244      0.0046221885      0.0005801376
        3      0.0000000000      0.0046222464      0.0000000000

    Force Error: 0.577713E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014622117   86059.2  191796.9   0.000069563
   2   0.001001124   0.014622189   85990.7  192033.3  -0.000387450
   3   0.002000000   0.014622246   86054.8  192599.8   0.000056127
     ===========================================================


  TIME: GANDRA  STEP:   104.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0046685292      0.0000000000
        2      0.0000011315      0.0046686024      0.0005892856
        3      0.0000000000      0.0046686620      0.0000000000

    Force Error: 0.573145E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014668529   86176.6  193097.2   0.000071387
   2   0.001001131   0.014668602   86107.5  193335.4  -0.000392924
   3   0.002000000   0.014668662   86171.5  193907.0   0.000057860
     ===========================================================


  TIME: GANDRA  STEP:   105.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0047145714      0.0000000000
        2      0.0000011385      0.0047146464      0.0005983827
        3      0.0000000000      0.0047147077      0.0000000000

    Force Error: 0.568454E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014714571   86294.8  194394.4   0.000073205
   2   0.001001138   0.014714646   86225.0  194634.4  -0.000398366
   3   0.002000000   0.014714708   86289.0  195211.2   0.000059586
     ===========================================================


  TIME: GANDRA  STEP:   106.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0047602332      0.0000000000
        2      0.0000011454      0.0047603100      0.0006074249
        3      0.0000000000      0.0047603730      0.0000000000

    Force Error: 0.563642E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014760233   86413.7  195688.0   0.000075017
   2   0.001001145   0.014760310   86343.4  195929.9  -0.000403776
   3   0.002000000   0.014760373   86407.3  196511.8   0.000061305
     ===========================================================


  TIME: GANDRA  STEP:   107.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0048055043      0.0000000000
        2      0.0000011522      0.0048055830      0.0006164080
        3      0.0000000000      0.0048056477      0.0000000000

    Force Error: 0.558714E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014805504   86533.4  196977.8   0.000076820
   2   0.001001152   0.014805583   86462.5  197221.4  -0.000409150
   3   0.002000000   0.014805648   86526.4  197808.5   0.000063016
     ===========================================================


  TIME: GANDRA  STEP:   108.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0048503749      0.0000000000
        2      0.0000011589      0.0048504553      0.0006253283
        3      0.0000000000      0.0048505217      0.0000000000

    Force Error: 0.553673E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014850375   86653.8  198263.2   0.000078615
   2   0.001001159   0.014850455   86582.4  198508.6  -0.000414487
   3   0.002000000   0.014850522   86646.3  199100.8   0.000064718
     ===========================================================


  TIME: GANDRA  STEP:   109.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0048948354      0.0000000000
        2      0.0000011654      0.0048949176      0.0006341821
        3      0.0000000000      0.0048949856      0.0000000000

    Force Error: 0.548525E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014894835   86775.0  199544.0   0.000080400
   2   0.001001165   0.014894918   86702.9  199791.0  -0.000419784
   3   0.002000000   0.014894986   86766.9  200388.5   0.000066410
     ===========================================================


  TIME: GANDRA  STEP:   110.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0049388765      0.0000000000
        2      0.0000011719      0.0049389605      0.0006429656
        3      0.0000000000      0.0049390302      0.0000000000

    Force Error: 0.543273E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014938877   86896.8  200819.6   0.000082174
   2   0.001001172   0.014938960   86824.2  201068.3  -0.000425039
   3   0.002000000   0.014939030   86888.2  201670.9   0.000068090
     ===========================================================


  TIME: GANDRA  STEP:   111.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0049824896      0.0000000000
        2      0.0000011782      0.0049825753      0.0006516754
        3      0.0000000000      0.0049826467      0.0000000000

    Force Error: 0.537922E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.014982490   87019.3  202089.7   0.000083937
   2   0.001001178   0.014982575   86946.2  202340.1  -0.000430251
   3   0.002000000   0.014982647   87010.2  202947.9   0.000069759
     ===========================================================


  TIME: GANDRA  STEP:   112.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0050256661      0.0000000000
        2      0.0000011844      0.0050257535      0.0006603081
        3      0.0000000000      0.0050258265      0.0000000000

    Force Error: 0.532476E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015025666   87142.4  203353.9   0.000085688
   2   0.001001184   0.015025753   87068.8  203606.0  -0.000435417
   3   0.002000000   0.015025827   87132.9  204218.9   0.000071415
     ===========================================================


  TIME: GANDRA  STEP:   113.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0050683980      0.0000000000
        2      0.0000011905      0.0050684871      0.0006688603
        3      0.0000000000      0.0050685618      0.0000000000

    Force Error: 0.526940E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015068398   87266.2  204611.8   0.000087425
   2   0.001001190   0.015068487   87192.0  204865.5  -0.000440535
   3   0.002000000   0.015068562   87256.2  205483.6   0.000073057
     ===========================================================


  TIME: GANDRA  STEP:   114.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0051106777      0.0000000000
        2      0.0000011965      0.0051107686      0.0006773289
        3      0.0000000000      0.0051108449      0.0000000000

    Force Error: 0.521319E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015110678   87390.5  205863.1   0.000089149
   2   0.001001196   0.015110769   87315.9  206118.4  -0.000445605
   3   0.002000000   0.015110845   87380.2  206741.6   0.000074684
     ===========================================================


  TIME: GANDRA  STEP:   115.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0051524980      0.0000000000
        2      0.0000012023      0.0051525905      0.0006857110
        3      0.0000000000      0.0051526684      0.0000000000

    Force Error: 0.515618E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015152498   87515.5  207107.3   0.000090858
   2   0.001001202   0.015152591   87440.3  207364.2  -0.000450623
   3   0.002000000   0.015152668   87504.7  207992.6   0.000076296
     ===========================================================


  TIME: GANDRA  STEP:   116.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0051938520      0.0000000000
        2      0.0000012081      0.0051939462      0.0006940037
        3      0.0000000000      0.0051940257      0.0000000000

    Force Error: 0.509840E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015193852   87640.9  208344.1   0.000092551
   2   0.001001208   0.015193946   87565.3  208602.5  -0.000455589
   3   0.002000000   0.015194026   87629.9  209236.1   0.000077893
     ===========================================================


  TIME: GANDRA  STEP:   117.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0052347334      0.0000000000
        2      0.0000012137      0.0052348292      0.0007022042
        3      0.0000000000      0.0052349103      0.0000000000

    Force Error: 0.503992E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015234733   87766.9  209573.2   0.000094228
   2   0.001001214   0.015234829   87690.8  209833.2  -0.000460502
   3   0.002000000   0.015234910   87755.6  210471.9   0.000079472
     ===========================================================


  TIME: GANDRA  STEP:   118.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0052751361      0.0000000000
        2      0.0000012192      0.0052752336      0.0007103101
        3      0.0000000000      0.0052753162      0.0000000000

    Force Error: 0.498078E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015275136   87893.4  210794.2   0.000095888
   2   0.001001219   0.015275234   87816.9  211055.6  -0.000465358
   3   0.002000000   0.015275316   87881.8  211699.5   0.000081034
     ===========================================================


  TIME: GANDRA  STEP:   119.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0053150545      0.0000000000
        2      0.0000012246      0.0053151537      0.0007183188
        3      0.0000000000      0.0053152378      0.0000000000

    Force Error: 0.492102E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015315055   88020.4  212006.7   0.000097530
   2   0.001001225   0.015315154   87943.4  212269.6  -0.000470158
   3   0.002000000   0.015315238   88008.6  212918.7   0.000082578
     ===========================================================


  TIME: GANDRA  STEP:   120.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0053544836      0.0000000000
        2      0.0000012299      0.0053545844      0.0007262283
        3      0.0000000000      0.0053546700      0.0000000000

    Force Error: 0.486070E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015354484   88147.9  213210.5   0.000099155
   2   0.001001230   0.015354584   88070.4  213474.9  -0.000474900
   3   0.002000000   0.015354670   88135.8  214129.1   0.000084102
     ===========================================================


  TIME: GANDRA  STEP:   121.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0053934186      0.0000000000
        2      0.0000012351      0.0053935210      0.0007340363
        3      0.0000000000      0.0053936081      0.0000000000

    Force Error: 0.479986E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015393419   88275.8  214405.1   0.000100760
   2   0.001001235   0.015393521   88197.9  214671.0  -0.000479583
   3   0.002000000   0.015393608   88263.5  215330.3   0.000085608
     ===========================================================


  TIME: GANDRA  STEP:   122.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0054318552      0.0000000000
        2      0.0000012402      0.0054319591      0.0007417409
        3      0.0000000000      0.0054320476      0.0000000000

    Force Error: 0.473856E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015431855   88404.1  215590.4   0.000102346
   2   0.001001240   0.015431959   88325.8  215857.6  -0.000484205
   3   0.002000000   0.015432048   88391.7  216522.1   0.000087093
     ===========================================================


  TIME: GANDRA  STEP:   123.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0054697894      0.0000000000
        2      0.0000012451      0.0054698948      0.0007493405
        3      0.0000000000      0.0054699848      0.0000000000

    Force Error: 0.467684E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015469789   88532.8  216765.9   0.000103912
   2   0.001001245   0.015469895   88454.1  217034.6  -0.000488766
   3   0.002000000   0.015469985   88520.2  217704.2   0.000088558
     ===========================================================


  TIME: GANDRA  STEP:   124.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0055072178      0.0000000000
        2      0.0000012500      0.0055073247      0.0007568332
        3      0.0000000000      0.0055074162      0.0000000000

    Force Error: 0.461474E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015507218   88661.8  217931.5   0.000105457
   2   0.001001250   0.015507325   88582.7  218201.5  -0.000493265
   3   0.002000000   0.015507416   88649.2  218876.3   0.000090002
     ===========================================================


  TIME: GANDRA  STEP:   125.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0055441372      0.0000000000
        2      0.0000012547      0.0055442457      0.0007642178
        3      0.0000000000      0.0055443386      0.0000000000

    Force Error: 0.455232E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015544137   88791.2  219086.8   0.000106982
   2   0.001001255   0.015544246   88711.7  219358.1  -0.000497701
   3   0.002000000   0.015544339   88778.6  220038.1   0.000091425
     ===========================================================


  TIME: GANDRA  STEP:   126.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0055805451      0.0000000000
        2      0.0000012593      0.0055806551      0.0007714929
        3      0.0000000000      0.0055807493      0.0000000000

    Force Error: 0.448963E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015580545   88920.9  220231.5   0.000108485
   2   0.001001259   0.015580655   88841.1  220504.1  -0.000502073
   3   0.002000000   0.015580749   88908.3  221189.3   0.000092825
     ===========================================================


  TIME: GANDRA  STEP:   127.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0056164392      0.0000000000
        2      0.0000012639      0.0056165506      0.0007786573
        3      0.0000000000      0.0056166462      0.0000000000

    Force Error: 0.442670E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015616439   89051.0  221365.4   0.000109966
   2   0.001001264   0.015616551   88970.8  221639.3  -0.000506381
   3   0.002000000   0.015616646   89038.3  222329.6   0.000094204
     ===========================================================


  TIME: GANDRA  STEP:   128.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0056518175      0.0000000000
        2      0.0000012683      0.0056519303      0.0007857101
        3      0.0000000000      0.0056520272      0.0000000000

    Force Error: 0.436358E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015651817   89181.3  222488.3   0.000111425
   2   0.001001268   0.015651930   89100.8  222763.5  -0.000510624
   3   0.002000000   0.015652027   89168.7  223458.9   0.000095559
     ===========================================================


  TIME: GANDRA  STEP:   129.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0056866785      0.0000000000
        2      0.0000012726      0.0056867928      0.0007926504
        3      0.0000000000      0.0056868910      0.0000000000

    Force Error: 0.430033E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015686679   89311.9  223599.9   0.000112862
   2   0.001001273   0.015686793   89231.0  223876.3  -0.000514802
   3   0.002000000   0.015686891   89299.4  224576.9   0.000096892
     ===========================================================


  TIME: GANDRA  STEP:   130.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0057210212      0.0000000000
        2      0.0000012768      0.0057211369      0.0007994775
        3      0.0000000000      0.0057212364      0.0000000000

    Force Error: 0.423697E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015721021   89442.7  224700.0   0.000114276
   2   0.001001277   0.015721137   89361.5  224977.6  -0.000518914
   3   0.002000000   0.015721236   89430.3  225683.4   0.000098201
     ===========================================================


  TIME: GANDRA  STEP:   131.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0057548448      0.0000000000
        2      0.0000012809      0.0057549618      0.0008061910
        3      0.0000000000      0.0057550626      0.0000000000

    Force Error: 0.417356E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015754845   89573.7  225788.4   0.000115668
   2   0.001001281   0.015754962   89492.2  226067.2  -0.000522960
   3   0.002000000   0.015755063   89561.5  226778.1   0.000099487
     ===========================================================


  TIME: GANDRA  STEP:   132.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0057881489      0.0000000000
        2      0.0000012849      0.0057882673      0.0008127903
        3      0.0000000000      0.0057883692      0.0000000000

    Force Error: 0.411013E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015788149   89705.0  226864.8   0.000117036
   2   0.001001285   0.015788267   89623.2  227144.8  -0.000526940
   3   0.002000000   0.015788369   89692.9  227860.9   0.000100749
     ===========================================================


  TIME: GANDRA  STEP:   133.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0058209334      0.0000000000
        2      0.0000012887      0.0058210531      0.0008192754
        3      0.0000000000      0.0058211563      0.0000000000

    Force Error: 0.404673E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015820933   89836.4  227929.2   0.000118380
   2   0.001001289   0.015821053   89754.3  228210.3  -0.000530853
   3   0.002000000   0.015821156   89824.6  228931.6   0.000101987
     ===========================================================


  TIME: GANDRA  STEP:   134.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0058531988      0.0000000000
        2      0.0000012925      0.0058533198      0.0008256459
        3      0.0000000000      0.0058534242      0.0000000000

    Force Error: 0.398339E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015853199   89968.0  228981.3   0.000119701
   2   0.001001293   0.015853320   89885.6  229263.5  -0.000534700
   3   0.002000000   0.015853424   89956.4  229990.0   0.000103202
     ===========================================================


  TIME: GANDRA  STEP:   135.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0058849456      0.0000000000
        2      0.0000012962      0.0058850679      0.0008319021
        3      0.0000000000      0.0058851734      0.0000000000

    Force Error: 0.392016E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015884946   90099.8  230020.9   0.000120999
   2   0.001001296   0.015885068   90017.1  230304.3  -0.000538481
   3   0.002000000   0.015885173   90088.4  231035.9   0.000104392
     ===========================================================


  TIME: GANDRA  STEP:   136.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0059161748      0.0000000000
        2      0.0000012998      0.0059162983      0.0008380439
        3      0.0000000000      0.0059164050      0.0000000000

    Force Error: 0.385706E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015916175   90231.7  231048.0   0.000122273
   2   0.001001300   0.015916298   90148.8  231332.4  -0.000542195
   3   0.002000000   0.015916405   90220.6  232069.2   0.000105557
     ===========================================================


  TIME: GANDRA  STEP:   137.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0059468876      0.0000000000
        2      0.0000013033      0.0059470124      0.0008440716
        3      0.0000000000      0.0059471202      0.0000000000

    Force Error: 0.379415E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015946888   90363.7  232062.3   0.000123523
   2   0.001001303   0.015947012   90280.5  232347.9  -0.000545843
   3   0.002000000   0.015947120   90352.9  233089.8   0.000106699
     ===========================================================


  TIME: GANDRA  STEP:   138.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0059770858      0.0000000000
        2      0.0000013067      0.0059772118      0.0008499857
        3      0.0000000000      0.0059773207      0.0000000000

    Force Error: 0.373144E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.015977086   90495.8  233063.8   0.000124749
   2   0.001001307   0.015977212   90412.4  233350.4  -0.000549426
   3   0.002000000   0.015977321   90485.4  234097.5   0.000107816
     ===========================================================


  TIME: GANDRA  STEP:   139.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0060067711      0.0000000000
        2      0.0000013100      0.0060068983      0.0008557867
        3      0.0000000000      0.0060070082      0.0000000000

    Force Error: 0.366898E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016006771   90628.0  234052.3   0.000125952
   2   0.001001310   0.016006898   90544.3  234340.0  -0.000552942
   3   0.002000000   0.016007008   90618.0  235092.3   0.000108909
     ===========================================================


  TIME: GANDRA  STEP:   140.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0060359458      0.0000000000
        2      0.0000013133      0.0060360740      0.0008614751
        3      0.0000000000      0.0060361851      0.0000000000

    Force Error: 0.360680E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016035946   90760.2  235027.8   0.000127131
   2   0.001001313   0.016036074   90676.4  235316.5  -0.000556394
   3   0.002000000   0.016036185   90750.7  236073.9   0.000109978
     ===========================================================


  TIME: GANDRA  STEP:   141.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0060646121      0.0000000000
        2      0.0000013164      0.0060647416      0.0008670517
        3      0.0000000000      0.0060648536      0.0000000000

    Force Error: 0.354492E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016064612   90892.6  235990.1   0.000128286
   2   0.001001316   0.016064742   90808.5  236279.8  -0.000559780
   3   0.002000000   0.016064854   90883.4  237042.4   0.000111022
     ===========================================================


  TIME: GANDRA  STEP:   142.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0060927730      0.0000000000
        2      0.0000013194      0.0060929035      0.0008725172
        3      0.0000000000      0.0060930165      0.0000000000

    Force Error: 0.348338E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016092773   91024.9  236939.2   0.000129417
   2   0.001001319   0.016092904   90940.6  237229.8  -0.000563103
   3   0.002000000   0.016093017   91016.3  237997.7   0.000112042
     ===========================================================


  TIME: GANDRA  STEP:   143.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0061204312      0.0000000000
        2      0.0000013224      0.0061205628      0.0008778726
        3      0.0000000000      0.0061206768      0.0000000000

    Force Error: 0.342220E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016120431   91157.3  237875.0   0.000130525
   2   0.001001322   0.016120563   91072.8  238166.6  -0.000566361
   3   0.002000000   0.016120677   91149.2  238939.6   0.000113039
     ===========================================================


  TIME: GANDRA  STEP:   144.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0061475900      0.0000000000
        2      0.0000013253      0.0061477226      0.0008831189
        3      0.0000000000      0.0061478376      0.0000000000

    Force Error: 0.336142E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016147590   91289.7  238797.4   0.000131610
   2   0.001001325   0.016147723   91205.0  239090.0  -0.000569556
   3   0.002000000   0.016147838   91282.1  239868.2   0.000114011
     ===========================================================


  TIME: GANDRA  STEP:   145.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0061742527      0.0000000000
        2      0.0000013280      0.0061743864      0.0008882571
        3      0.0000000000      0.0061745023      0.0000000000

    Force Error: 0.330106E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016174253   91422.1  239706.5   0.000132672
   2   0.001001328   0.016174386   91337.2  239999.9  -0.000572689
   3   0.002000000   0.016174502   91415.1  240783.3   0.000114960
     ===========================================================


  TIME: GANDRA  STEP:   146.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0062004230      0.0000000000
        2      0.0000013307      0.0062005577      0.0008932884
        3      0.0000000000      0.0062006745      0.0000000000

    Force Error: 0.324114E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016200423   91554.5  240602.1   0.000133710
   2   0.001001331   0.016200558   91469.5  240896.4  -0.000575759
   3   0.002000000   0.016200674   91548.1  241685.0   0.000115886
     ===========================================================


  TIME: GANDRA  STEP:   147.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0062261046      0.0000000000
        2      0.0000013334      0.0062262404      0.0008982140
        3      0.0000000000      0.0062263580      0.0000000000

    Force Error: 0.318168E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016226105   91686.9  241484.2   0.000134726
   2   0.001001333   0.016226240   91601.7  241779.4  -0.000578768
   3   0.002000000   0.016226358   91681.1  242573.2   0.000116788
     ===========================================================


  TIME: GANDRA  STEP:   148.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0062513017      0.0000000000
        2      0.0000013359      0.0062514384      0.0009030353
        3      0.0000000000      0.0062515569      0.0000000000

    Force Error: 0.312271E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016251302   91819.2  242352.8   0.000135719
   2   0.001001336   0.016251438   91733.9  242648.9  -0.000581717
   3   0.002000000   0.016251557   91814.1  243447.9   0.000117667
     ===========================================================


  TIME: GANDRA  STEP:   149.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0062760184      0.0000000000
        2      0.0000013384      0.0062761560      0.0009077535
        3      0.0000000000      0.0062762754      0.0000000000

    Force Error: 0.306425E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016276018   91951.5  243208.0   0.000136690
   2   0.001001338   0.016276156   91866.1  243505.0  -0.000584606
   3   0.002000000   0.016276275   91947.1  244309.2   0.000118523
     ===========================================================


  TIME: GANDRA  STEP:   150.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0063002590      0.0000000000
        2      0.0000013408      0.0063003975      0.0009123700
        3      0.0000000000      0.0063005177      0.0000000000

    Force Error: 0.300632E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016300259   92083.8  244049.7   0.000137638
   2   0.001001341   0.016300398   91998.2  244347.5  -0.000587436
   3   0.002000000   0.016300518   92080.0  245156.9   0.000119357
     ===========================================================


  TIME: GANDRA  STEP:   151.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0063240280      0.0000000000
        2      0.0000013431      0.0063241675      0.0009168864
        3      0.0000000000      0.0063242885      0.0000000000

    Force Error: 0.294893E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016324028   92216.0  244877.9   0.000138565
   2   0.001001343   0.016324168   92130.3  245176.6  -0.000590208
   3   0.002000000   0.016324288   92213.0  245991.1   0.000120168
     ===========================================================


  TIME: GANDRA  STEP:   152.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0063473303      0.0000000000
        2      0.0000013453      0.0063474706      0.0009213042
        3      0.0000000000      0.0063475923      0.0000000000

    Force Error: 0.289211E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016347330   92348.1  245692.7   0.000139470
   2   0.001001345   0.016347471   92262.3  245992.1  -0.000592922
   3   0.002000000   0.016347592   92345.9  246811.9   0.000120958
     ===========================================================


  TIME: GANDRA  STEP:   153.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0063701704      0.0000000000
        2      0.0000013475      0.0063703116      0.0009256249
        3      0.0000000000      0.0063704341      0.0000000000

    Force Error: 0.283587E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016370170   92480.2  246494.1   0.000140354
   2   0.001001347   0.016370312   92394.2  246794.3  -0.000595581
   3   0.002000000   0.016370434   92478.7  247619.3   0.000121726
     ===========================================================


  TIME: GANDRA  STEP:   154.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0063925535      0.0000000000
        2      0.0000013496      0.0063926955      0.0009298501
        3      0.0000000000      0.0063928187      0.0000000000

    Force Error: 0.278022E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016392553   92612.2  247282.0   0.000141217
   2   0.001001350   0.016392696   92526.1  247583.1  -0.000598184
   3   0.002000000   0.016392819   92611.5  248413.3   0.000122472
     ===========================================================


  TIME: GANDRA  STEP:   155.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0064144844      0.0000000000
        2      0.0000013516      0.0064146273      0.0009339814
        3      0.0000000000      0.0064147512      0.0000000000

    Force Error: 0.272518E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016414484   92744.0  248056.7   0.000142060
   2   0.001001352   0.016414627   92657.9  248358.5  -0.000600732
   3   0.002000000   0.016414751   92744.3  249193.9   0.000123198
     ===========================================================


  TIME: GANDRA  STEP:   156.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0064359686      0.0000000000
        2      0.0000013536      0.0064361122      0.0009380205
        3      0.0000000000      0.0064362368      0.0000000000

    Force Error: 0.267076E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016435969   92875.8  248818.0   0.000142882
   2   0.001001354   0.016436112   92789.6  249120.6  -0.000603227
   3   0.002000000   0.016436237   92876.9  249961.3   0.000123903
     ===========================================================


  TIME: GANDRA  STEP:   157.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0064570111      0.0000000000
        2      0.0000013555      0.0064571555      0.0009419691
        3      0.0000000000      0.0064572808      0.0000000000

    Force Error: 0.261697E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016457011   93007.5  249566.2   0.000143684
   2   0.001001355   0.016457156   92921.2  249869.5  -0.000605669
   3   0.002000000   0.016457281   93009.5  250715.4   0.000124587
     ===========================================================


  TIME: GANDRA  STEP:   158.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0064776174      0.0000000000
        2      0.0000013573      0.0064777626      0.0009458289
        3      0.0000000000      0.0064778885      0.0000000000

    Force Error: 0.256382E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016477617   93139.1  250301.2   0.000144466
   2   0.001001357   0.016477763   93052.7  250605.3  -0.000608060
   3   0.002000000   0.016477888   93142.0  251456.3   0.000125252
     ===========================================================


  TIME: GANDRA  STEP:   159.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0064977929      0.0000000000
        2      0.0000013591      0.0064979388      0.0009496017
        3      0.0000000000      0.0064980654      0.0000000000

    Force Error: 0.251133E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016497793   93270.5  251023.1   0.000145229
   2   0.001001359   0.016497939   93184.1  251327.9  -0.000610400
   3   0.002000000   0.016498065   93274.4  252184.2   0.000125897
     ===========================================================


  TIME: GANDRA  STEP:   160.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0065175431      0.0000000000
        2      0.0000013608      0.0065176898      0.0009532891
        3      0.0000000000      0.0065178169      0.0000000000

    Force Error: 0.245950E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016517543   93401.8  251732.0   0.000145974
   2   0.001001361   0.016517690   93315.3  252037.5  -0.000612691
   3   0.002000000   0.016517817   93406.7  252899.1   0.000126523
     ===========================================================


  TIME: GANDRA  STEP:   161.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0065368737      0.0000000000
        2      0.0000013624      0.0065370211      0.0009568929
        3      0.0000000000      0.0065371488      0.0000000000

    Force Error: 0.240834E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016536874   93533.0  252428.0   0.000146699
   2   0.001001362   0.016537021   93446.5  252734.3  -0.000614933
   3   0.002000000   0.016537149   93538.9  253601.0   0.000127130
     ===========================================================


  TIME: GANDRA  STEP:   162.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0065557903      0.0000000000
        2      0.0000013640      0.0065559384      0.0009604148
        3      0.0000000000      0.0065560667      0.0000000000

    Force Error: 0.235785E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016555790   93664.1  253111.2   0.000147407
   2   0.001001364   0.016555938   93577.5  253418.2  -0.000617127
   3   0.002000000   0.016556067   93671.0  254290.1   0.000127718
     ===========================================================


  TIME: GANDRA  STEP:   163.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0065742987      0.0000000000
        2      0.0000013656      0.0065744474      0.0009638568
        3      0.0000000000      0.0065745763      0.0000000000

    Force Error: 0.230805E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016574299   93795.0  253781.7   0.000148096
   2   0.001001366   0.016574447   93708.3  254089.3  -0.000619275
   3   0.002000000   0.016574576   93803.0  254966.5   0.000128289
     ===========================================================


  TIME: GANDRA  STEP:   164.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0065924045      0.0000000000
        2      0.0000013670      0.0065925539      0.0009672204
        3      0.0000000000      0.0065926833      0.0000000000

    Force Error: 0.225894E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016592405   93925.7  254439.6   0.000148768
   2   0.001001367   0.016592554   93839.0  254747.8  -0.000621377
   3   0.002000000   0.016592683   93934.8  255630.3   0.000128842
     ===========================================================


  TIME: GANDRA  STEP:   165.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0066101136      0.0000000000
        2      0.0000013685      0.0066102637      0.0009705075
        3      0.0000000000      0.0066103936      0.0000000000

    Force Error: 0.221052E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016610114   94056.3  255084.9   0.000149424
   2   0.001001368   0.016610264   93969.6  255393.9  -0.000623435
   3   0.002000000   0.016610394   94066.5  256281.5   0.000129377
     ===========================================================


  TIME: GANDRA  STEP:   166.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0066274319      0.0000000000
        2      0.0000013698      0.0066275826      0.0009737199
        3      0.0000000000      0.0066277130      0.0000000000

    Force Error: 0.216279E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016627432   94186.7  255717.9   0.000150062
   2   0.001001370   0.016627583   94100.0  256027.5  -0.000625449
   3   0.002000000   0.016627713   94198.0  256920.3   0.000129896
     ===========================================================


  TIME: GANDRA  STEP:   167.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0066443651      0.0000000000
        2      0.0000013711      0.0066445164      0.0009768592
        3      0.0000000000      0.0066446473      0.0000000000

    Force Error: 0.211577E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016644365   94316.9  256338.5   0.000150684
   2   0.001001371   0.016644516   94230.2  256648.8  -0.000627420
   3   0.002000000   0.016644647   94329.5  257546.9   0.000130398
     ===========================================================


  TIME: GANDRA  STEP:   168.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0066609192      0.0000000000
        2      0.0000013724      0.0066610711      0.0009799273
        3      0.0000000000      0.0066612024      0.0000000000

    Force Error: 0.206944E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016660919   94447.0  256947.0   0.000151290
   2   0.001001372   0.016661071   94360.3  257257.9  -0.000629350
   3   0.002000000   0.016661202   94460.7  258161.2   0.000130884
     ===========================================================


  TIME: GANDRA  STEP:   169.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0066771001      0.0000000000
        2      0.0000013736      0.0066772525      0.0009829259
        3      0.0000000000      0.0066773843      0.0000000000

    Force Error: 0.202382E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016677100   94576.9  257543.5   0.000151880
   2   0.001001374   0.016677253   94490.2  257855.0  -0.000631240
   3   0.002000000   0.016677384   94591.8  258763.5   0.000131354
     ===========================================================


  TIME: GANDRA  STEP:   170.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0066929136      0.0000000000
        2      0.0000013748      0.0066930666      0.0009858567
        3      0.0000000000      0.0066931989      0.0000000000

    Force Error: 0.197891E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016692914   94706.6  258128.1   0.000152456
   2   0.001001375   0.016693067   94619.9  258440.2  -0.000633090
   3   0.002000000   0.016693199   94722.7  259353.9   0.000131809
     ===========================================================


  TIME: GANDRA  STEP:   171.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0067083658      0.0000000000
        2      0.0000013759      0.0067085193      0.0009887215
        3      0.0000000000      0.0067086520      0.0000000000

    Force Error: 0.193470E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016708366   94836.1  258700.8   0.000153016
   2   0.001001376   0.016708519   94749.4  259013.6  -0.000634901
   3   0.002000000   0.016708652   94853.5  259932.5   0.000132249
     ===========================================================


  TIME: GANDRA  STEP:   172.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0067234624      0.0000000000
        2      0.0000013770      0.0067236165      0.0009915218
        3      0.0000000000      0.0067237496      0.0000000000

    Force Error: 0.189120E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016723462   94965.3  259262.0   0.000153562
   2   0.001001377   0.016723617   94878.7  259575.3  -0.000636674
   3   0.002000000   0.016723750   94984.0  260499.5   0.000132675
     ===========================================================


  TIME: GANDRA  STEP:   173.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0067382095      0.0000000000
        2      0.0000013780      0.0067383641      0.0009942594
        3      0.0000000000      0.0067384976      0.0000000000

    Force Error: 0.184840E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016738210   95094.4  259811.6   0.000154094
   2   0.001001378   0.016738364   95007.8  260125.5  -0.000638411
   3   0.002000000   0.016738498   95114.4  261054.9   0.000133086
     ===========================================================


  TIME: GANDRA  STEP:   174.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0067526129      0.0000000000
        2      0.0000013790      0.0067527680      0.0009969360
        3      0.0000000000      0.0067529019      0.0000000000

    Force Error: 0.180631E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016752613   95223.2  260349.8   0.000154612
   2   0.001001379   0.016752768   95136.6  260664.4  -0.000640113
   3   0.002000000   0.016752902   95244.6  261598.9   0.000133484
     ===========================================================


  TIME: GANDRA  STEP:   175.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0067666785      0.0000000000
        2      0.0000013799      0.0067668341      0.0009995532
        3      0.0000000000      0.0067669683      0.0000000000

    Force Error: 0.176492E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016766678   95351.8  260876.8   0.000155117
   2   0.001001380   0.016766834   95265.3  261192.0  -0.000641779
   3   0.002000000   0.016766968   95374.5  262131.7   0.000133868
     ===========================================================


  TIME: GANDRA  STEP:   176.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0067804121      0.0000000000
        2      0.0000013808      0.0067805682      0.0010021125
        3      0.0000000000      0.0067807028      0.0000000000

    Force Error: 0.172422E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016780412   95480.2  261392.7   0.000155609
   2   0.001001381   0.016780568   95393.7  261708.5  -0.000643412
   3   0.002000000   0.016780703   95504.3  262653.4   0.000134240
     ===========================================================


  TIME: GANDRA  STEP:   177.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0067938197      0.0000000000
        2      0.0000013817      0.0067939762      0.0010046157
        3      0.0000000000      0.0067941112      0.0000000000

    Force Error: 0.168423E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016793820   95608.3  261897.7   0.000156088
   2   0.001001382   0.016793976   95521.8  262214.0  -0.000645011
   3   0.002000000   0.016794111   95633.8  263164.1   0.000134598
     ===========================================================


  TIME: GANDRA  STEP:   178.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0068069070      0.0000000000
        2      0.0000013825      0.0068070640      0.0010070642
        3      0.0000000000      0.0068071993      0.0000000000

    Force Error: 0.164493E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016806907   95736.2  262391.9   0.000156555
   2   0.001001383   0.016807064   95649.8  262708.8  -0.000646579
   3   0.002000000   0.016807199   95763.1  263664.0   0.000134945
     ===========================================================


  TIME: GANDRA  STEP:   179.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0068196798      0.0000000000
        2      0.0000013833      0.0068198372      0.0010094595
        3      0.0000000000      0.0068199728      0.0000000000

    Force Error: 0.160632E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016819680   95863.7  262875.4   0.000157010
   2   0.001001383   0.016819837   95777.4  263192.8  -0.000648115
   3   0.002000000   0.016819973   95892.1  264153.2   0.000135280
     ===========================================================


  TIME: GANDRA  STEP:   180.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0068321439      0.0000000000
        2      0.0000013840      0.0068323018      0.0010118033
        3      0.0000000000      0.0068324377      0.0000000000

    Force Error: 0.156841E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016832144   95991.0  263348.4   0.000157454
   2   0.001001384   0.016832302   95904.8  263666.4  -0.000649621
   3   0.002000000   0.016832438   96020.9  264632.0   0.000135603
     ===========================================================


  TIME: GANDRA  STEP:   181.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0068443050      0.0000000000
        2      0.0000013847      0.0068444633      0.0010140970
        3      0.0000000000      0.0068445995      0.0000000000

    Force Error: 0.153117E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016844305   96118.1  263811.1   0.000157886
   2   0.001001385   0.016844463   96031.9  264129.6  -0.000651097
   3   0.002000000   0.016844599   96149.4  265100.3   0.000135915
     ===========================================================


  TIME: GANDRA  STEP:   182.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0068561687      0.0000000000
        2      0.0000013854      0.0068563275      0.0010163419
        3      0.0000000000      0.0068564640      0.0000000000

    Force Error: 0.149461E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016856169   96244.8  264263.6   0.000158307
   2   0.001001385   0.016856327   96158.7  264582.6  -0.000652545
   3   0.002000000   0.016856464   96277.6  265558.5   0.000136217
     ===========================================================


  TIME: GANDRA  STEP:   183.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0068677408      0.0000000000
        2      0.0000013860      0.0068679000      0.0010185397
        3      0.0000000000      0.0068680368      0.0000000000

    Force Error: 0.145873E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016867741   96371.2  264706.0   0.000158718
   2   0.001001386   0.016867900   96285.1  265025.6  -0.000653964
   3   0.002000000   0.016868037   96405.6  266006.6   0.000136508
     ===========================================================


  TIME: GANDRA  STEP:   184.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0068790269      0.0000000000
        2      0.0000013866      0.0068791864      0.0010206916
        3      0.0000000000      0.0068793234      0.0000000000

    Force Error: 0.142352E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016879027   96497.3  265138.5   0.000159119
   2   0.001001387   0.016879186   96411.3  265458.7  -0.000655357
   3   0.002000000   0.016879323   96533.2  266444.7   0.000136789
     ===========================================================


  TIME: GANDRA  STEP:   185.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0068900324      0.0000000000
        2      0.0000013872      0.0068901923      0.0010227991
        3      0.0000000000      0.0068903296      0.0000000000

    Force Error: 0.138897E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016890032   96623.0  265561.3   0.000159509
   2   0.001001387   0.016890192   96537.2  265882.0  -0.000656723
   3   0.002000000   0.016890330   96660.6  266873.1   0.000137060
     ===========================================================


  TIME: GANDRA  STEP:   186.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0069007629      0.0000000000
        2      0.0000013877      0.0069009232      0.0010248634
        3      0.0000000000      0.0069010607      0.0000000000

    Force Error: 0.135508E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016900763   96748.4  265974.5   0.000159890
   2   0.001001388   0.016900923   96662.7  266295.7  -0.000658064
   3   0.002000000   0.016901061   96787.6  267291.9   0.000137322
     ===========================================================


  TIME: GANDRA  STEP:   187.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0069112238      0.0000000000
        2      0.0000013882      0.0069113845      0.0010268860
        3      0.0000000000      0.0069115223      0.0000000000

    Force Error: 0.132184E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016911224   96873.5  266378.2   0.000160262
   2   0.001001388   0.016911384   96787.8  266699.9  -0.000659380
   3   0.002000000   0.016911522   96914.2  267701.3   0.000137575
     ===========================================================


  TIME: GANDRA  STEP:   188.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0069214206      0.0000000000
        2      0.0000013887      0.0069215816      0.0010288680
        3      0.0000000000      0.0069217197      0.0000000000

    Force Error: 0.128925E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016921421   96998.1  266772.7   0.000160625
   2   0.001001389   0.016921582   96912.6  267094.9  -0.000660672
   3   0.002000000   0.016921720   97040.5  268101.3   0.000137819
     ===========================================================


  TIME: GANDRA  STEP:   189.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0069313586      0.0000000000
        2      0.0000013891      0.0069315199      0.0010308107
        3      0.0000000000      0.0069316582      0.0000000000

    Force Error: 0.125731E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016931359   97122.4  267158.0   0.000160979
   2   0.001001389   0.016931520   97036.9  267480.8  -0.000661940
   3   0.002000000   0.016931658   97166.5  268492.2   0.000138055
     ===========================================================


  TIME: GANDRA  STEP:   190.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0069410431      0.0000000000
        2      0.0000013895      0.0069412047      0.0010327153
        3      0.0000000000      0.0069413432      0.0000000000

    Force Error: 0.122599E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016941043   97246.3  267534.4   0.000161324
   2   0.001001390   0.016941205   97160.9  267857.6  -0.000663186
   3   0.002000000   0.016941343   97292.0  268874.1   0.000138283
     ===========================================================


  TIME: GANDRA  STEP:   191.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0069504792      0.0000000000
        2      0.0000013899      0.0069506412      0.0010345831
        3      0.0000000000      0.0069507799      0.0000000000

    Force Error: 0.119530E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016950479   97369.7  267901.9   0.000161662
   2   0.001001390   0.016950641   97284.5  268225.7  -0.000664409
   3   0.002000000   0.016950780   97417.2  269247.2   0.000138503
     ===========================================================


  TIME: GANDRA  STEP:   192.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0069596723      0.0000000000
        2      0.0000013902      0.0069598346      0.0010364152
        3      0.0000000000      0.0069599735      0.0000000000

    Force Error: 0.116524E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016959672   97492.8  268260.8   0.000161991
   2   0.001001390   0.016959835   97407.7  268585.0  -0.000665611
   3   0.002000000   0.016959974   97541.9  269611.5   0.000138716
     ===========================================================


  TIME: GANDRA  STEP:   193.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0069686273      0.0000000000
        2      0.0000013906      0.0069687900      0.0010382127
        3      0.0000000000      0.0069689291      0.0000000000

    Force Error: 0.113578E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016968627   97615.3  268611.2   0.000162313
   2   0.001001391   0.016968790   97530.4  268935.9  -0.000666792
   3   0.002000000   0.016968929   97666.2  269967.3   0.000138921
     ===========================================================


  TIME: GANDRA  STEP:   194.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0069773494      0.0000000000
        2      0.0000013909      0.0069775124      0.0010399767
        3      0.0000000000      0.0069776517      0.0000000000

    Force Error: 0.110694E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016977349   97737.4  268953.1   0.000162628
   2   0.001001391   0.016977512   97652.6  269278.3  -0.000667953
   3   0.002000000   0.016977652   97790.1  270314.8   0.000139120
     ===========================================================


  TIME: GANDRA  STEP:   195.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0069858436      0.0000000000
        2      0.0000013911      0.0069860068      0.0010417083
        3      0.0000000000      0.0069861463      0.0000000000

    Force Error: 0.107869E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016985844   97859.1  269286.9   0.000162936
   2   0.001001391   0.016986007   97774.4  269612.6  -0.000669095
   3   0.002000000   0.016986146   97913.5  270653.9   0.000139312
     ===========================================================


  TIME: GANDRA  STEP:   196.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0069941147      0.0000000000
        2      0.0000013914      0.0069942782      0.0010434085
        3      0.0000000000      0.0069944179      0.0000000000

    Force Error: 0.105104E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.016994115   97980.2  269612.6   0.000163237
   2   0.001001391   0.016994278   97895.7  269938.7  -0.000670217
   3   0.002000000   0.016994418   98036.5  270985.0   0.000139497
     ===========================================================


  TIME: GANDRA  STEP:   197.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0070021677      0.0000000000
        2      0.0000013916      0.0070023315      0.0010450784
        3      0.0000000000      0.0070024713      0.0000000000

    Force Error: 0.102397E-01

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.017002168   98100.8  269930.3   0.000163531
   2   0.001001392   0.017002331   98016.4  270257.0  -0.000671321
   3   0.002000000   0.017002471   98158.9  271308.2   0.000139677
     ===========================================================


  TIME: GANDRA  STEP:   198.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0070100072      0.0000000000
        2      0.0000013918      0.0070101713      0.0010467189
        3      0.0000000000      0.0070103113      0.0000000000

    Force Error: 0.997472E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.017010007   98220.9  270240.3   0.000163819
   2   0.001001392   0.017010171   98136.7  270567.5  -0.000672407
   3   0.002000000   0.017010311   98280.8  271623.5   0.000139851
     ===========================================================


  TIME: GANDRA  STEP:   199.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0070176381      0.0000000000
        2      0.0000013919      0.0070178025      0.0010483310
        3      0.0000000000      0.0070179427      0.0000000000

    Force Error: 0.971549E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.017017638   98340.5  270542.7   0.000164101
   2   0.001001392   0.017017803   98256.4  270870.3  -0.000673476
   3   0.002000000   0.017017943   98402.2  271931.2   0.000140019
     ===========================================================


  TIME: GANDRA  STEP:   200.000  FRAME:  1.000  Iteration:    1

      Nodal displacements: 
      Node    S-direction    N-direction 
        1      0.0000000000      0.0070250651      0.0000000000
        2      0.0000013921      0.0070252297      0.0010499156
        3      0.0000000000      0.0070253701      0.0000000000

    Force Error: 0.946187E-02

   ***New Coordinates and Stresses at Nodes:
   ***Node Z-direction N-direction Z-stress Q-stress StrainZR
   1   0.000000000   0.017025065   98459.5  270837.6   0.000164377
   2   0.001001392   0.017025230   98375.5  271165.7  -0.000674528
   3   0.002000000   0.017025370   98523.1  272231.4   0.000140182
