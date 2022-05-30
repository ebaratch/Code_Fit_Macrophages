function [time,DataSet,DataSigma,AverageData]=formatting_data(timeMat,DataMat)
%Build data matrix from data cell extracted from excel
%Removes NaN data

N=length(DataMat);
NT=length(timeMat);
DataSet=zeros(NT,N);
DataSigma=zeros(NT,N);
AverageData=zeros(NT,N);

for i=1:N
    DataMean=zeros(1,NT)
    DataStd=zeros(1,NT)
    Data=DataMat{i}

    DataMean=mean(Data,1,'omitnan')
    DataStd=std(Data,1,'omitnan')
    Average=mean(DataMean)
    for j=1:NT
        DataSet(j,i)=DataMean(j)
        DataSigma(j,i)=DataStd(j)
        AverageData(j,i)=Average
    end

time=timeMat;

end