%Serrentino Leonardo
%Matricola 180043

close all
clear all
clc

%-------------------------------
% esercizio 5
%-------------------------------

disp('Esercizio 5');

a=-4.5; b=-2.5; n=input('Numero di punti ');
xj=rand(n,1)*(b-a)+a;
f=@(x)((log(x+5)-1).*cos(x));
yj=f(xj);
A=[xj.^2 xj ones(n,1)];
b=yj;
coeff=(A'*A)\(A'*b);

xx=linspace(-4.5, -2.5, 201)';
yy=f(xx);
yy1=polyval(coeff, xx);

plot(xx,yy,'r-', xx,yy1,'b-', xj,yj,'ko');
