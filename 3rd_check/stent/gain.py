# -*- coding: utf-8 -*-
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

NbrOfNodes = 35
keystent = '  TIME: GANDRC  STEP:   180.000  FRAME:  1.000'
#keystent = '  TIME: STENT   STEP:     1.000  FRAME:  1.000'
#--------------------------------------------------------------------------
#       File for gain parameter 01
#--------------------------------------------------------------------------
file_g01 = open('stent_g01.rsn', 'r')
gain01 = file_g01.readlines()
g01 = pd.Series(gain01)
g01 = g01.replace(r'\n','', regex=True)
g01 = g01.replace(r'\r\n','', regex=True)
g01 = g01.replace(r'\r','', regex=True)
index_Time_g01 = g01[g01.str.contains('TIME', case=False, regex=False)]
index_TimeValues_g01 = index_Time_g01.index.values
#--------------------------------------------------------------------------
G01 = {}          #dictionary
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

Data_g01_tstent =  np.array([], dtype=np.int64)
Data_g01_tstent.shape = (-1, 7)
for node in range(NbrOfNodes):
    Data_g01_tstent = np.append(Data_g01_tstent,[G01[keystent][node,:]], axis=0)

Data_g01=Data_g01[np.argsort(Data_g01[:,0])]
#--------------------------------------------------------------------------
#       File for gain parameter 02
#--------------------------------------------------------------------------
file_g02 = open('stent_ref.rsn', 'r')
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
Data_g02_tstent =  np.array([], dtype=np.int64)
Data_g02_tstent.shape = (-1, 7)
for key in sorted(G02.keys()):
#    print key
    Data_g02 = np.append(Data_g02,[G02[key][0,:]], axis=0)

for node in range(NbrOfNodes):
    Data_g02_tstent = np.append(Data_g02_tstent,[G02[keystent][node,:]], axis=0)

Data_g02=Data_g02[np.argsort(Data_g02[:,0])]
#--------------------------------------------------------------------------
#       File for gain parameter 03
#--------------------------------------------------------------------------
file_g03 = open('stent_g03.rsn', 'r')
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
Data_g03_tstent =  np.array([], dtype=np.int64)
Data_g03_tstent.shape = (-1, 7)
for key in sorted(G03.keys()):
#    print key
    Data_g03 = np.append(Data_g03,[G03[key][0,:]], axis=0)

for node in range(NbrOfNodes):
    Data_g03_tstent = np.append(Data_g03_tstent,[G03[keystent][node,:]], axis=0)

Data_g03=Data_g03[np.argsort(Data_g03[:,0])]
#--------------------------------------------------------------------------
#       File for gain parameter 04
#--------------------------------------------------------------------------
file_g04 = open('stent_g04.rsn', 'r')
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
Data_g04_tstent =  np.array([], dtype=np.int64)
Data_g04_tstent.shape = (-1, 7)
for key in sorted(G04.keys()):
#    print key
    Data_g04 = np.append(Data_g04,[G04[key][0,:]], axis=0)

for node in range(NbrOfNodes):
    Data_g04_tstent = np.append(Data_g04_tstent,[G04[keystent][node,:]], axis=0)

Data_g04=Data_g04[np.argsort(Data_g04[:,0])]
#--------------------------------------------------------------------------
fig = plt.figure()
plt.rcParams.update({'font.size': 8})
plt.rc('text', usetex=False)

plt.subplot(2,3,1)
plt.plot(Data_g01[:,0],Data_g01[:,4]/1000.0,'b',label='Gain=0.01/T',linewidth=1.5,markersize=10)
plt.plot(Data_g02[:,0],Data_g02[:,4]/1000.0,'r',label='Gain=0.02/T',linewidth=1.5,markersize=10)
plt.plot(Data_g03[:,0],Data_g03[:,4]/1000.0,'g',label='Gain=0.03/T',linewidth=1.5,markersize=10)
plt.plot(Data_g04[:,0],Data_g04[:,4]/1000.0,'m',label='Gain=0.04/T',linewidth=1.5,markersize=10)
plt.xlabel(r'Time [months]', {'color': 'k', 'fontsize': 10})
plt.text(0.05, 0.5, r'Axial Stress [kPa]',{'color': 'k', 'fontsize': 10,},
        ha='left',va='center',rotation=90,clip_on=False,transform=plt.gca().transAxes)
