function [yj, yg,ys, k1, k2, k3] = momento(a, b, n)
f=@(x)(-exp(x).*(1-x)+(16*(pi^2)+x).*sin(4*pi*x));
h=(b-a)/(n+1);
c=@(x)(x);
xk=linspace(a,b,n);

d1=-ones(n,1);
d0=2+(h^2)*c(xk');

A=spdiags([d0, d1, d1], [0, -1, 1], n, n);
b=sparse(f(xk'));
[yj,k1]=jacobi(A, b, zeros(n, 1), 300, 1e-4);
[yg,k2]=gaussSeidel(A, b, zeros(n,1), 300, 1e-4);
[ys,k3]=sor(A, b, zeros(n,1), 300, 1e-4, 1.575);

norm(A*yj-b, "inf")
norm(A*yg-b, "inf")
norm(A*ys-b, "inf")
end