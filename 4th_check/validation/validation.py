# -*- coding: utf-8 -*-
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

NbrOfNodes = 3
key200 = '  TIME: GANDRA  STEP:   200.000  FRAME:  1.000'
#--------------------------------------------------------------------------
#       File for gain parameter 0.05
#--------------------------------------------------------------------------
file_g01 = open('axisymm_k005.rsn', 'r')
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
    Data_g01 = np.append(Data_g01,[G01[key][0,:]], axis=0)

Data_g01.sort(axis=0)
#--------------------------------------------------------------------------
#       File for gain parameter 0.07
#--------------------------------------------------------------------------
file_g02 = open('axisymm_k007.rsn', 'r')
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
    Data_g02 = np.append(Data_g02,[G02[key][0,:]], axis=0)

Data_g02.sort(axis=0)
#--------------------------------------------------------------------------
#       File for gain parameter 0.09
#--------------------------------------------------------------------------
file_g03 = open('axisymm_k009.rsn', 'r')
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
    Data_g03 = np.append(Data_g03,[G03[key][0,:]], axis=0)

Data_g03.sort(axis=0)
#--------------------------------------------------------------------------
#       File for gain parameter 0.11
#--------------------------------------------------------------------------
file_g04 = open('axisymm_k011.rsn', 'r')
gain04 = file_g04.readlines()
g04 = pd.Series(gain04)
g04 = g04.replace(r'\n','', regex=True)
g04 = g04.replace(r'\r\n','', regex=True)
g04 = g04.replace(r'\r','', regex=True)
index_Time_g04 = g04[g04.str.contains('TIME', case=False, regex=False)]
index_TimeValues_g04 = index_Time_g04.index.values
#--------------------------------------------------------------------------
G04 = {}
for idx in index_Time_g04.index.values:
    index_start = idx + 1
    index_end = index_start + NbrOfNodes
    tmp_df = g04[index_start:index_end].str.strip()
    tmp_df = tmp_df.str.split('  ',expand=True)
    np.array(tmp_df.values, dtype=float)
    G04[g04[idx]]=np.array(tmp_df.values, dtype=float)

Data_g04 =  np.array([], dtype=np.int64)
Data_g04.shape = (-1, 7)
for key in sorted(G04.keys()):
    Data_g04 = np.append(Data_g04,[G04[key][0,:]], axis=0)

Data_g04.sort(axis=0)
#--------------------------------------------------------------------------
#       File for gain parameter 0.13
#--------------------------------------------------------------------------
file_g05 = open('axisymm_k013.rsn', 'r')
gain05 = file_g05.readlines()
g05 = pd.Series(gain05)
g05 = g05.replace(r'\n','', regex=True)
g05 = g05.replace(r'\r\n','', regex=True)
g05 = g05.replace(r'\r','', regex=True)
index_Time_g05 = g05[g05.str.contains('TIME', case=False, regex=False)]
index_TimeValues_g05 = index_Time_g05.index.values
#--------------------------------------------------------------------------
G05 = {}
for idx in index_Time_g05.index.values:
    index_start = idx + 1
    index_end = index_start + NbrOfNodes
    tmp_df = g05[index_start:index_end].str.strip()
    tmp_df = tmp_df.str.split('  ',expand=True)
    np.array(tmp_df.values, dtype=float)
    G05[g05[idx]]=np.array(tmp_df.values, dtype=float)

Data_g05 =  np.array([], dtype=np.int64)
Data_g05.shape = (-1, 7)
for key in sorted(G05.keys()):
    Data_g05 = np.append(Data_g05,[G05[key][0,:]], axis=0)

Data_g05.sort(axis=0)
#--------------------------------------------------------------------------
#       File for gain parameter 0.15
#--------------------------------------------------------------------------
file_g06 = open('axisymm_k015.rsn', 'r')
gain06 = file_g06.readlines()
g06 = pd.Series(gain06)
g06 = g06.replace(r'\n','', regex=True)
g06 = g06.replace(r'\r\n','', regex=True)
g06 = g06.replace(r'\r','', regex=True)
index_Time_g06 = g06[g06.str.contains('TIME', case=False, regex=False)]
index_TimeValues_g06 = index_Time_g06.index.values
#--------------------------------------------------------------------------
G06 = {}
for idx in index_Time_g06.index.values:
    index_start = idx + 1
    index_end = index_start + NbrOfNodes
    tmp_df = g06[index_start:index_end].str.strip()
    tmp_df = tmp_df.str.split('  ',expand=True)
    np.array(tmp_df.values, dtype=float)
    G06[g06[idx]]=np.array(tmp_df.values, dtype=float)

Data_g06 =  np.array([], dtype=np.int64)
Data_g06.shape = (-1, 7)
for key in sorted(G06.keys()):
    Data_g06 = np.append(Data_g06,[G06[key][0,:]], axis=0)

Data_g06.sort(axis=0)
#--------------------------------------------------------------------------
#       File for gain parameter 0.05
#--------------------------------------------------------------------------
file_g07 = open('Braeu2017_005.png.dat', 'r')
gain07 = file_g07.readlines()
g07 = pd.Series(gain07)
g07 = g07.replace(r'\n','', regex=True)
g07 = g07.replace(r'\r\n','', regex=True)
g07 = g07.replace(r'\r','', regex=True)
#--------------------------------------------------------------------------
for line in g07:
    tmp_df = g07.str.strip()
    tmp_df = tmp_df.str.split('  ',expand=True)
    np.array(tmp_df.values, dtype=float)
    Data_g07 = np.array(tmp_df.values, dtype=float)

