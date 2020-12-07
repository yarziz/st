close all, clear all
N=10000;
%n=1:N;
%x=linspace(0,10,N);
alpha=3;
beta=2;
varargin=6;
%y=GammaPDF(x,alpha,1/beta);
%alphaaa=linspace(0,8,N);
%bethaaa=linspace(0,5,N);
%[Q,R]=meshgrid(alphaaa,bethaaa);
%figure(1)
%plot(x,pp);
M = 100000;
g=GammaRND(alpha,1/beta,N);
%pp= N.*Q.*log(R)-N.*gammaln(Q)+(Q-1).*N.*mean(log(g))-R.*N.*mean(g);

%contour(Q,R,pp,300);
a=mean(g)
b=std(g);
alphaa=(a/b)*(a/b);
betaa=a/(b*b);

%histogram(g,'Normalization','probability');

K=10000;
al=zeros(1,K);
be=zeros(1,K);
be(1)=1;
for k=2:K
    al(k)=InvPsi(log(be(k-1))+mean(log(g)));
    be(k)=al(k)/a;
end
al(K)
be(K)
%n=1:K;
%plot(n,al)
%hold on
%plot(n,be)
%hold off
%std(x)
plot(al,be)
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