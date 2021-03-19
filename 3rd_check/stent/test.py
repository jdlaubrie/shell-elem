# -*- coding: utf-8 -*-
import numpy as np
import pandas as pd
#import matplotlib.pyplot as plt

NbrOfNodes = 35
gain = [0.01,0.02,0.03,0.04]
#--------------------------------------------------------------------------
#       File for oversizing 5%
#--------------------------------------------------------------------------
thefileso05 = ['stent_g01o05.rsn','stent_g02o05.rsn','stent_g03o05.rsn','stent_g04o05.rsn']
mesh1_data05 = {}
mesh0_data05 = {}
for file in thefileso05:
    myfile = open(file, 'r')
    file_aux = myfile.readlines()
    file_array = pd.Series(file_aux)
    file_array = file_array.replace(r'\n','', regex=True)
    file_array = file_array.replace(r'\r\n','', regex=True)
    file_array = file_array.replace(r'\r','', regex=True)
    index_Time = file_array[file_array.str.contains('TIME', case=False, regex=False)]
    #--------------------
    idx1 = index_Time.index[-1]                                #title step index
    idx0 = index_Time.index[1]
    index1_start = idx1 + 1                                    #firs node
    index0_start = idx0 + 1
    index1_end = index1_start + NbrOfNodes                     #last node
    index0_end = index0_start + NbrOfNodes
    tmp1_df = file_array[index1_start:index1_end].str.strip()  #mesh data as string
    tmp0_df = file_array[index0_start:index0_end].str.strip()
    tmp1_df = tmp1_df.str.split('  ',expand=True)              #manage mesh data
    tmp0_df = tmp0_df.str.split('  ',expand=True)
    mesh1_data05[file] = np.array(tmp1_df.values, dtype=float)   #define the values as float
    mesh0_data05[file] = np.array(tmp0_df.values, dtype=float)

Data1_o05 = np.array([], dtype=np.int64)
Data1_o05.shape = (-1, 7)
for key in sorted(mesh1_data05.keys()):
    Data1_o05 = np.append(Data1_o05,[mesh1_data05[key][0,:]], axis=0)
Data0_o05 = np.array([], dtype=np.int64)
Data0_o05.shape = (-1, 7)
for key in sorted(mesh0_data05.keys()):
    Data0_o05 = np.append(Data0_o05,[mesh0_data05[key][0,:]], axis=0)

print Data0_o05
