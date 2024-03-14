stop=0;
n=0;
while(~stop)
    n=n+1;
    ff=2*(((b-a)/4)^(n+1))*(3^(n+1))/factorial(n+1);
    stop=(ff<=(4*1e-3));
end
n