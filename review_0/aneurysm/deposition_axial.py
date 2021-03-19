# -*- coding: utf-8 -*-
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

NbrOfNodes = 35
key200 = '  TIME: GANDRA  STEP:   200.000  FRAME:  1.000'
#--------------------------------------------------------------------------
#       File for gain parameter 01
#--------------------------------------------------------------------------
file_g01 = open('aneurysm_Gz110.rsn', 'r')
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
    Data_g01_t200 = np.append(Data_g01_t200,[G01[key200][node,:]], axis=0)

Data_g01.sort(axis=0)
#--------------------------------------------------------------------------
#       File for gain parameter 02
#--------------------------------------------------------------------------
file_g02 = open('aneurysm_ref.rsn', 'r')
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
for key in sorted(G02.keys()):
#    print key
    Data_g02 = np.append(Data_g02,[G02[key][0,:]], axis=0)

for node in range(NbrOfNodes):
    Data_g02_t200 = np.append(Data_g02_t200,[G02[key200][node,:]], axis=0)

Data_g02.sort(axis=0)
#--------------------------------------------------------------------------
#       File for gain parameter 03
#--------------------------------------------------------------------------
file_g03 = open('aneurysm_Gz140.rsn', 'r')
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
Data_g03_t200 =  np.array([], dtype=np.int64)
Data_g03_t200.shape = (-1, 7)
for key in sorted(G03.keys()):
#    print key
    Data_g03 = np.append(Data_g03,[G03[key][0,:]], axis=0)

for node in range(NbrOfNodes):
    Data_g03_t200 = np.append(Data_g03_t200,[G03[key200][node,:]], axis=0)

