# -*- coding: utf-8 -*-
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

NbrOfNodes = 35
keygnra = '  TIME: GANDRA  STEP:    80.000  FRAME:  1.000'
keystent = '  TIME: STENT   STEP:     1.000  FRAME:  1.000'
keygnrb = '  TIME: GANDRB  STEP:   100.000  FRAME:  1.000'
#--------------------------------------------------------------------------
#       File for gain parameter 01
#--------------------------------------------------------------------------
file_g01 = open('surgery_cn25.rsn', 'r')
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
for key in sorted(G01.keys()):
    Data_g01 = np.append(Data_g01,[G01[key][0,:]], axis=0)
#mesh for this particular key  GNRA
Data_g01_gnra =  np.array([], dtype=np.int64)
Data_g01_gnra.shape = (-1, 7)
for node in range(NbrOfNodes):
    Data_g01_gnra = np.append(Data_g01_gnra,[G01[keygnra][node,:]], axis=0)
#mesh for this particular key  STENT
Data_g01_stent =  np.array([], dtype=np.int64)
Data_g01_stent.shape = (-1, 7)
for node in range(NbrOfNodes):
    Data_g01_stent = np.append(Data_g01_stent,[G01[keystent][node,:]], axis=0)
#mesh for this particular key  GNRB
Data_g01_gnrb =  np.array([], dtype=np.int64)
Data_g01_gnrb.shape = (-1, 7)
for node in range(NbrOfNodes):
    Data_g01_gnrb = np.append(Data_g01_gnrb,[G01[keygnrb][node,:]], axis=0)

Data_g01=Data_g01[np.argsort(Data_g01[:,0])]
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
    Data_g02_gnra = np.append(Data_g02_gnra,[G02[keygnra][node,:]], axis=0)
#mesh for this particular key  STENT
Data_g02_stent =  np.array([], dtype=np.int64)
Data_g02_stent.shape = (-1, 7)
for node in range(NbrOfNodes):
    Data_g02_stent = np.append(Data_g02_stent,[G02[keystent][node,:]], axis=0)
#mesh for this particular key  GNRB
Data_g02_gnrb =  np.array([], dtype=np.int64)
Data_g02_gnrb.shape = (-1, 7)
for node in range(NbrOfNodes):
    Data_g02_gnrb = np.append(Data_g02_gnrb,[G02[keygnrb][node,:]], axis=0)

Data_g02=Data_g02[np.argsort(Data_g02[:,0])]
#--------------------------------------------------------------------------
#       File for gain parameter 03
#--------------------------------------------------------------------------
file_g03 = open('surgery_cn75.rsn', 'r')
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
#every mesh along time
Data_g03 =  np.array([], dtype=np.int64)
Data_g03.shape = (-1, 7)
for key in sorted(G03.keys()):
    Data_g03 = np.append(Data_g03,[G03[key][0,:]], axis=0)
#mesh for this particular key  GNRA
Data_g03_gnra =  np.array([], dtype=np.int64)
Data_g03_gnra.shape = (-1, 7)
for node in range(NbrOfNodes):
    Data_g03_gnra = np.append(Data_g03_gnra,[G03[keygnra][node,:]], axis=0)
#mesh for this particular key  STENT
Data_g03_stent =  np.array([], dtype=np.int64)
Data_g03_stent.shape = (-1, 7)
for node in range(NbrOfNodes):
    Data_g03_stent = np.append(Data_g03_stent,[G03[keystent][node,:]], axis=0)
#mesh for this particular key  GNRB
Data_g03_gnrb =  np.array([], dtype=np.int64)
Data_g03_gnrb.shape = (-1, 7)
for node in range(NbrOfNodes):
    Data_g03_gnrb = np.append(Data_g03_gnrb,[G03[keygnrb][node,:]], axis=0)

Data_g03=Data_g03[np.argsort(Data_g03[:,0])]
#--------------------------------------------------------------------------

