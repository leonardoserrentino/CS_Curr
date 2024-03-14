%Serrentino Leonardo
%Matricola 180043

close all
clear all
clc

%----------------------
% esercizio 4
%----------------------

disp('Esercizio 4');

n=input('Inserire n maggiore o uguale a 3 ');
%Controllo corretto inserimento n
while n<3
    n=('n deve essere maggiore o uguale a 3 ');
end

%Costruzione A
d0=ones(n,1)*4;
d2=ones(n,1)*(2/3);
dm2=ones(n,1)*(-1/2);
A=spdiags([dm2 d0 d2], [-2 0 2]', n, n);

%Costruzione b
b=zeros(n,1);
b(1:2:n)=-1;
b(2:2:n)=1/4;

%Approssimazione x* Ax=b con Jacobi
tol=1.0e-3;
maxit=100;
x=zeros(n,1);
stop=0;
iter=0;
while(~stop)
    iter=iter+1;
    xold=x;
    x=x-(A*x-b)./d0;
    stop=((norm(x-xold, "inf")<tol*norm(x,"inf")) || iter==maxit);
end
if iter==maxit
    error('Numero massimo di iter raggiunto\n');
else
    disp(x);
    spectralRay=max(abs(eigs(A)))
end
   



