%Serrentino Leonardo
%Matricola 180043

A = [1 0 -1 0; 0 3 0 1; 1 0 2 0; 0 1 0 2];
b = [0 -1 0 -1]';

[Q,R] = qr(A);
xsq = solupper(R,Q'*b);

[L,U,p] = lu(A);
xsl = solupper(U,sollower(L,p*b));
