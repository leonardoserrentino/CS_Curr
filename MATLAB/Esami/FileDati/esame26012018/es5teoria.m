f=@(x)(1/3*exp(-7*((x-3).^2)));
x=[1:1:5];
f=f(x)';
ff=zeros(4,1);
for i=1:4
    ff(i)=(f(i)-f(i+1))/(x(i)-x(i+1));
end
fff=zeros(3,1);
for i=1:3
    fff(i)=(ff(i)-ff(i+1))/(x(i)-x(i+2));
end
ffff=zeros(2,1);
for i=1:2
    ffff(i)=(fff(i)-fff(i+1))/(x(i)-x(i+3));
end

xc=2*x
xc=xc+1
xc=xc./10
