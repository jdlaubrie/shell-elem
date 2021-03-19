# -*- coding: utf-8 -*-
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

NbrOfNodes = 35
gain = [0.01,0.02,0.03,0.04]
#--------------------------------------------------------------------------
#       File for oversizing 5%
#--------------------------------------------------------------------------
thefileso05 = ['surgery_g01o05.rsn','surgery_g02o05.rsn','surgery_g03o05.rsn','surgery_g04o05.rsn']
mesh0_data05 = {}
mesh1_data05 = {}
mesh2_data05 = {}
for file in thefileso05:
    myfile = open(file, 'r')
    file_aux = myfile.readlines()
    file_array = pd.Series(file_aux)
    file_array = file_array.replace(r'\n','', regex=True)
    file_array = file_array.replace(r'\r\n','', regex=True)
    file_array = file_array.replace(r'\r','', regex=True)
    index_Time = file_array[file_array.str.contains('TIME', case=False, regex=False)]
    #--------------------
    idx0 = index_Time.index[80]                               #title step index
    idx1 = index_Time.index[81]
    idx2 = index_Time.index[-1]
    index0_start = idx0 + 1                                    #firs node
    index1_start = idx1 + 1
    index2_start = idx2 + 1
    index0_end = index0_start + NbrOfNodes                     #last node
    index1_end = index1_start + NbrOfNodes
    index2_end = index2_start + NbrOfNodes
    tmp0_df = file_array[index0_start:index0_end].str.strip()  #mesh data as string
    tmp1_df = file_array[index1_start:index1_end].str.strip()
    tmp2_df = file_array[index2_start:index2_end].str.strip()
    tmp0_df = tmp0_df.str.split('  ',expand=True)              #manage mesh data
    tmp1_df = tmp1_df.str.split('  ',expand=True)
    tmp2_df = tmp2_df.str.split('  ',expand=True)
    mesh0_data05[file] = np.array(tmp0_df.values, dtype=float)   #define the values as float
    mesh1_data05[file] = np.array(tmp1_df.values, dtype=float)
    mesh2_data05[file] = np.array(tmp2_df.values, dtype=float)

Data0_o05 = np.array([], dtype=np.int64)
Data0_o05.shape = (-1, 7)
for key in sorted(mesh0_data05.keys()):
    Data0_o05 = np.append(Data0_o05,[mesh0_data05[key][0,:]], axis=0)
Data1_o05 = np.array([], dtype=np.int64)
Data1_o05.shape = (-1, 7)
for key in sorted(mesh1_data05.keys()):
    Data1_o05 = np.append(Data1_o05,[mesh1_data05[key][0,:]], axis=0)
Data2_o05 = np.array([], dtype=np.int64)
Data2_o05.shape = (-1, 7)
for key in sorted(mesh2_data05.keys()):
    Data2_o05 = np.append(Data2_o05,[mesh2_data05[key][0,:]], axis=0)
#--------------------------------------------------------------------------
#       File for oversizing 10%
#--------------------------------------------------------------------------
thefileso10 = ['surgery_g01o10.rsn','surgery_g02o10.rsn','surgery_g03o10.rsn','surgery_g04o10.rsn']
mesh0_data10 = {}
mesh1_data10 = {}
mesh2_data10 = {}
for file in thefileso10:
    myfile = open(file, 'r')
    file_aux = myfile.readlines()
    file_array = pd.Series(file_aux)
    file_array = file_array.replace(r'\n','', regex=True)
    file_array = file_array.replace(r'\r\n','', regex=True)
    file_array = file_array.replace(r'\r','', regex=True)
    index_Time = file_array[file_array.str.contains('TIME', case=False, regex=False)]
    #--------------------
    idx0 = index_Time.index[80]                               #title step index
    idx1 = index_Time.index[81]
    idx2 = index_Time.index[-1]
    index0_start = idx0 + 1                                    #firs node
    index1_start = idx1 + 1
    index2_start = idx2 + 1
    index0_end = index0_start + NbrOfNodes                     #last node
    index1_end = index1_start + NbrOfNodes
    index2_end = index2_start + NbrOfNodes
    tmp0_df = file_array[index0_start:index0_end].str.strip()  #mesh data as string
    tmp1_df = file_array[index1_start:index1_end].str.strip()
    tmp2_df = file_array[index2_start:index2_end].str.strip()
    tmp0_df = tmp0_df.str.split('  ',expand=True)              #manage mesh data
    tmp1_df = tmp1_df.str.split('  ',expand=True)
    tmp2_df = tmp2_df.str.split('  ',expand=True)
    mesh0_data10[file] = np.array(tmp0_df.values, dtype=float)   #define the values as float
    mesh1_data10[file] = np.array(tmp1_df.values, dtype=float)
    mesh2_data10[file] = np.array(tmp2_df.values, dtype=float)

