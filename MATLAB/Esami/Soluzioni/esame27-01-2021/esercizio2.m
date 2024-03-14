function [z,xi,t] = esercizio2(x,s,w)
%Serrentino Leonardo
%Matricola 180043

%-------------------------------
% esercizio 2 M-Function
%-------------------------------

xs=((x+s)>0).*((x.*(log(x+s)-w))>0);
xi=[1:1:length(x)].*xs;
xi=find(xi>0);
xu=x(xi);
N=10000;
tic
for i=1:N
    z=(xu.*(log(xu+s)-w)).^(1/4);
end
t=toc;
t=t/N;
end