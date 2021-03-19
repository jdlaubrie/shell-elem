# -*- coding: utf-8 -*-
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

NbrOfNodes = 35
key200a = '  TIME: GANDRA  STEP:   200.000  FRAME:  1.000'
key200b = '  TIME:  GANDRA:   200   STEP:  1'
#--------------------------------------------------------------------------
#       File for gain parameter 01
#--------------------------------------------------------------------------
file_g01 = open('aneurysm_ref.rsn', 'r')
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
Data_g01_t200 =  np.array([], dtype=np.int64)
Data_g01_t200.shape = (-1, 7)
for key in sorted(G01.keys()):
#    print key
    Data_g01 = np.append(Data_g01,[G01[key][0,:]], axis=0)

for node in range(NbrOfNodes):
    Data_g01_t200 = np.append(Data_g01_t200,[G01[key200a][node,:]], axis=0)

Data_g01.sort(axis=0)
#--------------------------------------------------------------------------
#       File for gain parameter 02
#--------------------------------------------------------------------------
file_g02 = open('aneurysm_den.rsn', 'r')
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
Data_g02_t200 =  np.array([], dtype=np.int64)
Data_g02_t200.shape = (-1, 7)
#for key in sorted(G02.keys()):
for idx in index_Time_g02.index.values:
    key = g02[idx]
    Data_g02 = np.append(Data_g02,[G02[key][0,:]], axis=0)

for node in range(NbrOfNodes):
    Data_g02_t200 = np.append(Data_g02_t200,[G02[key200b][node,:]], axis=0)

#--------------------------------------------------------------------------
fig = plt.figure()
plt.rcParams.update({'font.size': 16})
plt.rc('text', usetex=False)

plt.plot(Data_g01[:,0],Data_g02[:,1],'b',label='$\p^e$',linewidth=1.5,markersize=10)
plt.xlabel(r'Time [months]', {'color': 'k', 'fontsize': 16})
plt.ylabel(r'Ealstin Density [$kg/m^3$]', {'color': 'k', 'fontsize': 16})
plt.text(0.95, 0.95, r'a',{'color': 'k', 'fontsize': 16,'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='top',transform=plt.gca().transAxes)
plt.axis([0,200,0,450])
"""
plt.plot(Data_g01_t200[:,2]*1000.0,Data_g02_t200[:,1],'b',label='$p^e$',linewidth=1.5,markersize=10)
plt.xlabel(r'Axial position [mm]', {'color': 'k', 'fontsize': 16})
plt.ylabel(r'Ealstin Density [$kg/m^3$]', {'color': 'k', 'fontsize': 16})
plt.text(0.95, 0.95, r'b',{'color': 'k', 'fontsize': 16,'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='top',transform=plt.gca().transAxes)
plt.axis([0,100,0,400])
"""
fig.tight_layout()
plt.show

FIGURENAME = 'aneurysm_time_degradation.eps'
#FIGURENAME = 'aneurysm_space_degradation.eps'
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
