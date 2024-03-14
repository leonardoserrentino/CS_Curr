% Serrentino Leonardo
% 180043
%------------------------
% esercizio 3 26/01/2018
%------------------------
close all
clear all
disp('Esercizio 3');
A=[1 3 -1;1 2 1/2; 5 10 -1];
b=[-2 0.5 -1]';
[L,R,p]=gauss2(A);
xs=solupper(R, sollower(L,b(p)));
fprintf('%g\n', norm((A*xs)-b, 'inf'));

[L1, R1, p1]=lu(A)

n=30;
for k=1:n
    b=[-2 2^(-k) -1]';
    nis(k)=norm(R\(L\b(p)),'inf');
end
plot(nis, 'bo');
