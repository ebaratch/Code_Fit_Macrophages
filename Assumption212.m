function y=Assumption212(param,temps,fixedParam)
temps=reshape(temps,1,length(temps));
%Parameters
deltaOC=param(1);
gammaOB=param(2);
deltaD=param(3);
monoInflux=param(4);
Infl1=param(5);
Infl2=param(6);
AntiInfl=param(7);
depol1=param(8);
depol2=param(9);
depol3=param(10);
TNF=param(11);
OSM=param(12);
deltaBFixed=param(13);
Factor1=param(14);
Factor2=param(15);
deltaOB=param(16);
deltaTNF=param(17);
OBInh=param(18);
Factor3=param(19);
monoInflux2=param(20);


%Fixed parameters
BoneIni=fixedParam(1);
OBini=fixedParam(2);
OCini=fixedParam(3);
deltaM=fixedParam(5);
deltaMo=fixedParam(6);
MonoIni=fixedParam(7);
MacIni=fixedParam(8);
WoundVol=fixedParam(9);




piBFixed=deltaBFixed*OCini/OBini;
GammaH=deltaOB*OBini;
HOC=(MonoIni+MacIni)*(1+OBInh*OBini)*deltaOC*OCini/(MacIni);
d=(deltaM*MacIni+HOC*MacIni/((1+OBInh*OBini)*(MacIni+MonoIni)))/MonoIni;
H=deltaMo*MonoIni;




if (temps(1)==0)

    [~,X]=ode45(@G,[temps],[ OBini,OCini,BoneIni,MonoIni,MacIni,0,0,0,WoundVol]);
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
    [~,X]=ode45(@G,[0,temps],[ OBini,OCini,BoneIni,MonoIni,MacIni,0,0,0,WoundVol]);
    if length(temps)>1
        y=X(2:end,1:8);
        y(:,4)=X(2:end,4)+X(2:end,6);
        y(:,5)=X(2:end,5)+X(2:end,7)+X(2:end,8);
        %y(:,7)=X(2:end,8)
    elseif length(temps)==1
        y=X(end,1:8);
        y(:,4)=X(end,4)+X(end,6);
        y(:,5)=X(end,5)+X(end,7)+X(end,8);
    end

end


function dy=G(t,X)
    dy=zeros(9,1);

    dy(1)=GammaH*X(2)*OBini/(OCini*OBini)+gammaOB*OBini*X(8)/MacIni-deltaOB*X(1)*X(3)/BoneIni;
    dy(2)=HOC*(X(5)+X(7)+X(8))/((MacIni+MonoIni)*(1+OBInh*X(1)))+Factor3*(X(5)+X(7)+X(8))*(X(7)+X(6))/((MacIni+MonoIni)*(1+OBInh*X(1)))-deltaOC*(X(1))*X(2)/(OBini*(1+deltaTNF*(X(6)+X(7))));
    dy(3)=-deltaBFixed*(1+TNF*(X(6)+X(7)))*X(2)*X(3)/BoneIni+piBFixed*(1+OSM*(X(8)))*(X(1));
    dy(4)=monoInflux2*X(9)/WoundVol+monoInflux*(X(7)+X(6))/(MacIni+MonoIni)+H-deltaMo*X(4)-Infl1*X(4)*X(9)*(Factor1+X(6)+X(7))/(WoundVol*(MacIni+MonoIni))+depol1*X(6)*X(8)/(MacIni);
    dy(5)=(d)*MonoIni-HOC*(X(5))/((MacIni+MonoIni)*(1+OBInh*X(1)))-Factor3*(X(5))*(X(7)+X(6))/((MacIni+MonoIni)*(1+OBInh*X(1)))-(Infl2*X(5)*X(9)*(Factor2+X(6)+X(7))/(WoundVol*(MacIni+MonoIni)))+(depol2*X(7)*X(8)/(MacIni))-(AntiInfl*X(5)*(X(6)+X(7))/(MacIni+MonoIni))+(depol3*X(8))-(deltaM*X(5));
    dy(6)=Infl1*X(4)*X(9)*(Factor1+X(6)+X(7))/(WoundVol*(MacIni+MonoIni))-depol1*X(6)*X(8)/(MacIni)-deltaMo*X(6);
    dy(7)=Infl2*X(5)*X(9)*(Factor2+X(6)+X(7))/(WoundVol*(MacIni+MonoIni))-depol2*X(7)*X(8)/(MacIni)-deltaM*X(7)-HOC*(X(7)/((MacIni+MonoIni)*(1+OBInh*X(1))))-Factor3*(X(7))*(X(7)+X(6))/((MacIni+MonoIni)*(1+OBInh*X(1)));
    dy(8)=AntiInfl*X(5)*(X(6)+X(7))/(MacIni+MonoIni)-deltaM*X(8)-depol3*X(8)-HOC*(X(8))/((MacIni+MonoIni)*(1+OBInh*X(1)))-Factor3*(X(8))*(X(7)+X(6))/((MacIni+MonoIni)*(1+OBInh*X(1)));
    dy(9)=-deltaD*(X(6)+X(7))*X(9)/(MacIni+MonoIni);

end
end