Data0_o10 = np.array([], dtype=np.int64)
Data0_o10.shape = (-1, 7)
for key in sorted(mesh0_data10.keys()):
    Data0_o10 = np.append(Data0_o10,[mesh0_data10[key][0,:]], axis=0)
Data1_o10 = np.array([], dtype=np.int64)
Data1_o10.shape = (-1, 7)
for key in sorted(mesh1_data10.keys()):
    Data1_o10 = np.append(Data1_o10,[mesh1_data10[key][0,:]], axis=0)
Data2_o10 = np.array([], dtype=np.int64)
Data2_o10.shape = (-1, 7)
for key in sorted(mesh2_data10.keys()):
    Data2_o10 = np.append(Data2_o10,[mesh2_data10[key][0,:]], axis=0)
#--------------------------------------------------------------------------
#       File for oversizing 15%
#--------------------------------------------------------------------------
thefileso15 = ['surgery_g01o15.rsn','surgery_g02o15.rsn','surgery_g03o15.rsn','surgery_g04o15.rsn']
mesh0_data15 = {}
mesh1_data15 = {}
mesh2_data15 = {}
for file in thefileso15:
    myfile = open(file, 'r')
    file_aux = myfile.readlines()
    file_array = pd.Series(file_aux)
    file_array = file_array.replace(r'\n','', regex=True)
    file_array = file_array.replace(r'\r\n','', regex=True)
    file_array = file_array.replace(r'\r','', regex=True)
    index_Time = file_array[file_array.str.contains('TIME', case=False, regex=False)]
    #--------------------
    idx0 = index_Time.index[80]                               #title step index
    idx1 = index_Time.index[81]
    idx2 = index_Time.index[-1]
    index0_start = idx0 + 1                                    #firs node
    index1_start = idx1 + 1
    index2_start = idx2 + 1
    index0_end = index0_start + NbrOfNodes                     #last node
    index1_end = index1_start + NbrOfNodes
    index2_end = index2_start + NbrOfNodes
    tmp0_df = file_array[index0_start:index0_end].str.strip()  #mesh data as string
    tmp1_df = file_array[index1_start:index1_end].str.strip()
    tmp2_df = file_array[index2_start:index2_end].str.strip()
    tmp0_df = tmp0_df.str.split('  ',expand=True)              #manage mesh data
    tmp1_df = tmp1_df.str.split('  ',expand=True)
    tmp2_df = tmp2_df.str.split('  ',expand=True)
    mesh0_data15[file] = np.array(tmp0_df.values, dtype=float)   #define the values as float
    mesh1_data15[file] = np.array(tmp1_df.values, dtype=float)
    mesh2_data15[file] = np.array(tmp2_df.values, dtype=float)

Data0_o15 = np.array([], dtype=np.int64)
Data0_o15.shape = (-1, 7)
for key in sorted(mesh0_data15.keys()):
    Data0_o15 = np.append(Data0_o15,[mesh0_data15[key][0,:]], axis=0)
Data1_o15 = np.array([], dtype=np.int64)
Data1_o15.shape = (-1, 7)
for key in sorted(mesh1_data15.keys()):
    Data1_o15 = np.append(Data1_o15,[mesh1_data15[key][0,:]], axis=0)
Data2_o15 = np.array([], dtype=np.int64)
Data2_o15.shape = (-1, 7)
for key in sorted(mesh2_data15.keys()):
    Data2_o15 = np.append(Data2_o15,[mesh2_data15[key][0,:]], axis=0)
