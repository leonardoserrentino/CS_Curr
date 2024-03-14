%Serrentino Leonardo
%Matricola 180043

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% esercizio 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
close all
clc

disp("Esercizio 1");
x0=input("Inserire il punto (numero reale) nel quale valutare il polinomio: x0 = ");
p=[3, -9, 0, 11, -pi, 0, -2];
[r0, q0]=ruffiniHorner(p, x0);
[r1, q1]=ruffiniHorner(r0, x0);
[r2, q2]=ruffiniHorner(r1, x0);

fprintf("Valore del polinomio in x0: p(x0) = %f\nValore della derivata prima in x0: p,(x0) = %g\nValore della derivata seconda in x0: p r(x0) = %g\n", r0, r1, 2*r2);
