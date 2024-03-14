%Serrentino Leonardo
%Matricola 180043

clear all
close all
clc

N=[10:10:100];
O=[0.2:0.1:1.9];
eigvalues=zeros(length(N),length(O));
iters=zeros(length(N),length(O));
for i=1:length(N)
    %Costruzione di A e b per n corrente
    n=N(i);
    h = 1/(n+1);
    x = (1:n)' * h;
    x = linspace(0,1,n);
    c = h^2 * x;
    A = spdiags([-ones(n,1), 2*ones(n,1) + c, -ones(n,1)], [-1 0 1], n, n );
    fun = @(x)( -exp(x) .* (1-x) + (16*pi^2 + x) .* sin(4*pi*x) );
    b = h^2 * fun(x);
    y0 = 1;
    yn_1 = exp(1);
    b(1) = b(1) + y0;
    b(n) = b(n) + yn_1;
    J = speye(n) - spdiags( 1 ./ spdiags(A,0), 0, n, n) * A;
    pJ=abs(eigs(J,1));
    omega = 2 / (1 + sqrt(1 - pJ^2));
    %Costruzione di tentativi di omega ass. a iters
    for j=1:length(O)
        ySOR=sparse(n,1);
        [sol,iters(i,j)]=sor(A,b,ySOR,10000,1,O(j));       
        if(O(j)<omega)
            eigvalues(i,j)=1-O(j)+0.5*O(j)^2*pJ^2+O(j)*pJ*sqrt(1-O(j)+(O(j)^2*pJ^2)/4);
        else
            eigvalues(i,j)=1-omega;
        end
    end
end
plot(O,iters(1,:));
%plot(O,eigvalues(1,:));