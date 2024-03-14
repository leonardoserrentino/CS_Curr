%Serrentino Leonardo
%Matricola 180043
%-----------------------------------------------------
% esercizio 4
%-----------------------------------------------------

disp("Esercizio 4");
A=[9 -3 -1;-2 9 0;-2 0 9];
J=(-diag(1./diag(A)))*(tril(A,-1)+triu(A,1));
G=-tril(A)\triu(A,1);
pJ=max(abs(eig(J)));
pG=max(abs(eig(G)));
RJ=-log(pJ);
RG=-log(pG);
fprintf("Raggio spettrale di J p(J)=%g Velocita asintotica R(J)=%g\n", pJ, RJ);
fprintf("Raggio spettrale di G p(G)=%g Velocita asintotica R(G)=%g\n", pG, RG);

%Soluzione Jacobi
b=[5 -2 3]';
tol=1.0e-5;
maxit=100;
xi=zeros(3,1);
[xj,kj]=jacobi(A, b, xi, maxit, tol);
fprintf('Soluzione approx da Jacobi x*=(%f,%f,%f)''\nin %d iterazioni\n\n', xj(1), xj(2), xj(3), kj);

%Soluzione Gauss-Seidel
kG=0;
xG=xi;
cG=tril(A)\b;
stop=0;
while(~stop)
    kG=kG+1;
    xold=xG;
    xG=G*xold+cG;
    stop=((norm(xold-xG,inf))<tol*(norm(xG,inf)) || (kG==maxit));
end
fprintf('Soluzione approx da Gauss-Seidel x*=(%f,%f,%f)''\nin %d iterazioni\n', xG(1), xG(2), xG(3), kG);