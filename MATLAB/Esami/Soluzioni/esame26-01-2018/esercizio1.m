% Serrentino Leonardo
% 180043
close all
clear all
clc
%-----------------------------
% esercizio 1 - 26/01/2018
%-----------------------------
disp('Esercizio 1');
p=[3,-9,0,11,-pi,0,2];
x0=input('Inserire il punto (numero reale) nel quale calcolare il polinomio: x0 = ');
[r,q]=ruffiniHorner(p,x0);
[r1,q1]=ruffiniHorner(q,x0);
[r2,q2]=ruffiniHorner(q1,x0);
fprintf('Valore del polinomio in x0: p(x0) =%g\n', r);
fprintf('Valore della derivata prima in x0: p''''(x0) = %g\n', r1);
fprintf('Valore della derivata seconda in x0: p''''''(x0) = %g\n',  factorial(2)*r2);