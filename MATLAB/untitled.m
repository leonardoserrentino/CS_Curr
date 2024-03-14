x=[0.1 0.3125 0.5250 0.7375 0.95];
f=sin(3*x);
ff=zeros(4,1);
for i=1:4
    ff(i)=(f(i)-f(i+1))/(x(i)-x(i+1))
end
fff=zeros(3,1);
for i=1:3
    fff(i)=(ff(i)-ff(i+1))/(x(i)-x(i+2))
end
