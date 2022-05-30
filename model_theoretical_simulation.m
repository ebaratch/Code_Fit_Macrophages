% Launches model simulations and saves temporal plots
% dossierGlob = string = Global folder to store the results
% modelS = cell that contains all the models to run

run loadData.m

dossierGlob='simulationResults'; 
mkdir(dossierGlob);
dataNameS={'DataSimuTh'};
SigmaNameS={'SigmaSimuTh'};
ST=length(dataNameS);

                                                 
SigmaName=SigmaNameS{1}
errorModel.vectors=evalin('base',SigmaName)

run set_modelS.m

modelS={Assumption322};
modelSTreat={Assumption322Treatment};

for st=1:ST
    DataName=dataNameS{st};
    SigmaName=SigmaNameS{st};
    DataSet=evalin('base',DataName);
    CondIni=DataSet(1,:)
    errorModel.vectors=evalin('base',SigmaName)
    time=evalin('base',['time' DataName]);
                                                 
    L=length(modelS);
    for l=1:L
        display(modelS{l}.modelName)
        dossier=[dossierGlob '/' DataName '/' modelS{l}.folder];
        param=modelS{l}.param0
        setSimulationTh(CondIni,DataSet,paramFixed,param,time,modelS{l},modelSTreat{l},errorModel,dossier);
    end
end
save([dossierGlob '/Simu']);