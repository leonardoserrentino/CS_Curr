%Leonardo Serrentino 180043
close all
clear all
clc
%-----------------------------
% esercizio 1
%-----------------------------
disp('Esercizio 1');

p = zeros(7,1);
p(1)=3; p(2)=-9; p(4)=11; p(5)=-pi; p(7)=-2;

x0 = input('\nInserire il punto (numero reale) nel quale valutare il polinomio: x0 = ');

[r0,q0] = ruffiniHorner(p, x0);
[r1,q1] = ruffiniHorner(q0, x0);
[r2,q2] = ruffiniHorner(q1, x0);

fprintf('\nValore del polinomio in x0: p(x0) = %g', r0);
fprintf('\nValore della derivata prima in x0 = p,(x0) = %g', r1);
fprintf('\nValore della derivata seconda in x0: p,,(x0) = %g\n', 2*r2);