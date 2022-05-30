function y=Assumption123(param,temps,fixedParam)
temps=reshape(temps,1,length(temps));
%Parameters
deltaOC=param(1);
gammaOB=param(2);
deltaD=param(3);
monoInflux1=param(4);
Infl1=param(5);
Infl2=param(6);
AntiInfl=param(7);
depol1=param(8);
depol3=param(9);
TNF=param(10);
OSM=param(11);
deltaBFixed=param(12);
monoInflux2=param(13);
Factor2=param(14);
deltaOB=param(15);
deltaTNF=param(16);
M2Inh=param(17);
Factor3=param(18);



%Fixed parameters
BoneIni=fixedParam(1);
OBini=fixedParam(2);
OCini=fixedParam(3);
deltaOCFixed=fixedParam(4);
deltaM=fixedParam(5);
deltaMo=fixedParam(6);
MonoIni=fixedParam(7);
MacIni=fixedParam(8);
WoundVol=fixedParam(9);



piBFixed=deltaBFixed*OCini/OBini;
GammaH=deltaOB*OBini;
HOC=deltaOCFixed*OCini/MacIni;
d=(deltaM*MacIni+(HOC)*MacIni)/MonoIni;
H=deltaMo*MonoIni;



if (temps(1)==0)

    [~,X]=ode45(@G,[temps],[OBini,OCini,BoneIni,MonoIni,MacIni,0,0,0,WoundVol]);
    if length(temps)>1
        y=X(1:end,1:8);
        y(:,4)=X(1:end,4)+X(1:end,6);
        y(:,5)=X(1:end,5)+X(1:end,7)+X(1:end,8);
    elseif length(temps)==1
        y=X(end,1:8);
        y(:,4)=X(end,4)+X(end,6);
        y(:,5)=X(end,5)+X(end,7)+X(end,8);
    end

else
    [~,X]=ode45(@G,[0,temps],[OBini,OCini,BoneIni,MonoIni,MacIni,0,0,0,WoundVol]);
    if length(temps)>1
        y=X(2:end,1:8);
        y(:,4)=X(2:end,4)+X(2:end,6);
        y(:,5)=X(2:end,5)+X(2:end,7)+X(2:end,8);
    elseif length(temps)==1
        y=X(end,1:8);
        y(:,4)=X(end,4)+X(end,6);
        y(:,5)=X(end,5)+X(end,7)+X(end,8);
    end

end


function dy=G(t,X)
    dy=zeros(9,1);


    dy(1)=GammaH*X(2)*OBini/(OCini*OBini)+gammaOB*OBini*X(9)/WoundVol-deltaOB*X(1)*X(3)/BoneIni;
    dy(2)=(HOC*OBini*(X(5)+X(7)+X(8))/OBini/(1+M2Inh*X(8)))+Factor3*OBini*(X(5)+X(7)+X(8))*(X(7)+X(6))/OBini/(1+M2Inh*X(8))-deltaOCFixed*(1+deltaOC*X(8))*X(2)/(1+deltaTNF*(X(6)+X(7)));
    dy(3)=-deltaBFixed*(1+TNF*(X(6)+X(7)))*X(2)*X(3)/BoneIni+piBFixed*(1+OSM*(X(8)))*(X(1));
    dy(4)=monoInflux2*X(9)/WoundVol+monoInflux1*(X(7)+X(6))/(MacIni+MonoIni)+H-deltaMo*X(4)-Infl1*X(4)*(X(7))/(MacIni)+depol1*X(6);
    dy(5)=(d)*MonoIni-(HOC*OBini*X(5))/OBini/(1+M2Inh*X(8))-(Infl2*X(5)*X(9)*(Factor2)/(WoundVol))-(deltaM*X(5))-Factor3*OBini*(X(5))*(X(7)+X(6))/OBini/(1+M2Inh*X(8));
    dy(6)=Infl1*X(4)*(X(7))/(MacIni)-depol1*X(6)-deltaMo*X(6);
    dy(7)=Infl2*X(5)*X(9)*(Factor2)/(WoundVol)-deltaM*X(7)-AntiInfl*X(7)*X(9)+(depol3*X(8))-(HOC*OBini*X(7))/OBini/(1+M2Inh*X(8))-Factor3*OBini*(X(7))*(X(7)+X(6))/OBini/(1+M2Inh*X(8));
    dy(8)=AntiInfl*X(7)*X(9)-deltaM*X(8)-depol3*X(8)-(HOC*OBini*X(8))/OBini/(1+M2Inh*X(8))-Factor3*OBini*(X(8))*(X(7)+X(6))/OBini/(1+M2Inh*X(8));
    dy(9)=-deltaD*(X(6)+X(7))*X(9)/(MacIni+MonoIni);


end
end