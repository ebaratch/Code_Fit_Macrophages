
function [param,resnorms,RMSEs,R2s,Res,p,exitflags]=...
    setFitting(CondIni,DataSet,fixedParam,time,modelStruct,sigma,dossier)
% Run model calibration to Exeprimental data and save temporal plots in folder dossier
% modelStuct is a structure containing relevant elements for the model's
% fit
% DataSet is a matrix containing experimental data
% sigma is a matrix containing the error bars

model=modelStruct.model;
param0=modelStruct.param0;


if isfield(modelStruct,'LowBounds')
    lowBounds=modelStruct.LowBounds;
else
    lowBounds=[];
end
if isfield(modelStruct,'UpBounds')
    upBounds=modelStruct.UpBounds;
else
    upBounds=[];
end
if isfield(modelStruct,'fitMethod')
    disp(modelStruct.fitMethod)
    fitMethod=modelStruct.fitMethod;
else
    fitMethod='fminsearchPenal';
end


line=1.8;
marker=15;
font=20;
fontaxes=18;
format1='-depsc';
format2='-dpng';
mkdir(dossier);
delete([dossier '/*.eps']);
N=size(DataSet,2) %Number of observables
p=length(param0);
Res=cell(1,N);
RMSEs=zeros(1,N);
R2s=zeros(1,N);
resnorms=zeros(1,N);
options=optimset('FunValCheck','on','MaxFunEvals',5000,'MaxIter',2500,'Display','iter','TolFun',0.000001,'Tolx',0.000001);

if isfield(modelStruct,'MaxIter')
    options=optimset(options,'MaxIter',modelStruct.MaxIter);
end
exitflags=zeros(1,N);
figure(2)
clf
figure(3)
clf



Data=DataSet;

timeLoc=time;
n=size(Data,1);
w=1./sigma

if isfield(modelStruct,'IC')
    if isequal(modelStruct.IC,'on')
        model=@(param,temps) modelStruct.model(param,temps,timeLoc(1),Data(1));
    end
end




if isequal(fitMethod,'fminsearchPenal')
    [paramLocBest,~,exitflag]=fminsearch(@Jinfinf,param0,options);
    exitflags(1)=exitflag;


elseif isequal(fitMethod,'MCfminsearch')
   options=optimset('MaxFunEvals',10000,'MaxIter',10000,'Display','iter','TolFun',0.0000001,'Tolx',0.0000001,'OutputFcn', @myoutputFunc);
   tic;
   [paramLocBest,fvalBest,exitflag]=fminsearch(@Jinfinf,param0,options);
   exitflags(1)=exitflag;
   iterNumber=0;
   
   while (iterNumber<100)
        param0=lowBounds+(upBounds-lowBounds).*rand(1,p);
        tic;
        [paramLoc,fval,exitflag]=fminsearch(@Jinfinf,param0,options);
        exitflags(1)=exitflag;
        if (fval<fvalBest)
            paramLocBest=paramLoc;
        end
        iterNumber=iterNumber+1
   end
end

paramLoc=paramLocBest;
param=paramLocBest;

                     

Simuloc=reshape(model(paramLoc,timeLoc),size(w,1),size(w,2));


for i=1:N
    DataMoy=1/n*sum(Data(:,i));
    SStot=sum((Data(:,i)-DataMoy).^2);
    Res(i)={w(:,i).*(Data(:,i)-Simuloc(:,i))};
    RMSEs(i)=sqrt(1/(size(Data,1)-p)*(sum(Res{i}.^2)));
    resnorms(i)=sum(Res{i}.^2);
    R2s(i)=1-sum((Data(:,i)-Simuloc(:,i)).^2)/SStot;
end
    
T=timeLoc(end);
temps=0:0.1:T


Simu=model(param,temps);
VariableNameUnit=modelStruct.VariablesFitUnits;
Colors=modelStruct.ColorsFit;


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

function stop = myoutputFunc(x, optimValues, state)
    stop = false;
    if  toc > 200
        stop = true;
% Here, I set max. iterations to 10 if still detecting Inf
% function value; This is specific to my own research problem.
    end
end



function SSE3=Jinfinf(param)
    epsi=1e-10;
    if isfield(modelStruct,'UpBounds')
        SSE3=max(max((w.*(Data-model(param,timeLoc))).^2))+1/epsi*sum(param<=lowBounds)*max(max(w.*Data))+1/epsi*sum(param>=upBounds)*max(max(w.*Data));
    else
        SSE3=max(max((w.*(Data-model(param,timeLoc))).^2));
    end 
end

function SSE2=J2inf(param)
    epsi=1e-10;
    if isfield(modelStruct,'UpBounds')
        SSE2=max(sum((w.*(Data-model(param,timeLoc))).^2))+1/epsi*sum(param<=lowBounds)*max(sum(w.*Data))+1/epsi*sum(param>=upBounds)*max(sum(w.*Data));
    else
        SSE2=max(sum((w.*(Data-model(param,timeLoc))).^2));
    end 
end 


function SSE=J22(param)
    epsi=1e-10;
    if isfield(modelStruct,'UpBounds')
        SSE=sum(sum((w.*(Data-model(param,timeLoc))).^2))+1/epsi*sum(param<=lowBounds)*sum(sum(w.*Data))+1/epsi*sum(param>=upBounds)*sum(sum(w.*Data));
    else
        SSE=sum(sum((w.*(Data-model(param,timeLoc))).^2));
    end 
end 

end