
function [param,resnorms,RMSEs,R2s,Res,p]=...
    setSimulation(CondIni,DataSet,fixedParam,paramSimu,time,modelStruct,sigma,dossier)
% Run simulation of model and save temporal plots of simulations vs data in folder dossier
% modelStuct is a structure containing relevant elements for the model's
% run


model=modelStruct.model;

line=4.5;
marker=15;
font=20;
fontaxes=18;
format1='-depsc';
format2='-dpng';
mkdir(dossier);
delete([dossier '/*.eps']);
N=size(DataSet,2)
m=round(sqrt(N));
p=length(paramSimu);
Res=cell(1,N);
RMSEs=zeros(1,N);
R2s=zeros(1,N);
resnorms=zeros(1,N);
param=paramSimu


Data=DataSet;
timeLoc=time;
n=size(Data,1);
w=1./sigma

Simuloc=model(paramSimu,timeLoc);

for i=1:N
   DataMoy=1/n*sum(Data(:,i));
   SStot=sum((w(:,i).*(Data(:,i)-DataMoy)).^2);
   Res(i)={w(:,i).*(Data(:,i)-Simuloc(:,i))};
   RMSEs(i)=sqrt(1/(size(Data,1)-p)*(sum(Res{i}.^2)));
   resnorms(i)=sum(Res{i}.^2);
   R2s(i)=1-sum((w(:,i).*(Data(:,i)-Simuloc(:,i))).^2)/SStot;
end

T=timeLoc(end);
temps=0:0.1:T


Simu=model(paramSimu,temps);
VariableName=modelStruct.VariablesNonFit;
VariableNameUnit=modelStruct.VariablesNonFitUnits;
Colors=modelStruct.ColorsNonFit;


for i=1:size(Simu,2)
figure(i)

clf
plot(temps,Simu(:,i),'Color',Colors{i},'Linewidth',line)
hold on
errorbar(timeLoc,Data(:,i),1./w(:,i),'*','Color',Colors{i},'MarkerSize',marker,'Linewidth',3)
hold off
xlabel('Days','Fontsize',font)
ylabel([VariableNameUnit{i}],'Fontsize',font)
set(gca,'Fontsize',fontaxes)
print(format1,[dossier '/' num2str(i)])
print(format2,[dossier '/' num2str(i)])

end

      
end