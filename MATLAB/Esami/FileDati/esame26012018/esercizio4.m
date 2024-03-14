%Leonardo Serrentino 180043
close all
clear all
clc
%--------------------------
% esercizio 4
%--------------------------
disp('Esercizio 4');

%Prima parte
A = [9 -3 -1; -2 9 0; -2 0 9];
D = diag(A).*eye(3);
L = -tril(A)+D;
U = -triu(A)+D;
J = (L+U)/D
G = (D+L)/D/D*U

pJ = max(abs(eigs(J)));
pG = max(abs(eigs(G)));

RJ = -log(pJ);
RG = -log(pG);

%Seconda parte
b = [5 -2 3]';
tol=1.0e-5; maxit=100; x0=zeros(3,1);
[xJ,itJ] = jacobi(A, b, x0, maxit, tol);

stop=0;
xG=x0;
n=3;
itG=0;
while(~stop)
    itG=itG+1;
    xold=xG;
    for i=1:n
        xG(i) = (-A(i,[1:(i-1),(i+1):n])*xG([1:(i-1),(i+1):n])+b(i))/A(i,i);
    end
    stop = (norm(xold-xG, 'inf')<=tol) || itG==maxit;
end

fprintf('\n\tJ\t\t\t\tG\np()\t%g\t\t\t\t%g\nx\t(%g,%g,%g)\t(%g,%g,%g)\nit\t%g\t\t\t\t%g\n', pJ, pG, xJ(1), xJ(2), xJ(3), xG(1), xG(2), xG(3), itJ, itG);