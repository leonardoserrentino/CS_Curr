%Serrentino Leonardo
%Matricola 180043

function [ffor, fvec, tfor, tvec] = esercizio2(alpha, n)
ffor=0;
tic;
for k=1:n
    ffor=ffor+mod(k,2)*sin(k*alpha)+(1-mod(k,2))*cos(k*alpha);
end
tfor=toc;

tic;
fvec=sum(sin([1:2:n]*alpha))+sum(cos([2:2:n]*alpha));
tvec=toc;

fprintf("\tFor\t\tVec\nTime\t%e\t%e\nF\t%g\t\t%g\n", tfor, tvec, ffor, fvec);
end