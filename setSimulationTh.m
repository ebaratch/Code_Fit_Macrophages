
function setSimulationTh(CondIni,DataSet,fixedParam,paramSimu,time,modelStruct,modelStruct2,errorModel,dossier)
% Run simulation of models and save temporal plots in folder dossier
% modelStuct is a structure containing relevant elements for the model's
% run
model=modelStruct.model;
model2=modelStruct2.model;


line=4.5;
marker=15;
font=20;
fontaxes=18;
format1='-depsc';
format2='-dpng';
mkdir(dossier);
delete([dossier '/*.eps']);

timeLoc=time;    
T=timeLoc(end);
temps=0:0.1:T



Simu=model(paramSimu,temps);
Simu2=model2(paramSimu,temps);
VariableName=modelStruct.VariablesNonFit;
VariableNameUnit=modelStruct.VariablesNonFitUnits;
Colors=modelStruct.ColorsNonFit;



for i=1:size(Simu,2)
figure(i)
clf
plot(temps,Simu(:,i),'Color',Colors{i},'Linewidth',line)
hold on
plot(temps,Simu2(:,i),'--','Color',Colors{i},'Linewidth',line)
hold off
xlabel('Days','Fontsize',font)
ylabel([VariableNameUnit{i}],'Fontsize',font)
set(gca,'Fontsize',fontaxes)
print(format1,[dossier '/' num2str(i)])
print(format2,[dossier '/' num2str(i)])
end



end