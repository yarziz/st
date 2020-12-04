close all, clear all
N=100000;
n=1:N;
x=1/10:1/10:N;
alpha=3;
beta=2;
varargin=6;
y=GammaPDF(x,alpha,1/beta);
%alphaaa=0:8;
%bethaaa=0:5;
%[Q,R]=meshgrid(alphaaa,bethaaa);

%plot(x,pp);
M = 100000;
g=GammaRND(alpha,1/beta,N);
%pp= N.*Q.*log(R)-N.*gammaln(Q)+(Q-1).*N.*mean(log(g))-R.*N.*mean(g)

%contour(Q,R,pp)
a=mean(g)
b=std(g)
alphaa=(a/b)*(a/b)
betaa=a/(b*b)
%plot(x,y,'*')
%histogram(g,'Normalization','probability');

%std(x)
% Realisations
%x=rand(1,N);
%x=2*x-1
% Observations
%figure(1)
%plot(n,x,'*')
%title('Re''ealisations')
%xlabel("realisation"); ylabel("valeur x")
%mean(x)
%std(x)
%histogram(x,'Normalization','probability')
%grid