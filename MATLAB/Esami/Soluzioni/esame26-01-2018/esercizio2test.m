% Serrentino Leonardo
% 180043
%--------------------------
% esercizio 2 - 26/01/2018
%--------------------------
close all
clear all
clc
disp('Test esercizio 2');
n=5000;
alpha=0.15;
[f,t]=esercizio2(n, alpha);
fprintf('\nRisultati per esercizio2\n\nn=%d, alpha=%d\n\n', n, alpha);
fprintf('\tfor\t\tvec\n')
fprintf('f(x)\t%9.3e\t%9.3e\ntime\t%g\t%g\n\n', f(1),f(2),t(1),t(2))