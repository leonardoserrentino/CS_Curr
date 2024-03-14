%Leonardo Serrentino 180043
close all
clear all
clc
%--------------------------
% esercizio 3
%--------------------------
disp('Esercizio 3');

A = [5 0 -1 0; 0 -2 3 0;0 3 2 -1; 0 0 1 3];
b = [3 0 -1 2]';
xt = [0.5902 -0.0732 -0.0488 0.6892]';

[Q,R] = qr(A)
c = Q'*b;
xs = solupper(R,c)
res = norm(A*xs-b, 'inf')
differenza = max(abs(xs-xt))

C=R'*R;
[Rc, f] = chol(C);
if(f)
    warning('C non definita positiva\n');
else
    fprintf('C definita positiva\n');
endesame16072020esame16072020

[L, U, p, q] = gaussPivTot(A);
xp = solupper(U, sollower(L, b(p)));
xp = xp(q)
[Ll, Uu, pp] = lu(A);
xpp = solupper(Uu, sollower(L, pp*b));
vettoreDiff = zeros(4, 2);
vettoreDiff(:,1) = abs(xpp-xp);
vettoreDiff(:,2) = abs(xt-xp);
vettoreDiff