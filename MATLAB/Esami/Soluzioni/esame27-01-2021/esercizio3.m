%Serrentino Leonardo
%Matricola 180043
close all
clear all
clc
%-----------------------
%esercizio 3
%-----------------------

disp('Esercizio 3');
A=[1 -1 2 0; -3 2 0 4; 0 -5 1 -2;0 0 2 1];
b=[0 -2 1 0]';
xt=[-14 8 11 -22]'/15;
[L,R,p,det]=gauss2(A);
xs=solupper(R, sollower(L,b(p)))
res=norm(A*xs-b, 'inf')
res2=max(abs(xs-xt))

disp('Parte 2');
B=A'*A;
[Lc,flag]=chol(B)
if(~flag)
    fprintf('B e definita positiva\n');
    c=[7/3 1 2 -5/6]';
    xc=solupper(Lc', sollower(Lc,c))
else
    fprintf('B non definita positiva\n');
end




