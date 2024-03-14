%Serrentino Leonardo
%Matricola 180043

close all
clear all
clc

%-------------------------------
% esercizio 2 Parte 2
%-------------------------------

disp('Esercizio 2');

x=linspace(0.1,5,200);
s=zeros(2,1); w=zeros(2,1); 
s(1)=5; w(1)=1;
s(2)=input('Inserire s\n');
w(2)=input('Inserire w\n');
[z1,ind1,t1]=esercizio2(x, s(1), w(1));
[z2,ind2,t2]=esercizio2(x, s(2), w(2));

plot(x,z1,x,z2);