Data_g03.sort(axis=0)
#--------------------------------------------------------------------------
"""
fig = plt.figure()
plt.rcParams.update({'font.size': 8})
plt.rc('text', usetex=False)

plt.subplot(2,3,1)
plt.plot(Data_g01[:,0],Data_g01[:,4]/1000.0,'b',label='$G^e_{hz}$=1.10',linewidth=1.5,markersize=10)
plt.plot(Data_g02[:,0],Data_g02[:,4]/1000.0,'r',label='$G^e_{hz}$=1.25',linewidth=1.5,markersize=10)
plt.plot(Data_g03[:,0],Data_g03[:,4]/1000.0,'g',label='$G^e_{hz}$=1.40',linewidth=1.5,markersize=10)
plt.xlabel(r'Time [months]', {'color': 'k', 'fontsize': 10})
plt.text(0.05, 0.5, r'Axial Stress [kPa]',{'color': 'k', 'fontsize': 10,},
        ha='left',va='center',rotation=90,clip_on=False,transform=plt.gca().transAxes)
plt.text(0.95, 0.05, r'a',{'color': 'k', 'fontsize': 10,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='bottom',transform=plt.gca().transAxes)
plt.axis([0,200,0,200])

plt.subplot(2,3,2)
plt.plot(Data_g01[:,0],Data_g01[:,5]/1000.0,'b',label='$G^e_{hz}$=1.10',linewidth=1.5,markersize=10)
plt.plot(Data_g02[:,0],Data_g02[:,5]/1000.0,'r',label='$G^e_{hz}$=1.25',linewidth=1.5,markersize=10)
plt.plot(Data_g03[:,0],Data_g03[:,5]/1000.0,'g',label='$G^e_{hz}$=1.40',linewidth=1.5,markersize=10)
plt.xlabel(r'Time [months]', {'color': 'k', 'fontsize': 10})
plt.text(0.05, 0.5, r'Circumferential Stress [kPa]',{'color': 'k', 'fontsize': 10},
        ha='left',va='center',rotation=90,clip_on=False,transform=plt.gca().transAxes)
plt.text(0.95, 0.05, r'b',{'color': 'k', 'fontsize': 10,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='bottom',transform=plt.gca().transAxes)
plt.axis([0,200,0,300])

plt.subplot(2,3,3)
plt.plot(Data_g01[:,0],Data_g01[:,3]*1000.0,'b',label='$G^e_{hz}$=1.10',linewidth=1.5,markersize=10)
plt.plot(Data_g02[:,0],Data_g02[:,3]*1000.0,'r',label='$G^e_{hz}$=1.25',linewidth=1.5,markersize=10)
plt.plot(Data_g03[:,0],Data_g03[:,3]*1000.0,'g',label='$G^e_{hz}$=1.40',linewidth=1.5,markersize=10)
plt.xlabel(r'Time [months]', {'color': 'k', 'fontsize': 10})
plt.text(0.05, 0.5, r'Radius [mm]',{'color': 'k', 'fontsize': 10},
        ha='left',va='center',rotation=90,clip_on=False,transform=plt.gca().transAxes)
plt.text(0.95, 0.05, r'c',{'color': 'k', 'fontsize': 10,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='bottom',transform=plt.gca().transAxes)
plt.axis([0,200,10,16])

plt.subplot(2,3,4)
plt.plot(Data_g01_t200[:,2]*1000.0,Data_g01_t200[:,4]/1000.0,'b',label='$G^e_{hz}$=1.10',linewidth=1.5,markersize=10)
plt.plot(Data_g02_t200[:,2]*1000.0,Data_g02_t200[:,4]/1000.0,'r',label='$G^e_{hz}$=1.25',linewidth=1.5,markersize=10)
plt.plot(Data_g03_t200[:,2]*1000.0,Data_g03_t200[:,4]/1000.0,'g',label='$G^e_{hz}$=1.40',linewidth=1.5,markersize=10)
plt.xlabel(r'Axial position [mm]', {'color': 'k', 'fontsize': 10})
plt.text(0.05, 0.5, r'Axial Stress [kPa]',{'color': 'k', 'fontsize': 10},
        ha='left',va='center',rotation=90,clip_on=False,transform=plt.gca().transAxes)
plt.text(0.95, 0.05, r'd',{'color': 'k', 'fontsize': 10,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='bottom',transform=plt.gca().transAxes)
plt.legend(loc='upper right')
plt.axis([0,100,0,200])

plt.subplot(2,3,5)
plt.plot(Data_g01_t200[:,2]*1000.0,Data_g01_t200[:,5]/1000.0,'b',label='$G^e_{hz}$=1.10',linewidth=1.5,markersize=10)
plt.plot(Data_g02_t200[:,2]*1000.0,Data_g02_t200[:,5]/1000.0,'r',label='$G^e_{hz}$=1.25',linewidth=1.5,markersize=10)
plt.plot(Data_g03_t200[:,2]*1000.0,Data_g03_t200[:,5]/1000.0,'g',label='$G^e_{hz}$=1.40',linewidth=1.5,markersize=10)
plt.xlabel(r'Axial position [mm]', {'color': 'k', 'fontsize': 10})
plt.text(0.05, 0.5, r'Circumferential Stress [kPa]',{'color': 'k', 'fontsize': 10},
        ha='left',va='center',rotation=90,clip_on=False,transform=plt.gca().transAxes)
plt.text(0.95, 0.05, r'e',{'color': 'k', 'fontsize': 10,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='bottom',transform=plt.gca().transAxes)
plt.axis([0,100,0,300])

plt.subplot(2,3,6)
plt.plot(Data_g01_t200[:,2]*1000.0,Data_g01_t200[:,3]*1000.0,'b',label='$G^e_{hz}$=1.10',linewidth=1.5,markersize=10)
plt.plot(Data_g02_t200[:,2]*1000.0,Data_g02_t200[:,3]*1000.0,'r',label='$G^e_{hz}$=1.25',linewidth=1.5,markersize=10)
plt.plot(Data_g03_t200[:,2]*1000.0,Data_g03_t200[:,3]*1000.0,'g',label='$G^e_{hz}$=1.40',linewidth=1.5,markersize=10)
plt.xlabel(r'Axial position [mm]', {'color': 'k', 'fontsize': 10})
plt.text(0.05, 0.5, r'Radius [mm]',{'color': 'k', 'fontsize': 10},
        ha='left',va='center',rotation=90,clip_on=False,transform=plt.gca().transAxes)
plt.text(0.95, 0.05, r'f',{'color': 'k', 'fontsize': 10,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='bottom',transform=plt.gca().transAxes)
plt.axis([0,100,10,16])

fig.tight_layout()
plt.show

FIGURENAME = 'deposition_axial.eps'
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
radii = (Data_g01[-1,3]*1000.0, Data_g02[-1,3]*1000.0, Data_g03[-1,3]*1000.0)

fig, ax = plt.subplots()
plt.rcParams.update({'font.size': 20})

index = np.arange(3)
bar_width = 0.45

opacity = 0.4
error_config = {'ecolor': '0.3'}

rects1 = ax.bar(index, radii, bar_width,
                alpha=opacity, color='b',
                error_kw=error_config, label='Axial Elastin Deposition Stretch')

ax.set_xlabel('$G^e_{hz}$')
ax.set_ylabel('Radius [mm]')
ax.set_xticks(index + bar_width / 2)
ax.set_xticklabels(('1.10', '1.25', '1.40'))
plt.text(0.95, 0.95, r'a',{'color': 'k', 'fontsize': 20,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='top',transform=plt.gca().transAxes)
plt.axis([-0.25,2.7,0,20])

fig.tight_layout()
plt.show

FIGURENAME = 'sensitivity_axial_depstr.eps'
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

