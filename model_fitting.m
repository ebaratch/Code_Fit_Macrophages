% Launches model calibration, calling fitting function 
% dossierGlob = string = Global folder to store the results
% modelS = cell that contains all the models to run


run loadData.m
dossierGlob='model_fitting';
mkdir(dossierGlob);
run set_modelS.m
modelS={Assumption323};



DataSet=DataFit;
CondIni=DataSet(1,:);
time=timeDataFit;
L=length(modelS);


for l=1:L
    display(modelS{l}.modelName);
    dossier=[dossierGlob '/DataFit/' modelS{l}.folder];
    [param,resnorms,RMSEs,R2s,Res,p,exitflags]=setFitting(CondIni,DataSet,paramFixed,time,modelS{l},SigmaFit,dossier);
    file = fopen('params.txt','w');
    nbytes = fprintf(file,'% d',param);
    fclose(file);
end

save([dossierGlob '/Fit']);