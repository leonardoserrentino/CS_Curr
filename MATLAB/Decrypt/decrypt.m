function [output] = decrypt(A)
[m, n]=size(A);

qq0=ones(n,1);
qq0=qq0*4;

qq1=ones(n,1);
qq1(end)=0;
qq1=qq1*(-1);

qq2=ones(n,1);
qq2(1)=0;
qq2=qq2*(-1);

qq=[qq1 qq0 qq2];
d=[-1 0 1]';
coeff=spdiags(qq, d, n, n);

output=zeros(m, n);
for i=1:n
    b=A(:, i);
    eq=[coeff b];
    [Q,R]=qr(eq);
    coeffi=R(:, 1:n);
    bi=R(:,end);
    sol=solupper(coeffi, bi);
    output(:,i)=sol;
end

%[Q,R]=qrfact(coeff);
%output=rtrisol(R, Q'*A);

end
