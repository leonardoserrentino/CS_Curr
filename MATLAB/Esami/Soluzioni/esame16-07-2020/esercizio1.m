% Serrentino Leonardo
% 180043
%---------------------------
% esercizio-1 16/07/2020
%---------------------------
close all;
clear all;
clc;
disp('Esercizio 1');

x0=input('Inserire il valore in cui calcolare il polinomio p(x) e nelle sue derivate prima e seconda');
p=zeros(8,1);
c7=tan(1.37*(pi^2)-exp(-0.6));
c6=-log10(4.2+sin(0.77*exp(1.3)));
c4=abs(sqrt(5.7e-2)+cos((-3*pi)/5));
c2=5*cos(sin(12.3-pi^2.1));
c0=log(3.1e-4);

p(1)=c7; p(2)=c6; p(4)=c4; p(6)=c2; p(8)=c0;
[r1,q1]=ruffiniHorner(p,x0);
[r2,q2]=ruffiniHorner(q1,x0);
[r3,q3]=ruffiniHorner(q2,x0);

fprintf('p(x0) = %g\np,(x0) = %g\np,,(x0) = %g\n', r1, r2, 2*r3);
fplot(@(x)(polyval(p,x)), [-1.7,2]);
