%Leonardo Serrentino 180043
close all
clear all
clc
%--------------------------
% esercizio 3
%--------------------------

%Prima parte
disp('Esercizio 3 Prima parte');
A=[1 3 -1;1 2 1/2;5 10 -1];
b=[-2 1/2 -1]';

[L,R,p,det] = gauss2(A)

xGauss = solupper(R, sollower(L, b(p)))
resGauss = norm(A*xGauss-b, 'inf')

[L1, R1, p1] = lu(A)

difL = max(abs(norm(L-L1, 'inf')))
difR = max(abs(norm(R-R1, 'inf')))

%Seconda parte
disp('Esercizio 3 Seconda parte');
n=30;
[L, R, p] = gauss2(A);
x = zeros(3,n);
norme = zeros(n, 1);
for k=1:30
    b=[-2, 2^-k -1]';
    x(:,k) = A\b;
    norme(k) = norm(x(:,k));
end
plot(norme,'bo');