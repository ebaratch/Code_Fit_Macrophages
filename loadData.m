clear all
global paramFixed

%Size of the injury
WoundVol=10*pi*0.6*0.6/4;
OBini=100*(7.80396E-08+1.26064E-07+6.60335E-08+2.10107E-07+6.60335E-08)*WoundVol*1000000000/5;
OCini=100*(3.42174E-07+4.26217E-07+2.46125E-07+3.30168E-07+2.10107E-07)*WoundVol*1000000000/5;
deltaOC=0.53;
BoneIni=WoundVol*(0.1204+0.113+0.1139+0.1403+0.1366)/5;
deltaM=0.1;
deltaMo=0.45;
MonoIni=WoundVol*(3.33+2.4+2.74+2.87)/(4*100*5.5753e-06);
MacIni=WoundVol*(5.33+4.43+6.49+6)/(4*100*5.5753e-06);



paramFixed=zeros(9,1);
paramFixed(1)=BoneIni;
paramFixed(2)=OBini;
paramFixed(3)=OCini;
paramFixed(4)=deltaOC;
paramFixed(5)=deltaM;
paramFixed(6)=deltaMo;
paramFixed(7)=MonoIni;
paramFixed(8)=MacIni;
paramFixed(9)=WoundVol;




%%%%%%%%%%%%%%%%%%%%%%%%%%% Data Loading %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Control 2
% time=xlsread('DataMacr.xlsx',7,'A1:F1');
Mo1MatTh=xlsread('DataMacr.xlsx',1,'A2:F7');
Mo1MatTh=Mo1MatTh*WoundVol/(100*5.5753e-06);
M1MatTh=xlsread('DataMacr.xlsx',2,'A2:F6');
M1MatTh=M1MatTh*WoundVol/(100*5.5753e-06);
M2MatTh=xlsread('DataMacr.xlsx',3,'A2:F7');
M2MatTh=M2MatTh*WoundVol/(100*5.5753e-06);
BoneMatTh=xlsread('DataMacr.xlsx',4,'A2:F6');
BoneMatTh=BoneMatTh*WoundVol;
MonoMatTh=xlsread('DataMacr.xlsx',5,'A2:F5');
MonoMatTh=MonoMatTh*WoundVol/(100*5.5753e-06);
MacMatTh=xlsread('DataMacr.xlsx',6,'A2:F5');
MacMatTh=MacMatTh*WoundVol/(100*5.5753e-06);
OBMatTh=xlsread('DataMacr.xlsx',7,'A2:F6');
OBMatTh=OBMatTh*WoundVol*1000000000;
OCMatTh=xlsread('DataMacr.xlsx',8,'A2:F6');
OCMatTh=OCMatTh*WoundVol*1000000000;


time=xlsread('DataMacr.xlsx',7,'A1:E1');
Mo1Mat=xlsread('DataMacr.xlsx',1,'A2:E7');
Mo1Mat=Mo1Mat*WoundVol/(100*5.5753e-06);
M1Mat=xlsread('DataMacr.xlsx',2,'A2:E6');
M1Mat=M1Mat*WoundVol/(100*5.5753e-06);
M2Mat=xlsread('DataMacr.xlsx',3,'A2:E7');
M2Mat=M2Mat*WoundVol/(100*5.5753e-06);
BoneMat=xlsread('DataMacr.xlsx',4,'A2:E6');
BoneMat=BoneMat*WoundVol;
MonoMat=xlsread('DataMacr.xlsx',5,'A2:E5');
MonoMat=MonoMat*WoundVol/(100*5.5753e-06);
MacMat=xlsread('DataMacr.xlsx',6,'A2:E5');
MacMat=MacMat*WoundVol/(100*5.5753e-06);
OBMat=xlsread('DataMacr.xlsx',7,'A2:E6');
OBMat=OBMat*WoundVol*1000000000;
OCMat=xlsread('DataMacr.xlsx',8,'A2:E6');
OCMat=OCMat*WoundVol*1000000000;


% time=xlsread('DataMacrCondIni.xlsx',7,'A1:F1');
% Mo1Mat=xlsread('DataMacrCondIni.xlsx',1,'A2:F7');
% Mo1Mat=Mo1Mat*WoundVol/(100*5.5753e-06);
% M1Mat=xlsread('DataMacrCondIni.xlsx',2,'A2:F6');
% M1Mat=M1Mat*WoundVol/(100*5.5753e-06);
% M2Mat=xlsread('DataMacrCondIni.xlsx',3,'A2:F7');
% M2Mat=M2Mat*WoundVol/(100*5.5753e-06);
% BoneMat=xlsread('DataMacrCondIni.xlsx',4,'A2:F6');
% BoneMat=BoneMat*WoundVol;
% MonoMat=xlsread('DataMacrCondIni.xlsx',5,'A2:F5');
% MonoMat=MonoMat*WoundVol/(100*5.5753e-06);
% MacMat=xlsread('DataMacrCondIni.xlsx',6,'A2:F5');
% MacMat=MacMat*WoundVol/(100*5.5753e-06);
% OBMat=xlsread('DataMacrCondIni.xlsx',7,'A2:F6');
% %OBMat=Mo1Mat*VTotal/100;
% OBMat=OBMat*WoundVol*1000000000;
% OCMat=xlsread('DataMacrCondIni.xlsx',8,'A2:F6');
% OCMat=OCMat*WoundVol*1000000000;


DataSim=cell(8,1);

DataSim{1}=100*OBMat;
DataSim{2}=100*OCMat;
DataSim{3}=BoneMat;
DataSim{4}=MonoMat;
DataSim{5}=MacMat;
DataSim{6}=Mo1Mat;
DataSim{7}=M1Mat;
DataSim{8}=M2Mat;



DataF=cell(8,1);

DataF{1}=100*OBMat;
DataF{2}=100*OCMat;
DataF{3}=BoneMat;
DataF{4}=MonoMat;
DataF{5}=MacMat;
DataF{6}=Mo1Mat;
DataF{7}=M1Mat;
DataF{8}=M2Mat;



DataSimTh=cell(8,1);

DataSimTh{1}=100*OBMatTh;
DataSimTh{2}=100*OCMatTh;
DataSimTh{3}=BoneMatTh;
DataSimTh{4}=MonoMatTh;
DataSimTh{5}=MacMatTh;
DataSimTh{6}=Mo1MatTh;
DataSimTh{7}=M1MatTh;
DataSimTh{8}=M2MatTh;

timeTh=[1;2;3;7;14]


indivS=[]; % indicate here the indices of animals for which data points will be removed
timePointS={ % Indicate here, for each index of indivSLung, the time points to remove
            };
[timeDataSimu,DataSimu,SigmaSimu,AverageData]=formatting_data(time,DataSim);
[timeDataSimuTh,DataSimuTh,SigmaSimuTh,AverageDataTh]=formatting_data(timeTh,DataSimTh);
WoundVect=[WoundVol;WoundVol;WoundVol;WoundVol;WoundVol];
WoundSigmas=[0;0;0;0;0];


[timeDataFit,DataFit,SigmaFit,AverageData]=formatting_data(time,DataF)