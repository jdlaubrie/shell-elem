# -*- coding: utf-8 -*-
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

NbrOfNodes = 35
keygnra01 = '   TIME: GANDRA  80   STEP:  1'
keystent01 = '   TIME: STENT  1   STEP:  1'
keygnrb01 = '   TIME: GANDRB 100   STEP:  1'
keygnra02 = '  TIME: GANDRA  STEP:    80.000  FRAME:  1.000'
keystent02 = '  TIME: STENT   STEP:     1.000  FRAME:  1.000'
keygnrb02 = '  TIME: GANDRB  STEP:   100.000  FRAME:  1.000'
#--------------------------------------------------------------------------
#       File for gain parameter 01
#--------------------------------------------------------------------------
file_g01 = open('surgery_den.rsn', 'r')
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
#every mesh along time
Data_g01 =  np.array([], dtype=np.int64)
Data_g01.shape = (-1, 7)
#for key in sorted(G01.keys()):
for idx in index_Time_g01.index.values:
    key = g01[idx]
    Data_g01 = np.append(Data_g01,[G01[key][0,:]], axis=0)
#mesh for this particular key  GNRA
Data_g01_gnra =  np.array([], dtype=np.int64)
Data_g01_gnra.shape = (-1, 7)
for node in range(NbrOfNodes):
    Data_g01_gnra = np.append(Data_g01_gnra,[G01[keygnra01][node,:]], axis=0)
#mesh for this particular key  STENT
Data_g01_stent =  np.array([], dtype=np.int64)
Data_g01_stent.shape = (-1, 7)
for node in range(NbrOfNodes):
    Data_g01_stent = np.append(Data_g01_stent,[G01[keystent01][node,:]], axis=0)
#mesh for this particular key  GNRB
Data_g01_gnrb =  np.array([], dtype=np.int64)
Data_g01_gnrb.shape = (-1, 7)
for node in range(NbrOfNodes):
    Data_g01_gnrb = np.append(Data_g01_gnrb,[G01[keygnrb01][node,:]], axis=0)

#--------------------------------------------------------------------------
#       File for gain parameter 02
#--------------------------------------------------------------------------
file_g02 = open('surgery_ref.rsn', 'r')
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
#every mesh along time
Data_g02 =  np.array([], dtype=np.int64)
Data_g02.shape = (-1, 7)
for key in sorted(G02.keys()):
    Data_g02 = np.append(Data_g02,[G02[key][0,:]], axis=0)
#mesh for this particular key  GNRA
Data_g02_gnra =  np.array([], dtype=np.int64)
Data_g02_gnra.shape = (-1, 7)
for node in range(NbrOfNodes):
    Data_g02_gnra = np.append(Data_g02_gnra,[G02[keygnra02][node,:]], axis=0)
#mesh for this particular key  STENT
Data_g02_stent =  np.array([], dtype=np.int64)
Data_g02_stent.shape = (-1, 7)
for node in range(NbrOfNodes):
    Data_g02_stent = np.append(Data_g02_stent,[G02[keystent02][node,:]], axis=0)
#mesh for this particular key  GNRB
Data_g02_gnrb =  np.array([], dtype=np.int64)
Data_g02_gnrb.shape = (-1, 7)
for node in range(NbrOfNodes):
    Data_g02_gnrb = np.append(Data_g02_gnrb,[G02[keygnrb02][node,:]], axis=0)

Data_g02=Data_g02[np.argsort(Data_g02[:,0])]
#--------------------------------------------------------------------------
fig = plt.figure()
plt.rcParams.update({'font.size': 16})
plt.rc('text', usetex=False)
"""
plt.plot(Data_g02[:,0],Data_g01[:,1],'b',label='$p^e$',linewidth=1.0,markersize=10)
plt.xlabel(r'Time [months]', {'color': 'k', 'fontsize': 16})
plt.ylabel(r'Ealstin Density [$kg/m^3$]', {'color': 'k', 'fontsize': 16})
plt.text(0.95, 0.95, r'a',{'color': 'k', 'fontsize': 16,'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='top',transform=plt.gca().transAxes)
plt.axis([0,180,0,450])

plt.plot(Data_g02_gnra[:,2]*1000.0,Data_g01_gnra[:,1],'b',label='$p^e$',linewidth=1.0,markersize=10)
plt.xlabel(r'Axial position [mm]', {'color': 'k', 'fontsize': 16})
plt.ylabel(r'Ealstin Density [$kg/m^3$]', {'color': 'k', 'fontsize': 16})
plt.text(0.95, 0.95, r'b',{'color': 'k', 'fontsize': 16,'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='top',transform=plt.gca().transAxes)
plt.axis([0,100,0,400])

plt.plot(Data_g02_stent[:,2]*1000.0,Data_g01_stent[:,1],'b',label='$p^e$',linewidth=1.0,markersize=10)
plt.xlabel(r'Axial position [mm]', {'color': 'k', 'fontsize': 16})
plt.ylabel(r'Ealstin Density [$kg/m^3$]', {'color': 'k', 'fontsize': 16})
plt.text(0.95, 0.95, r'c',{'color': 'k', 'fontsize': 16,'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='top',transform=plt.gca().transAxes)
plt.axis([0,100,0,400])
"""
plt.plot(Data_g02_gnrb[:,2]*1000.0,Data_g01_gnrb[:,1],'b',label='$p^e$',linewidth=1.0,markersize=10)
plt.xlabel(r'Axial position [mm]', {'color': 'k', 'fontsize': 16})
plt.ylabel(r'Ealstin Density [$kg/m^3$]', {'color': 'k', 'fontsize': 16})
plt.text(0.95, 0.95, r'd',{'color': 'k', 'fontsize': 16,'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='top',transform=plt.gca().transAxes)
plt.axis([0,100,0,400])


fig.tight_layout()
plt.show

#FIGURENAME = 'surgery_time_degradation.eps'
#FIGURENAME = 'surgery_gndra_degradation.eps'
#FIGURENAME = 'surgery_stent_degradation.eps'
FIGURENAME = 'surgery_gndrb_degradation.eps'
plt.savefig(FIGURENAME)
plt.savefig(fname=FIGURENAME,
            dpi=None,
            facecolor='w',
            edgecolor='w',
            papertype='legal',
            orientation='portrait',
            format=None,
            transparent=False,
            bbox_inches=None,
            pad_inches=0.0,
            frameon=None,
            metadata=None)

plt.close('all')
#--------------------------------------------------------------------------
