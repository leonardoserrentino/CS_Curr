%Serrentino Leonardo
%Matricola 180043

clear all
close all
clc

%---------------------------------------
% esercizio 1
%---------------------------------------

disp("Esercizio 1");

c=zeros(7,1);
c(1)=log10(pi^(7/4)*max(exp(2),tan(1/2)));
c(2)=cos(abs(-0.7*exp(-0.2))^(1/3));
c(4)=-sin(0.2+exp(-1.6));
c(6)=acos(3.7e-1)+1/4;
c(7)=log(sqrt(pi^3)+2/3);

x=input('x0 in cui calcolare p ');
[r,q]=ruffiniHorner(c,x);
[r1,q1]=ruffiniHorner(q,x);
[r2,q2]=ruffiniHorner(q1,x);

fprintf('Valore del polinomio in x0 : %g\n', r);
fprintf('Valore della derivata prima in x0 : %g\n', r1);
fprintf('Valore della derivata seconda in x0 : %g\n', r2*2);

fplot(@(x)(polyval(c,x)), [-1.5,1.3]);