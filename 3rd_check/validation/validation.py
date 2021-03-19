# -*- coding: utf-8 -*-
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

NbrOfNodes = 35
key200 = '  TIME: GANDRA  STEP:   180.000  FRAME:  1.000'
#--------------------------------------------------------------------------
#       File for gain parameter 01
#--------------------------------------------------------------------------
file_g01 = open('validation_005.rsn', 'r')
gain01 = file_g01.readlines()
g01 = pd.Series(gain01)
g01 = g01.replace(r'\n','', regex=True)
g01 = g01.replace(r'\r\n','', regex=True)
g01 = g01.replace(r'\r','', regex=True)
index_Time_g01 = g01[g01.str.contains('TIME', case=False, regex=False)]
index_TimeValues_g01 = index_Time_g01.index.values
#--------------------------------------------------------------------------
G01 = {}
for idx in index_Time_g01.index.values:
    index_start = idx + 1
    index_end = index_start + NbrOfNodes
    tmp_df = g01[index_start:index_end].str.strip()
    tmp_df = tmp_df.str.split('  ',expand=True)
    np.array(tmp_df.values, dtype=float)
    G01[g01[idx]]=np.array(tmp_df.values, dtype=float)

Data_g01 =  np.array([], dtype=np.int64)
Data_g01.shape = (-1, 7)
for key in sorted(G01.keys()):
#    print key
    Data_g01 = np.append(Data_g01,[G01[key][0,:]], axis=0)

Data_g01.sort(axis=0)
#--------------------------------------------------------------------------
#       File for gain parameter 02
#--------------------------------------------------------------------------
file_g02 = open('validation_009.rsn', 'r')
gain02 = file_g02.readlines()
g02 = pd.Series(gain02)
g02 = g02.replace(r'\n','', regex=True)
g02 = g02.replace(r'\r\n','', regex=True)
g02 = g02.replace(r'\r','', regex=True)
index_Time_g02 = g02[g02.str.contains('TIME', case=False, regex=False)]
index_TimeValues_g02 = index_Time_g02.index.values
#--------------------------------------------------------------------------
G02 = {}
for idx in index_Time_g02.index.values:
    index_start = idx + 1
    index_end = index_start + NbrOfNodes
    tmp_df = g02[index_start:index_end].str.strip()
    tmp_df = tmp_df.str.split('  ',expand=True)
    np.array(tmp_df.values, dtype=float)
    G02[g02[idx]]=np.array(tmp_df.values, dtype=float)

Data_g02 =  np.array([], dtype=np.int64)
Data_g02.shape = (-1, 7)
for key in sorted(G02.keys()):
#    print key
    Data_g02 = np.append(Data_g02,[G02[key][0,:]], axis=0)

Data_g02.sort(axis=0)
#--------------------------------------------------------------------------
#       File for gain parameter 03
#--------------------------------------------------------------------------
file_g03 = open('validation_015.rsn', 'r')
gain03 = file_g03.readlines()
g03 = pd.Series(gain03)
g03 = g03.replace(r'\n','', regex=True)
g03 = g03.replace(r'\r\n','', regex=True)
g03 = g03.replace(r'\r','', regex=True)
index_Time_g03 = g03[g03.str.contains('TIME', case=False, regex=False)]
index_TimeValues_g03 = index_Time_g03.index.values
#--------------------------------------------------------------------------
G03 = {}
for idx in index_Time_g03.index.values:
    index_start = idx + 1
    index_end = index_start + NbrOfNodes
    tmp_df = g03[index_start:index_end].str.strip()
    tmp_df = tmp_df.str.split('  ',expand=True)
    np.array(tmp_df.values, dtype=float)
    G03[g03[idx]]=np.array(tmp_df.values, dtype=float)

Data_g03 =  np.array([], dtype=np.int64)
Data_g03.shape = (-1, 7)
for key in sorted(G03.keys()):
#    print key
    Data_g03 = np.append(Data_g03,[G03[key][0,:]], axis=0)

