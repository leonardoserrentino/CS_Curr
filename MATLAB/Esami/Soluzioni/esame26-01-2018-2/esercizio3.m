%Serrentino Leonardo
%Matricola 180043
%-------------------------------------------------------
% esercizio 3 punto 1
%-------------------------------------------------------

disp("Esercizio 3");
A=[1 3 -1;1 2 1/2;5 10 -1];
b=[-2 1/2 -1]';
[L,R,p]=gauss2(A);
xs=solupper(R,sollower(L,b(p)));
norm(A*xs-b, 'inf')
[L1,U1,P1]=lu(A);
norm(L1-L, 'inf')
norm(U1-R, 'inf')
norm(P1-p, 'inf')

%-------------------------------------------------------
% esercizio 3 punto 2
%-------------------------------------------------------
n=30;
np=zeros(n,1);
for k=1:n
    bb=[-2 2^-k -1]';
    xx=R\(L\(bb(p)));
    np(k)=norm(xx, inf);
end
plot(np, 'bo');