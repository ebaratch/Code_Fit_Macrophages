% Launches model simulations and saves temporal plots of model VS data
% dossierGlob = string = Global folder to store the results
% modelS = cell that contains all the models to run

run loadData.m

dossierGlob='simulationResults';
mkdir(dossierGlob);

run set_modelS.m

modelS={Assumption322};


DataSet=DataSimu;
CondIni=DataSet(1,:)
time=timeDataSimu;

L=length(modelS);
for l=1:L
    display(modelS{l}.modelName)
    dossier=[dossierGlob '/DataSimu/' modelS{l}.folder];
    param=modelS{l}.param0
    [paramSimu,resnorms,RMSEs,R2s,Res,p]=setSimulation(CondIni,DataSet,paramFixed,param,time,modelS{l},SigmaSimu,dossier);
end

save([dossierGlob '/Simu']);