fig = plt.figure()
plt.rcParams.update({'font.size': 5})
plt.rc('text', usetex=False)

plt.subplot(4,3,1)
plt.plot(Data_g01[:,0],Data_g01[:,4]/1000.0,'b',label='$C_N$=25[MPa]',linewidth=1.0,markersize=10)
plt.plot(Data_g02[:,0],Data_g02[:,4]/1000.0,'r',label='$C_N$=50[MPa]',linewidth=1.0,markersize=10)
plt.plot(Data_g03[:,0],Data_g03[:,4]/1000.0,'g',label='$C_N$=75[MPa]',linewidth=1.0,markersize=10)
plt.text(0.5,0.05,r'Time [months]', {'color': 'k', 'fontsize':  6},
        ha='center',va='center',clip_on=False,transform=plt.gca().transAxes)
plt.text(0.05, 0.5, r'Axial Stress [kPa]',{'color': 'k', 'fontsize':  6,},
        ha='left',va='center',rotation=90,clip_on=False,transform=plt.gca().transAxes)
plt.text(0.95, 0.95, r'a',{'color': 'k', 'fontsize':  6,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='top',transform=plt.gca().transAxes)
plt.axis([0,180,0,150])

plt.subplot(4,3,2)
plt.plot(Data_g01[:,0],Data_g01[:,5]/1000.0,'b',label='$C_N$=25[MPa]',linewidth=1.0,markersize=10)
plt.plot(Data_g02[:,0],Data_g02[:,5]/1000.0,'r',label='$C_N$=50[MPa]',linewidth=1.0,markersize=10)
plt.plot(Data_g03[:,0],Data_g03[:,5]/1000.0,'g',label='$C_N$=75[MPa]',linewidth=1.0,markersize=10)
plt.text(0.5,0.05,r'Time [months]', {'color': 'k', 'fontsize':  6},
        ha='center',va='center',clip_on=False,transform=plt.gca().transAxes)
plt.text(0.05, 0.5, r'Circumferential Stress [kPa]',{'color': 'k', 'fontsize':  6,},
        ha='left',va='center',rotation=90,clip_on=False,transform=plt.gca().transAxes)
plt.text(0.95, 0.95, r'b',{'color': 'k', 'fontsize':  6,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='top',transform=plt.gca().transAxes)
plt.legend(loc='center right')
plt.axis([0,180,0,350])

plt.subplot(4,3,3)
plt.plot(Data_g01[:,0],Data_g01[:,3]*1000.0,'b',label='$C_N$=25[MPa]',linewidth=1.0,markersize=10)
plt.plot(Data_g02[:,0],Data_g02[:,3]*1000.0,'r',label='$C_N$=50[MPa]',linewidth=1.0,markersize=10)
plt.plot(Data_g03[:,0],Data_g03[:,3]*1000.0,'g',label='$C_N$=75[MPa]',linewidth=1.0,markersize=10)
plt.text(0.5,0.05,r'Time [months]', {'color': 'k', 'fontsize':  6},
        ha='center',va='center',clip_on=False,transform=plt.gca().transAxes)
plt.text(0.05, 0.5, r'Radius [mm]',{'color': 'k', 'fontsize':  6,},
        ha='left',va='center',rotation=90,clip_on=False,transform=plt.gca().transAxes)
plt.text(0.95, 0.95, r'c',{'color': 'k', 'fontsize':  6,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='top',transform=plt.gca().transAxes)
plt.axis([0,180,10,13])

plt.subplot(4,3,4)
plt.plot(Data_g01_gnra[:,2]*1000.0,Data_g01_gnra[:,4]/1000.0,'b',label='$C_N$=25[MPa]',linewidth=1.0,markersize=10)
plt.plot(Data_g02_gnra[:,2]*1000.0,Data_g02_gnra[:,4]/1000.0,'r',label='$C_N$=50[MPa]',linewidth=1.0,markersize=10)
plt.plot(Data_g03_gnra[:,2]*1000.0,Data_g03_gnra[:,4]/1000.0,'g',label='$C_N$=75[MPa]',linewidth=1.0,markersize=10)
plt.text(0.5,0.05,r'Axial position [mm]', {'color': 'k', 'fontsize':  6},
        ha='center',va='center',clip_on=False,transform=plt.gca().transAxes)
plt.text(0.05, 0.5, r'Axial Stress [kPa]',{'color': 'k', 'fontsize':  6,},
        ha='left',va='center',rotation=90,clip_on=False,transform=plt.gca().transAxes)
plt.text(0.95, 0.95, r'd',{'color': 'k', 'fontsize':  6,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='top',transform=plt.gca().transAxes)
plt.axis([0,100,0,150])

plt.subplot(4,3,5)
plt.plot(Data_g01_gnra[:,2]*1000.0,Data_g01_gnra[:,5]/1000.0,'b',label='$C_N$=25[MPa]',linewidth=1.0,markersize=10)
plt.plot(Data_g02_gnra[:,2]*1000.0,Data_g02_gnra[:,5]/1000.0,'r',label='$C_N$=50[MPa]',linewidth=1.0,markersize=10)
plt.plot(Data_g03_gnra[:,2]*1000.0,Data_g03_gnra[:,5]/1000.0,'g',label='$C_N$=75[MPa]',linewidth=1.0,markersize=10)
plt.text(0.5,0.05,r'Axial position [mm]', {'color': 'k', 'fontsize':  6},
        ha='center',va='center',clip_on=False,transform=plt.gca().transAxes)
plt.text(0.05, 0.5, r'Circumferential Stress [kPa]',{'color': 'k', 'fontsize':  6,},
        ha='left',va='center',rotation=90,clip_on=False,transform=plt.gca().transAxes)
plt.text(0.95, 0.95, r'e',{'color': 'k', 'fontsize':  6,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='top',transform=plt.gca().transAxes)
plt.axis([0,100,0,350])

plt.subplot(4,3,6)
plt.plot(Data_g01_gnra[:,2]*1000.0,Data_g01_gnra[:,3]*1000.0,'b',label='$C_N$=25[MPa]',linewidth=1.0,markersize=10)
plt.plot(Data_g02_gnra[:,2]*1000.0,Data_g02_gnra[:,3]*1000.0,'r',label='$C_N$=50[MPa]',linewidth=1.0,markersize=10)
plt.plot(Data_g03_gnra[:,2]*1000.0,Data_g03_gnra[:,3]*1000.0,'g',label='$C_N$=75[MPa]',linewidth=1.0,markersize=10)
plt.text(0.5,0.05,r'Axial position [mm]', {'color': 'k', 'fontsize':  6},
        ha='center',va='center',clip_on=False,transform=plt.gca().transAxes)
plt.text(0.05, 0.5, r'Radius [mm]',{'color': 'k', 'fontsize':  6,},
        ha='left',va='center',rotation=90,clip_on=False,transform=plt.gca().transAxes)
plt.text(0.95, 0.95, r'f',{'color': 'k', 'fontsize':  6,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='top',transform=plt.gca().transAxes)
plt.axis([0,100,10,13])

plt.subplot(4,3,7)
plt.plot(Data_g01_stent[:,2]*1000.0,Data_g01_stent[:,4]/1000.0,'b',label='$C_N$=25[MPa]',linewidth=1.0,markersize=10)
plt.plot(Data_g02_stent[:,2]*1000.0,Data_g02_stent[:,4]/1000.0,'r',label='$C_N$=50[MPa]',linewidth=1.0,markersize=10)
plt.plot(Data_g03_stent[:,2]*1000.0,Data_g03_stent[:,4]/1000.0,'g',label='$C_N$=75[MPa]',linewidth=1.0,markersize=10)
plt.text(0.5,0.05,r'Axial position [mm]', {'color': 'k', 'fontsize':  6},
        ha='center',va='center',clip_on=False,transform=plt.gca().transAxes)
plt.text(0.05, 0.5, r'Axial Stress [kPa]',{'color': 'k', 'fontsize':  6,},
        ha='left',va='center',rotation=90,clip_on=False,transform=plt.gca().transAxes)
plt.text(0.95, 0.95, r'g',{'color': 'k', 'fontsize':  6,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='top',transform=plt.gca().transAxes)
plt.axis([0,100,0,150])

plt.subplot(4,3,8)
plt.plot(Data_g01_stent[:,2]*1000.0,Data_g01_stent[:,5]/1000.0,'b',label='$C_N$=25[MPa]',linewidth=1.0,markersize=10)
plt.plot(Data_g02_stent[:,2]*1000.0,Data_g02_stent[:,5]/1000.0,'r',label='$C_N$=50[MPa]',linewidth=1.0,markersize=10)
plt.plot(Data_g03_stent[:,2]*1000.0,Data_g03_stent[:,5]/1000.0,'g',label='$C_N$=75[MPa]',linewidth=1.0,markersize=10)
plt.text(0.5,0.05,r'Axial position [mm]', {'color': 'k', 'fontsize':  6},
        ha='center',va='center',clip_on=False,transform=plt.gca().transAxes)
plt.text(0.05, 0.5, r'Circumferential Stress [kPa]',{'color': 'k', 'fontsize':  6,},
        ha='left',va='center',rotation=90,clip_on=False,transform=plt.gca().transAxes)
plt.text(0.95, 0.95, r'h',{'color': 'k', 'fontsize':  6,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='top',transform=plt.gca().transAxes)
plt.axis([0,100,0,350])

plt.subplot(4,3,9)
plt.plot(Data_g01_stent[:,2]*1000.0,Data_g01_stent[:,3]*1000.0,'b',label='$C_N$=25[MPa]',linewidth=1.0,markersize=10)
plt.plot(Data_g02_stent[:,2]*1000.0,Data_g02_stent[:,3]*1000.0,'r',label='$C_N$=50[MPa]',linewidth=1.0,markersize=10)
plt.plot(Data_g03_stent[:,2]*1000.0,Data_g03_stent[:,3]*1000.0,'g',label='$C_N$=75[MPa]',linewidth=1.0,markersize=10)
plt.text(0.5,0.05,r'Axial position [mm]', {'color': 'k', 'fontsize':  6},
        ha='center',va='center',clip_on=False,transform=plt.gca().transAxes)
plt.text(0.05, 0.5, r'Radius [mm]',{'color': 'k', 'fontsize':  6,},
        ha='left',va='center',rotation=90,clip_on=False,transform=plt.gca().transAxes)
plt.text(0.95, 0.95, r'i',{'color': 'k', 'fontsize':  6,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='top',transform=plt.gca().transAxes)
plt.axis([0,100,10,13])

plt.subplot(4,3,10)
plt.plot(Data_g01_gnrb[:,2]*1000.0,Data_g01_gnrb[:,4]/1000.0,'b',label='$C_N$=25[MPa]',linewidth=1.0,markersize=10)
plt.plot(Data_g02_gnrb[:,2]*1000.0,Data_g02_gnrb[:,4]/1000.0,'r',label='$C_N$=50[MPa]',linewidth=1.0,markersize=10)
plt.plot(Data_g03_gnrb[:,2]*1000.0,Data_g03_gnrb[:,4]/1000.0,'g',label='$C_N$=75[MPa]',linewidth=1.0,markersize=10)
plt.text(0.5,0.05,r'Axial position [mm]', {'color': 'k', 'fontsize':  6},
        ha='center',va='center',clip_on=False,transform=plt.gca().transAxes)
plt.text(0.05, 0.5, r'Axial Stress [kPa]',{'color': 'k', 'fontsize':  6,},
        ha='left',va='center',rotation=90,clip_on=False,transform=plt.gca().transAxes)
plt.text(0.95, 0.95, r'j',{'color': 'k', 'fontsize':  6,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='top',transform=plt.gca().transAxes)
plt.axis([0,100,0,150])

plt.subplot(4,3,11)
plt.plot(Data_g01_gnrb[:,2]*1000.0,Data_g01_gnrb[:,5]/1000.0,'b',label='$C_N$=25[MPa]',linewidth=1.0,markersize=10)
plt.plot(Data_g02_gnrb[:,2]*1000.0,Data_g02_gnrb[:,5]/1000.0,'r',label='$C_N$=50[MPa]',linewidth=1.0,markersize=10)
plt.plot(Data_g03_gnrb[:,2]*1000.0,Data_g03_gnrb[:,5]/1000.0,'g',label='$C_N$=75[MPa]',linewidth=1.0,markersize=10)
plt.text(0.5,0.05,r'Axial position [mm]', {'color': 'k', 'fontsize':  6},
        ha='center',va='center',clip_on=False,transform=plt.gca().transAxes)
plt.text(0.05, 0.5, r'Circumferential Stress [kPa]',{'color': 'k', 'fontsize':  6,},
        ha='left',va='center',rotation=90,clip_on=False,transform=plt.gca().transAxes)
plt.text(0.95, 0.95, r'k',{'color': 'k', 'fontsize':  6,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='top',transform=plt.gca().transAxes)
plt.axis([0,100,0,350])

plt.subplot(4,3,12)
plt.plot(Data_g01_gnrb[:,2]*1000.0,Data_g01_gnrb[:,3]*1000.0,'b',label='$C_N$=25[MPa]',linewidth=1.0,markersize=10)
plt.plot(Data_g02_gnrb[:,2]*1000.0,Data_g02_gnrb[:,3]*1000.0,'r',label='$C_N$=50[MPa]',linewidth=1.0,markersize=10)
plt.plot(Data_g03_gnrb[:,2]*1000.0,Data_g03_gnrb[:,3]*1000.0,'g',label='$C_N$=75[MPa]',linewidth=1.0,markersize=10)
plt.text(0.5,0.05,r'Axial position [mm]', {'color': 'k', 'fontsize':  6},
        ha='center',va='center',clip_on=False,transform=plt.gca().transAxes)
plt.text(0.05, 0.5, r'Radius [mm]',{'color': 'k', 'fontsize':  6,},
        ha='left',va='center',rotation=90,clip_on=False,transform=plt.gca().transAxes)
plt.text(0.95, 0.95, r'l',{'color': 'k', 'fontsize':  6,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='top',transform=plt.gca().transAxes)
plt.axis([0,100,10,13])

fig.tight_layout()
plt.show

FIGURENAME = 'normal.eps'
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

radii = (Data_g01[-1,3]*1000.0, Data_g02[-1,3]*1000.0, Data_g03[-1,3]*1000.0)

fig, ax = plt.subplots()
plt.rcParams.update({'font.size': 20})

index = np.arange(3)
bar_width = 0.45

opacity = 0.4
error_config = {'ecolor': '0.3'}

rects1 = ax.bar(index, radii, bar_width,
                alpha=opacity, color='b',
                error_kw=error_config, label='Normal')

ax.set_xlabel('Normal Coefficient')
ax.set_ylabel('Radius [mm]')
ax.set_xticks(index + bar_width / 2)
ax.set_xticklabels(('25[MPa]', '50[MPa]', '75[MPa]'))
plt.text(0.95, 0.95, r'd',{'color': 'k', 'fontsize': 20,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='top',transform=plt.gca().transAxes)
plt.axis([-0.25,2.7,0,20])

fig.tight_layout()
plt.show

FIGURENAME = 'sensitivity_normal.eps'
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
