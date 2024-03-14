%Leonardo Serrentino 180043
function [ffor, fvec] = esercizio2(b, p, q, xx)

f = @(x)(-sin(p(1)*b.^(q(1).*x)) + cos(p(2)*b.^(q(2).*x)) -sin(p(3)*b.^(q(3).*x)) + cos(p(4)*b.^(q(4).*x)));
xx = xx(:);
n = length(xx);

ffor = zeros(n,1);
for i=1:n
    ffor(i) = f(xx(i));
end

fvec = f(xx);


end