Data_g03.sort(axis=0)
#--------------------------------------------------------------------------
#       File for gain parameter 04
#--------------------------------------------------------------------------
file_g04 = open('cyron2016b_009.png.dat', 'r')
gain04 = file_g04.readlines()
g04 = pd.Series(gain04)
g04 = g04.replace(r'\n','', regex=True)
g04 = g04.replace(r'\r\n','', regex=True)
g04 = g04.replace(r'\r','', regex=True)
#--------------------------------------------------------------------------
for line in g04:
    tmp_df = g04.str.strip()
    tmp_df = tmp_df.str.split('  ',expand=True)
    np.array(tmp_df.values, dtype=float)
    Data_g04 = np.array(tmp_df.values, dtype=float)

#--------------------------------------------------------------------------
#       File for gain parameter 05
#--------------------------------------------------------------------------
file_g05 = open('cyron2016b_005.png.dat', 'r')
gain05 = file_g05.readlines()
g05 = pd.Series(gain05)
g05 = g05.replace(r'\n','', regex=True)
g05 = g05.replace(r'\r\n','', regex=True)
g05 = g05.replace(r'\r','', regex=True)
#--------------------------------------------------------------------------
for line in g05:
    tmp_df = g05.str.strip()
    tmp_df = tmp_df.str.split('  ',expand=True)
    np.array(tmp_df.values, dtype=float)
    Data_g05 = np.array(tmp_df.values, dtype=float)

#--------------------------------------------------------------------------
#       File for gain parameter 06
#--------------------------------------------------------------------------
file_g06 = open('cyron2016b_015.png.dat', 'r')
gain06 = file_g06.readlines()
g06 = pd.Series(gain06)
g06 = g06.replace(r'\n','', regex=True)
g06 = g06.replace(r'\r\n','', regex=True)
g06 = g06.replace(r'\r','', regex=True)
#--------------------------------------------------------------------------
for line in g06:
    tmp_df = g06.str.strip()
    tmp_df = tmp_df.str.split('  ',expand=True)
    np.array(tmp_df.values, dtype=float)
    Data_g06 = np.array(tmp_df.values, dtype=float)

#--------------------------------------------------------------------------
fig = plt.figure()
plt.rcParams.update({'font.size': 12})

#plt.subplot(2,3,3)
plt.plot(Data_g01[:,0],Data_g01[:,3]*1000.0,'b',label='$k_{\sigma}$=0.05/T',linewidth=2.0,markersize=10)
plt.plot(Data_g02[:,0],Data_g02[:,3]*1000.0,'r',label='$k_{\sigma}$=0.09/T',linewidth=2.0,markersize=10)
plt.plot(Data_g03[:,0],Data_g03[:,3]*1000.0,'g',label='$k_{\sigma}$=0.15/T',linewidth=2.0,markersize=10)
plt.plot(Data_g04[:,0]*12.0,Data_g04[:,1],'r--',linewidth=2.0,markersize=10)
plt.plot(Data_g05[:,0]*12.0,Data_g05[:,1],'b--',linewidth=2.0,markersize=10)
plt.plot(Data_g06[:,0]*12.0,Data_g06[:,1],'g--',linewidth=2.0,markersize=10)
plt.xlabel('Time [months]')
plt.ylabel('Radius [mm]')
plt.legend(loc='upper left')
plt.xlim(right=180)
plt.ylim(bottom=10)
#plt.title('Radius')

fig.tight_layout()
plt.show

FIGURENAME = 'validation.eps'
plt.savefig(FIGURENAME)
plt.savefig(fname=FIGURENAME,
            dpi=None,
            facecolor='w',
            edgecolor='w',
            orientation='portrait',
            format=None,
            transparent=False,
            bbox_inches=None,
            pad_inches=0.1,
            frameon=None,
            metadata=None)

plt.close('all')

#--------------------------------------------------------------------------
