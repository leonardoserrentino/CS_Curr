function [x , k ] = gaussSeidel (A , b , x , maxit , tol )
% GAUSSSEIDEL - Metodo iterativo di Gauss - Seidel per sistemi lineari
n = size (A ,1) ;
for k = 1 : maxit
	xtemp = x ;
	for i = 1 : n
		x ( i ) = ( -A (i ,[1:( i -1) , (i +1) : n ]) * x ([1:( i -1) , ( i +1) : n ]) + b ( i ) ) / A (i , i ) ;
	end
	if ( norm ( xtemp - x , inf ) < tol * norm (x , inf ) )
		break ;	
	end
end
if ( k == maxit )
	warning (' convergenza non raggiunta ') ;
end
end
