%Serrentino Leonardo
%Matricola 180043
function [rango,deter,normaInf] = miaDiade(r,s)
if(isempty(r) || isempty(s))
    error('r o s vuoto\n');
end
r = r(:);
s = s(:);
A = r*s';
[Q,R] = qr(A);
deter = prod(diag(A));
normaInf = norm(A,"inf");
rango = numel(find(abs(diag(R)) > eps*normaInf));
end