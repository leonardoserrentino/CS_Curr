%TIPO DI ESERCIZIO 1

%I coefficienti del polinomio ricordati di inserirli nell'ordine giusto
%c(1) deve essere quello di grado maggiore, scendendo fino al 
%c(n+1) che deve essere il coefficiente di grado 0, ovvero lo scalare senza x
%3x^4-2x^2+pix+2
c(1)=3;
c(2)=0;
c(3)=-1;
c(4)=pi;
c(5)=2;
%o ancora meglio fai un vettore di zeri grande zeros(n+1,1)
%e inserisci solo i coefficienti noti, diversi da 0
c=zeros(n+1,1);
c(1)=...;
...
c(n+1)=...;
%Dopo per utilizare ruffiniHorner non ci sono problemi


%TIPO DI ESERCIZIO 3

A=[1 3 -1; 1 2 1/2; 5 10 -1];
b=[-2 1/2 -1]';
[L,R,p,deter]=gauss2(A);

%Stampati nella testa questa formula:
%	la soluzione e solupper che ha come R R di gauss(A) e 
%	come termine noto il sllower di L e b(p)
%----------------------------------
xs=solupper(R, sollower(L,b(p)));
%----------------------------------

%Per risolvere sistemi puoi usare la fattorizzazione [L,R,p]=lu(A)
% e la soluzione xs del sistema e:
xs2=R\(L\b(p));
%Stessa roba di usare solupper e lower solo che si usa il comando \ 
%al loro posto


%PLOTTING GRAFICI
%Bella pigna nel culo. La documentazione aiuta

%FUNZIONI ANONIME
f=@(x) 5*x+7
%quando chiamero f(2) dara 5*2+7=17

%nel plot di matlab e utile per plottare le funzioni:
	f=@(x)3*x.^2-2*x+5
	fplot(f,[-1,1])
%	questo fa in modo di plottare la funzione f nell'intervallo [-1,1]
%NELLA DOCUMENTAZIONE DI FPLOT C'E IL MODO DI UTILIZZARE LE FUNZIONI ANONIME

%ESERCIZIO 4
%IMPORTANTISSIMO: saper fare da zero l'terazione di Gauss-Seidel
iterGS = 0; 
xGS = x0 ; 
cGS = tril ( A ) \ b ; 
stop = 0;
while ( ~ stop )
	iterGS = iterGS + 1;
	xold = xGS ;
	xGS = GS * xold + cGS ;
	stop = ( norm ( xold - xGS , inf ) < tol * norm ( xGS , inf ) ) || ( iterGS == maxit ) ;
end

%Utilizzare in modo intelligente le funzioni
eig()
%Questo e il modo per trovare le matrici J e GS
invD = diag ( 1 ./ diag ( A ) ) ;
J = - invD * ( tril (A , -1) + triu (A ,1) ) ;
GS = -tril ( A ) \ triu (A ,1) ;

