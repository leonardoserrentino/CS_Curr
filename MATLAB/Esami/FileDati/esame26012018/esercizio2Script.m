%Leonardo Serrentino 180043

close all
clear all
clc

%--------------------------
% esercizio 2
%--------------------------

disp('Esercizio 2');

a = 0.15; n = 5000;
[ff,fv,tf,tv] = esercizio2Function(a, n);
fprintf('\na = %f\tn = %d\n\n\tFor\t\tVec\nf(a)\t%e\t%e\ntime\t%e\t%e\n', a, n, ff, fv, tf, tv);