#--------------------------------------------------------------------------
#       File for oversizing 5%
#--------------------------------------------------------------------------
thefileso20 = ['surgery_g01o20.rsn','surgery_g02o20.rsn','surgery_g03o20.rsn','surgery_g04o20.rsn']
mesh0_data20 = {}
mesh1_data20 = {}
mesh2_data20 = {}
for file in thefileso20:
    myfile = open(file, 'r')
    file_aux = myfile.readlines()
    file_array = pd.Series(file_aux)
    file_array = file_array.replace(r'\n','', regex=True)
    file_array = file_array.replace(r'\r\n','', regex=True)
    file_array = file_array.replace(r'\r','', regex=True)
    index_Time = file_array[file_array.str.contains('TIME', case=False, regex=False)]
    #--------------------
    idx0 = index_Time.index[80]                               #title step index
    idx1 = index_Time.index[81]
    idx2 = index_Time.index[-1]
    index0_start = idx0 + 1                                    #firs node
    index1_start = idx1 + 1
    index2_start = idx2 + 1
    index0_end = index0_start + NbrOfNodes                     #last node
    index1_end = index1_start + NbrOfNodes
    index2_end = index2_start + NbrOfNodes
    tmp0_df = file_array[index0_start:index0_end].str.strip()  #mesh data as string
    tmp1_df = file_array[index1_start:index1_end].str.strip()
    tmp2_df = file_array[index2_start:index2_end].str.strip()
    tmp0_df = tmp0_df.str.split('  ',expand=True)              #manage mesh data
    tmp1_df = tmp1_df.str.split('  ',expand=True)
    tmp2_df = tmp2_df.str.split('  ',expand=True)
    mesh0_data20[file] = np.array(tmp0_df.values, dtype=float)   #define the values as float
    mesh1_data20[file] = np.array(tmp1_df.values, dtype=float)
    mesh2_data20[file] = np.array(tmp2_df.values, dtype=float)

Data0_o20 = np.array([], dtype=np.int64)
Data0_o20.shape = (-1, 7)
for key in sorted(mesh0_data20.keys()):
    Data0_o20 = np.append(Data0_o20,[mesh0_data20[key][0,:]], axis=0)
Data1_o20 = np.array([], dtype=np.int64)
Data1_o20.shape = (-1, 7)
for key in sorted(mesh1_data20.keys()):
    Data1_o20 = np.append(Data1_o20,[mesh1_data20[key][0,:]], axis=0)
Data2_o20 = np.array([], dtype=np.int64)
Data2_o20.shape = (-1, 7)
for key in sorted(mesh2_data20.keys()):
    Data2_o20 = np.append(Data2_o20,[mesh2_data20[key][0,:]], axis=0)
#--------------------------------------------------------------------------
fig = plt.figure()
plt.rcParams.update({'font.size': 6})
plt.rc('text', usetex=False)

plt.subplot(3,3,1)
plt.plot(gain,Data0_o05[:,4]/1000.0,'ro',label='Oversizing=5%')
plt.plot(gain,Data0_o10[:,4]/1000.0,'bo',label='Oversizing=10%')
plt.plot(gain,Data0_o15[:,4]/1000.0,'mo',label='Oversizing=15%')
plt.plot(gain,Data0_o20[:,4]/1000.0,'yo',label='Oversizing=20%')
plt.text(0.5,0.05,r'Gain parameter', {'color': 'k', 'fontsize': 8},
        ha='center',va='center',clip_on=False,transform=plt.gca().transAxes)
plt.text(0.05, 0.5, r'Axial Stress [kPa]',{'color': 'k', 'fontsize': 8,},
        ha='left',va='center',rotation=90,clip_on=False,transform=plt.gca().transAxes)
