% Serrentino Leonardo
% 180043
function [out, time] = esercizio2(n, alpha)
%Esercizio 2
%Valuta la funzione 
%   f(x) = sum_{k=0,...,n}sin(k*x) + sum{k=0,...,n}cos(k*x)
%   dove nel sin utilizziamo solo i valori pari di k, in cos quelli dispari
%INPUT
%   n numero di iterazioni di k
%   alpha valore di x f(x)
%OUTPUT
%   out vettore di due elementi dove
%       out(1)=output ottenuto dal for
%       out(2)=output ottenuto con notazione vettoriale
%   time vettore di due elementi dove
%       time(1)=tempo di esecuzione di out(1)
%       time(2)=tempo di esecuzione di out(2)

%controllo di n
if(n<1 || fix(n)~=n)
    error('n deve essere un numero naturale');
end

out(1)=0;
tic
for k=1:n
    sel=mod(k,2);
    out(1)=out(1)+abs(sel-1)*(sin(k*alpha))+sel*(cos(k*alpha));
end
time(1)=toc;
tic
out(2)=sum(sin([0:2:n]*alpha))+sum(cos([1:2:n]*alpha));
time(2)=toc;

end