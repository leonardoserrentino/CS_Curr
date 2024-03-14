%Leonardo Serrentino 180043
close all
clear all
clc
%--------------------------
% esercizio 4
%--------------------------
disp('Esercizio 4');

%Inserimento A e b
A = [3 0 -1/2 -1/2; 0 3 -1 -1; -1/2 -1 3 0; -1/2 -1 0 3];
b = [1 3 -1 2]';

%Creazione di D, L, U e D^-1
D = spdiags(diag(A), 0, 4, 4);
L = -tril(A, -1);
U = -triu(A, 1);
Dinv = spdiags((1./diag(A)), 0, 4, 4);

%Calcolo matrice di iterazione Jacobi e cJ
J = (L+U)./diag(A)
cJ = b./diag(A)

%Calcolo matrice di iterazione Gauss-Seidel e cGS
G = (Dinv*(D+L)*Dinv)*U
cGS = (Dinv*(D+L)*Dinv)*b

%Raggi spettrali pJ e pG
pJ = max(abs(eigs(J)))
pG = max(abs(eigs(G)))

%Velocita di convergenza
RJ = -log(pJ)
RGS = -log(pG)

%Calcolo soluzione con Gauss-Seidel(plain) e SOR
x0=[1,0,1,0]'; maxit=50; tol=1.0e-5; w=1.3;
[xGS, itGS] = gaussSeidel(A, b, x0, maxit, tol)
[xS, itS] = sor(A, b, x0, maxit, tol, w)