#--------------------------------------------------------------------------
#       File for gain parameter 0.07
#--------------------------------------------------------------------------
file_g08 = open('Braeu2017_007.png.dat', 'r')
gain08 = file_g08.readlines()
g08 = pd.Series(gain08)
g08 = g08.replace(r'\n','', regex=True)
g08 = g08.replace(r'\r\n','', regex=True)
g08 = g08.replace(r'\r','', regex=True)
#--------------------------------------------------------------------------
for line in g08:
    tmp_df = g08.str.strip()
    tmp_df = tmp_df.str.split('  ',expand=True)
    np.array(tmp_df.values, dtype=float)
    Data_g08 = np.array(tmp_df.values, dtype=float)

#--------------------------------------------------------------------------
#       File for gain parameter 0.09
#--------------------------------------------------------------------------
file_g09 = open('Braeu2017_009.png.dat', 'r')
gain09 = file_g09.readlines()
g09 = pd.Series(gain09)
g09 = g09.replace(r'\n','', regex=True)
g09 = g09.replace(r'\r\n','', regex=True)
g09 = g09.replace(r'\r','', regex=True)
#--------------------------------------------------------------------------
for line in g09:
    tmp_df = g09.str.strip()
    tmp_df = tmp_df.str.split('  ',expand=True)
    np.array(tmp_df.values, dtype=float)
    Data_g09 = np.array(tmp_df.values, dtype=float)

#--------------------------------------------------------------------------
#       File for gain parameter 0.11
#--------------------------------------------------------------------------
file_g10 = open('Braeu2017_011.png.dat', 'r')
gain10 = file_g10.readlines()
g10 = pd.Series(gain10)
g10 = g10.replace(r'\n','', regex=True)
g10 = g10.replace(r'\r\n','', regex=True)
g10 = g10.replace(r'\r','', regex=True)
#--------------------------------------------------------------------------
for line in g10:
    tmp_df = g10.str.strip()
    tmp_df = tmp_df.str.split('  ',expand=True)
    np.array(tmp_df.values, dtype=float)
    Data_g10 = np.array(tmp_df.values, dtype=float)

#--------------------------------------------------------------------------
#       File for gain parameter 0.13
#--------------------------------------------------------------------------
file_g11 = open('Braeu2017_013.png.dat', 'r')
gain11 = file_g11.readlines()
g11 = pd.Series(gain11)
g11 = g11.replace(r'\n','', regex=True)
g11 = g11.replace(r'\r\n','', regex=True)
g11 = g11.replace(r'\r','', regex=True)
#--------------------------------------------------------------------------
for line in g11:
    tmp_df = g11.str.strip()
    tmp_df = tmp_df.str.split('  ',expand=True)
    np.array(tmp_df.values, dtype=float)
    Data_g11 = np.array(tmp_df.values, dtype=float)

#--------------------------------------------------------------------------
#       File for gain parameter 0.15
#--------------------------------------------------------------------------
file_g12 = open('Braeu2017_015.png.dat', 'r')
gain12 = file_g12.readlines()
g12 = pd.Series(gain12)
g12 = g12.replace(r'\n','', regex=True)
g12 = g12.replace(r'\r\n','', regex=True)
g12 = g12.replace(r'\r','', regex=True)
#--------------------------------------------------------------------------
for line in g12:
    tmp_df = g12.str.strip()
    tmp_df = tmp_df.str.split('  ',expand=True)
    np.array(tmp_df.values, dtype=float)
    Data_g12 = np.array(tmp_df.values, dtype=float)

#--------------------------------------------------------------------------
fig = plt.figure()
plt.rcParams.update({'font.size': 12})

#plt.subplot(2,3,3)
plt.plot(Data_g01[:,0],Data_g01[:,3]*1000.0,'b',label='$k_{\sigma}$=0.05/T',linewidth=2.0,markersize=10)
plt.plot(Data_g02[:,0],Data_g02[:,3]*1000.0,'r',label='$k_{\sigma}$=0.07/T',linewidth=2.0,markersize=10)
plt.plot(Data_g03[:,0],Data_g03[:,3]*1000.0,'g',label='$k_{\sigma}$=0.09/T',linewidth=2.0,markersize=10)
plt.plot(Data_g04[:,0],Data_g04[:,3]*1000.0,'c',label='$k_{\sigma}$=0.11/T',linewidth=2.0,markersize=10)
plt.plot(Data_g05[:,0],Data_g05[:,3]*1000.0,'y',label='$k_{\sigma}$=0.13/T',linewidth=2.0,markersize=10)
plt.plot(Data_g06[:,0],Data_g06[:,3]*1000.0,'m',label='$k_{\sigma}$=0.15/T',linewidth=2.0,markersize=10)
plt.plot(Data_g07[:,0]*12.0,Data_g07[:,1],'b--',linewidth=2.0,markersize=10)
plt.plot(Data_g08[:,0]*12.0,Data_g08[:,1],'r--',linewidth=2.0,markersize=10)
plt.plot(Data_g09[:,0]*12.0,Data_g09[:,1],'g--',linewidth=2.0,markersize=10)
plt.plot(Data_g10[:,0]*12.0,Data_g10[:,1],'c--',linewidth=2.0,markersize=10)
plt.plot(Data_g11[:,0]*12.0,Data_g11[:,1],'y--',linewidth=2.0,markersize=10)
plt.plot(Data_g12[:,0]*12.0,Data_g12[:,1],'m--',linewidth=2.0,markersize=10)
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
