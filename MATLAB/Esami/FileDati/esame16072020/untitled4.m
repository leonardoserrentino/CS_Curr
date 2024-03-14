n = size (A ,1) ;
x=zeros(4,1);
for k = 1 : 2
    xtemp = x ;
    fprintf('%d\n', k);
    for i = 1 : n
        aa=-A (i ,[1:( i -1) , (i +1) : n ])
        xx= x ([1:( i -1) , ( i +1) : n ])
        bb = b(i)
        aii = A(i,i)
        x ( i ) = ( -A (i ,[1:( i -1) , (i +1) : n ]) * x ([1:( i -1) , ( i +1) : n ]) + b ( i ) )/ A (i , i )
    end
    
end