plt.text(0.95, 0.95, r'a',{'color': 'k', 'fontsize': 10,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='top',transform=plt.gca().transAxes)
plt.legend(loc='center right')
plt.axis([0, 180, 0, 100])

plt.subplot(2,3,2)
plt.plot(Data_g01[:,0],Data_g01[:,5]/1000.0,'b',label='Gain=0.01/T',linewidth=1.5,markersize=10)
plt.plot(Data_g02[:,0],Data_g02[:,5]/1000.0,'r',label='Gain=0.02/T',linewidth=1.5,markersize=10)
plt.plot(Data_g03[:,0],Data_g03[:,5]/1000.0,'g',label='Gain=0.03/T',linewidth=1.5,markersize=10)
plt.plot(Data_g04[:,0],Data_g04[:,5]/1000.0,'m',label='Gain=0.04/T',linewidth=1.5,markersize=10)
plt.xlabel(r'Time [months]', {'color': 'k', 'fontsize': 10})
plt.text(0.05, 0.5, r'Circumferential Stress [kPa]',{'color': 'k', 'fontsize': 10,},
        ha='left',va='center',rotation=90,clip_on=False,transform=plt.gca().transAxes)
plt.text(0.95, 0.95, r'b',{'color': 'k', 'fontsize': 10,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='top',transform=plt.gca().transAxes)
#plt.legend(loc='upper right')
plt.axis([0, 180, 0, 310])

plt.subplot(2,3,3)
plt.plot(Data_g01[:,0],Data_g01[:,3]*1000.0,'b',label='Gain=0.01/T',linewidth=1.5,markersize=10)
plt.plot(Data_g02[:,0],Data_g02[:,3]*1000.0,'r',label='Gain=0.02/T',linewidth=1.5,markersize=10)
plt.plot(Data_g03[:,0],Data_g03[:,3]*1000.0,'g',label='Gain=0.03/T',linewidth=1.5,markersize=10)
plt.plot(Data_g04[:,0],Data_g04[:,3]*1000.0,'m',label='Gain=0.04/T',linewidth=1.5,markersize=10)
plt.xlabel(r'Time [months]', {'color': 'k', 'fontsize': 10})
plt.text(0.05, 0.5, r'Radius [mm]',{'color': 'k', 'fontsize': 10,},
        ha='left',va='center',rotation=90,clip_on=False,transform=plt.gca().transAxes)
plt.text(0.95, 0.95, r'c',{'color': 'k', 'fontsize': 10,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='top',transform=plt.gca().transAxes)
#plt.legend(loc='lower right')
plt.axis([0, 180, 9.5, 11])

plt.subplot(2,3,4)
plt.plot(Data_g01_tstent[:,2]*1000.0,Data_g01_tstent[:,4]/1000.0,'b',label='Gain=0.01/T',linewidth=1.5,markersize=10)
plt.plot(Data_g02_tstent[:,2]*1000.0,Data_g02_tstent[:,4]/1000.0,'r',label='Gain=0.02/T',linewidth=1.5,markersize=10)
plt.plot(Data_g03_tstent[:,2]*1000.0,Data_g03_tstent[:,4]/1000.0,'g',label='Gain=0.03/T',linewidth=1.5,markersize=10)
plt.plot(Data_g04_tstent[:,2]*1000.0,Data_g04_tstent[:,4]/1000.0,'m',label='Gain=0.04/T',linewidth=1.5,markersize=10)
plt.xlabel(r'Axial position [mm]', {'color': 'k', 'fontsize': 10})
plt.text(0.05, 0.5, r'Axial Stress [kPa]',{'color': 'k', 'fontsize': 10,},
        ha='left',va='center',rotation=90,clip_on=False,transform=plt.gca().transAxes)
plt.text(0.95, 0.95, r'd',{'color': 'k', 'fontsize': 10,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='top',transform=plt.gca().transAxes)
#plt.legend(loc='lower left')
plt.axis([0, 100, 0, 100])

plt.subplot(2,3,5)
plt.plot(Data_g01_tstent[:,2]*1000.0,Data_g01_tstent[:,5]/1000.0,'b',label='Gain=0.01/T',linewidth=1.5,markersize=10)
plt.plot(Data_g02_tstent[:,2]*1000.0,Data_g02_tstent[:,5]/1000.0,'r',label='Gain=0.02/T',linewidth=1.5,markersize=10)
plt.plot(Data_g03_tstent[:,2]*1000.0,Data_g03_tstent[:,5]/1000.0,'g',label='Gain=0.03/T',linewidth=1.5,markersize=10)
plt.plot(Data_g04_tstent[:,2]*1000.0,Data_g04_tstent[:,5]/1000.0,'m',label='Gain=0.04/T',linewidth=1.5,markersize=10)
plt.xlabel(r'Axial position [mm]', {'color': 'k', 'fontsize': 10})
plt.text(0.05, 0.5, r'Circumferential Stress [kPa]',{'color': 'k', 'fontsize': 10,},
        ha='left',va='center',rotation=90,clip_on=False,transform=plt.gca().transAxes)
plt.text(0.95, 0.95, r'e',{'color': 'k', 'fontsize': 10,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='top',transform=plt.gca().transAxes)
#plt.legend(loc='lower left')
plt.axis([0, 100, 0, 310])

plt.subplot(2,3,6)
plt.plot(Data_g01_tstent[:,2]*1000.0,Data_g01_tstent[:,3]*1000.0,'b',label='Gain=0.01/T',linewidth=1.5,markersize=10)
plt.plot(Data_g02_tstent[:,2]*1000.0,Data_g02_tstent[:,3]*1000.0,'r',label='Gain=0.02/T',linewidth=1.5,markersize=10)
plt.plot(Data_g03_tstent[:,2]*1000.0,Data_g03_tstent[:,3]*1000.0,'g',label='Gain=0.03/T',linewidth=1.5,markersize=10)
plt.plot(Data_g04_tstent[:,2]*1000.0,Data_g04_tstent[:,3]*1000.0,'m',label='Gain=0.04/T',linewidth=1.5,markersize=10)
plt.xlabel(r'Axial position [mm]', {'color': 'k', 'fontsize': 10})
plt.text(0.05, 0.5, r'Radius [mm]',{'color': 'k', 'fontsize': 10,},
        ha='left',va='center',rotation=90,clip_on=False,transform=plt.gca().transAxes)
plt.text(0.95, 0.95, r'f',{'color': 'k', 'fontsize': 10,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='top',transform=plt.gca().transAxes)
#plt.legend(loc='lower left')
plt.axis([0, 100, 9.5, 11])

fig.tight_layout()
plt.show

FIGURENAME = 'gain.eps'
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
"""
radii = (Data_g01[-1,3]*1000.0, Data_g02[-1,3]*1000.0, Data_g03[-1,3]*1000.0, Data_g04[-1,3]*1000.0)

fig, ax = plt.subplots()
plt.rcParams.update({'font.size': 20})

index = np.arange(4)
bar_width = 0.45

opacity = 0.4
error_config = {'ecolor': '0.3'}

rects1 = ax.bar(index, radii, bar_width,
                alpha=opacity, color='b',
                error_kw=error_config, label='Gain')

ax.set_xlabel('Gain')
ax.set_ylabel('Radius [mm]')
ax.set_xticks(index + bar_width / 2)
ax.set_xticklabels(('0.01/T', '0.02/T', '0.03/T', '0.04/T'))
plt.text(0.95, 0.95, r'a',{'color': 'k', 'fontsize': 20,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='top',transform=plt.gca().transAxes)
plt.axis([-0.25,3.7,0,20])

fig.tight_layout()
plt.show

FIGURENAME = 'sensitivity_gain.eps'
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
"""
#--------------------------------------------------------------------------
