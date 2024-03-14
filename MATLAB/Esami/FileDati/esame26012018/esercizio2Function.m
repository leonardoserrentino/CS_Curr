%Leonardo Serrentino 180043

function [ffor, fvec, tfor, tvec] = esercizio2(a, n)
%ESERCIZIO 2 Calcola f(a) iterativamente e vettorialmente
%   a: valore in cui calcolare la funzione
%   n: valore utile alla sommatoria 
%   Return
%       ffor: f(a) calcolata con un for
%       fvec: f(a) calcolata vettorialmente
%       tfor: tempo impiegato dal ciclo for
%       tvec: tempo impiegato vettorialmente

tic
ffor=0;
for k = 1:n
    if mod(k,2)
        ffor = ffor + cos(k*a);
    else
        ffor = ffor + sin(k*a);
    end
end
tfor = toc;

tic
fvec = sum(sin(a*[2:2:n])) + sum(cos(a*[1:2:n]));
tvec = toc;

end