plt.text(0.95, 0.05, r'a',{'color': 'k', 'fontsize': 8,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='bottom',transform=plt.gca().transAxes)
plt.legend(loc='upper right')
plt.axis([0,0.05,0,200])

plt.subplot(3,3,2)
plt.plot(gain,Data0_o05[:,5]/1000.0,'ro',label='Oversizing=5%')
plt.plot(gain,Data0_o10[:,5]/1000.0,'bo',label='Oversizing=10%')
plt.plot(gain,Data0_o15[:,5]/1000.0,'mo',label='Oversizing=15%')
plt.plot(gain,Data0_o20[:,5]/1000.0,'yo',label='Oversizing=20%')
plt.text(0.5,0.05,r'Gain parameter', {'color': 'k', 'fontsize': 8},
        ha='center',va='center',clip_on=False,transform=plt.gca().transAxes)
plt.text(0.05, 0.5, r'Circumferential Stress [kPa]',{'color': 'k', 'fontsize': 8,},
        ha='left',va='center',rotation=90,clip_on=False,transform=plt.gca().transAxes)
plt.text(0.95, 0.05, r'b',{'color': 'k', 'fontsize': 8,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='bottom',transform=plt.gca().transAxes)
plt.axis([0,0.05,0,350])

plt.subplot(3,3,3)
plt.plot(gain,Data0_o05[:,3]*1000.0,'ro',label='Oversizing=5%')
plt.plot(gain,Data0_o10[:,3]*1000.0,'bo',label='Oversizing=10%')
plt.plot(gain,Data0_o15[:,3]*1000.0,'mo',label='Oversizing=15%')
plt.plot(gain,Data0_o20[:,3]*1000.0,'yo',label='Oversizing=20%')
plt.text(0.5,0.05,r'Gain parameter', {'color': 'k', 'fontsize': 8},
        ha='center',va='center',clip_on=False,transform=plt.gca().transAxes)
plt.text(0.05, 0.5, r'Radius [mm]',{'color': 'k', 'fontsize': 8,},
        ha='left',va='center',rotation=90,clip_on=False,transform=plt.gca().transAxes)
plt.text(0.95, 0.05, r'c',{'color': 'k', 'fontsize': 8,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='bottom',transform=plt.gca().transAxes)
plt.axis([0,0.05,10,13.5])

plt.subplot(3,3,4)
plt.plot(gain,Data1_o05[:,4]/1000.0,'ro',label='Oversizing=5%')
plt.plot(gain,Data1_o10[:,4]/1000.0,'bo',label='Oversizing=10%')
plt.plot(gain,Data1_o15[:,4]/1000.0,'mo',label='Oversizing=15%')
plt.plot(gain,Data1_o20[:,4]/1000.0,'yo',label='Oversizing=20%')
plt.text(0.5,0.05,r'Gain parameter', {'color': 'k', 'fontsize': 8},
        ha='center',va='center',clip_on=False,transform=plt.gca().transAxes)
plt.text(0.05, 0.5, r'Axial Stress [kPa]',{'color': 'k', 'fontsize': 8,},
        ha='left',va='center',rotation=90,clip_on=False,transform=plt.gca().transAxes)
plt.text(0.95, 0.05, r'd',{'color': 'k', 'fontsize': 8,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='bottom',transform=plt.gca().transAxes)
plt.axis([0,0.05,0,200])

plt.subplot(3,3,5)
plt.plot(gain,Data1_o05[:,5]/1000.0,'ro',label='Oversizing=5%')
plt.plot(gain,Data1_o10[:,5]/1000.0,'bo',label='Oversizing=10%')
plt.plot(gain,Data1_o15[:,5]/1000.0,'mo',label='Oversizing=15%')
plt.plot(gain,Data1_o20[:,5]/1000.0,'yo',label='Oversizing=20%')
plt.text(0.5,0.05,r'Gain parameter', {'color': 'k', 'fontsize': 8},
        ha='center',va='center',clip_on=False,transform=plt.gca().transAxes)
plt.text(0.05, 0.5, r'Circumferential Stress [kPa]',{'color': 'k', 'fontsize': 8,},
        ha='left',va='center',rotation=90,clip_on=False,transform=plt.gca().transAxes)
plt.text(0.95, 0.05, r'e',{'color': 'k', 'fontsize': 8,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='bottom',transform=plt.gca().transAxes)
plt.axis([0,0.05,0,350])

plt.subplot(3,3,6)
plt.plot(gain,Data1_o05[:,3]*1000.0,'ro',label='Oversizing=5%')
plt.plot(gain,Data1_o10[:,3]*1000.0,'bo',label='Oversizing=10%')
plt.plot(gain,Data1_o15[:,3]*1000.0,'mo',label='Oversizing=15%')
plt.plot(gain,Data1_o20[:,3]*1000.0,'yo',label='Oversizing=20%')
plt.text(0.5,0.05,r'Gain parameter', {'color': 'k', 'fontsize': 8},
        ha='center',va='center',clip_on=False,transform=plt.gca().transAxes)
plt.text(0.05, 0.5, r'Radius [mm]',{'color': 'k', 'fontsize': 8,},
        ha='left',va='center',rotation=90,clip_on=False,transform=plt.gca().transAxes)
plt.text(0.95, 0.05, r'f',{'color': 'k', 'fontsize': 8,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='bottom',transform=plt.gca().transAxes)
plt.axis([0,0.05,10,13.5])

plt.subplot(3,3,7)
plt.plot(gain,Data2_o05[:,4]/1000.0,'ro',label='Oversizing=5%')
plt.plot(gain,Data2_o10[:,4]/1000.0,'bo',label='Oversizing=10%')
plt.plot(gain,Data2_o15[:,4]/1000.0,'mo',label='Oversizing=15%')
plt.plot(gain,Data2_o20[:,4]/1000.0,'yo',label='Oversizing=20%')
plt.text(0.5,0.05,r'Gain parameter', {'color': 'k', 'fontsize': 8},
        ha='center',va='center',clip_on=False,transform=plt.gca().transAxes)
plt.text(0.05, 0.5, r'Axial Stress [kPa]',{'color': 'k', 'fontsize': 8,},
        ha='left',va='center',rotation=90,clip_on=False,transform=plt.gca().transAxes)
plt.text(0.95, 0.05, r'g',{'color': 'k', 'fontsize': 8,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='bottom',transform=plt.gca().transAxes)
plt.axis([0,0.05,0,200])

plt.subplot(3,3,8)
plt.plot(gain,Data2_o05[:,5]/1000.0,'ro',label='Oversizing=5%')
plt.plot(gain,Data2_o10[:,5]/1000.0,'bo',label='Oversizing=10%')
plt.plot(gain,Data2_o15[:,5]/1000.0,'mo',label='Oversizing=15%')
plt.plot(gain,Data2_o20[:,5]/1000.0,'yo',label='Oversizing=20%')
plt.text(0.5,0.05,r'Gain parameter', {'color': 'k', 'fontsize': 8},
        ha='center',va='center',clip_on=False,transform=plt.gca().transAxes)
plt.text(0.05, 0.5, r'Circumferential Stress [kPa]',{'color': 'k', 'fontsize': 8,},
        ha='left',va='center',rotation=90,clip_on=False,transform=plt.gca().transAxes)
plt.text(0.95, 0.05, r'h',{'color': 'k', 'fontsize': 8,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='bottom',transform=plt.gca().transAxes)
plt.axis([0,0.05,0,350])

plt.subplot(3,3,9)
plt.plot(gain,Data2_o05[:,3]*1000.0,'ro',label='Oversizing=5%')
plt.plot(gain,Data2_o10[:,3]*1000.0,'bo',label='Oversizing=10%')
plt.plot(gain,Data2_o15[:,3]*1000.0,'mo',label='Oversizing=15%')
plt.plot(gain,Data2_o20[:,3]*1000.0,'yo',label='Oversizing=20%')
plt.text(0.5,0.05,r'Gain parameter', {'color': 'k', 'fontsize': 8},
        ha='center',va='center',clip_on=False,transform=plt.gca().transAxes)
plt.text(0.05, 0.5, r'Radius [mm]',{'color': 'k', 'fontsize': 8,},
        ha='left',va='center',rotation=90,clip_on=False,transform=plt.gca().transAxes)
plt.text(0.95, 0.05, r'i',{'color': 'k', 'fontsize': 8,
    'bbox': dict(boxstyle="round", fc="w", ec="k", pad=0.2)},
    ha='right',va='bottom',transform=plt.gca().transAxes)
plt.axis([0,0.05,10,13.5])

fig.tight_layout()
plt.show

FIGURENAME = 'gain_chart_o.eps'
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
