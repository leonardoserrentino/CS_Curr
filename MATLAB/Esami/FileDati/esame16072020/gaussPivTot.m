function [L , R , p , q , deter ] = gaussPivTot ( A)
% GAUSSPIVTOT - Fattorizzazione di Gauss con pivoting totale
% Esegue la fattorizzazione PAQ = LR con l’ algoritmo di eliminazione di
% Gauss con pivoting totale (con aggiornamento mediante diadi )
% SYNOPSIS
% [L, R, p, q, deter ] = gaussPivTot (A)
% INPUT
% A ( double array ) - Matrice m x n
% OUTPUT
% L ( double array ) - Matrice triangolare inferiore a diagonale unitaria
% R ( double array ) - Matrice triangolare / trapezoidale superiore
% p ( double array ) - Vettore delle permutazioni di righe
% q ( double array ) - Vettore delle permutazioni di colonne
% deter ( double ) - determinante ( della parte quadrata ) di A
%
[m , n ] = size ( A ) ;
deter = 1;
p = 1 : m ;
q = 1 : n ;
tol = eps * norm (A , inf ) ; % tolleranza verso lo zero ( trascurabilita ’)
for j = 1 : min (m -1 , n )
[ amax , indr ] = max ( abs ( A( j :end , j : end ) ) ) ;
[ amax , indc ] = max ( amax ) ;
indr = indr ( indc (1) ) + j - 1;
indc = indc (1) + j - 1;
if ( indc ~= j ) % pivot non in posizione diagonale : occorre scambiare colonne
% scambio di indici
aux = q ( j ) ; q ( j ) = q ( indc ) ; q ( indc ) = aux ;
deter = - deter ;
% scambio di colonne
temp = A (: , indc ) ; A (: , indc ) = A (: , j ) ; A (: , j ) = temp ;
end
if ( indr ~= j ) % pivot non in posizione diagonale : occorre scambiare righe
% scambio di indici
aux = p ( j ) ; p ( j ) = p ( indr ) ; p ( indr ) = aux ;
deter = - deter ;
% scambio di righe
temp = A ( indr ,:) ; A ( indr ,:) = A (j ,:) ; A (j ,:) = temp ;
end
deter = deter * A (j , j ) ;
if ( abs( A (j , j ) ) > tol )
A ( j +1: end , j ) = A ( j +1: end , j ) / A (j , j ) ;
A ( j +1: end , j +1: end) = A ( j +1: end , j +1: end ) - A ( j +1: end , j ) * A (j , j +1: end ) ;
else
error ('Matrice numericamente vicina alla singolarita ’’: arresto ') ;
end
end
if ( m <= n ) , deter = deter * A (m , m ) ; end
R = triu ( A ) ;
L = eye (m ) + tril (A , -1) ;
end % fine della function gaussPivTot
