%Leonardo Serrentino 180043
close all
clear all
clc
%--------------------------
% esercizio 1
%--------------------------
disp('Esercizio 1');

c = zeros(8,1);
c(1) = tan(1.37*(pi^2)-exp(-0.6));
c(2) = -log10(4.2+sin(0.77*exp(1.3)));
c(4) = abs(sqrt(5.7e-2)+cos(-3*pi/5));
c(6) = 5*cos(sin(12.3-(pi^(2.1))));
c(8) = log(3.1e-4);

x0 = 1.21;
[r1,q1] = ruffiniHorner(c,x0);
[r2,q2] = ruffiniHorner(q1,x0);
[r3,q3] = ruffiniHorner(q2,x0);
fprintf('%g %g %g\n', r1, r2, 2*r3);

x = linspace(-1.7, 2, 1000);
y = polyval(c, x);
plot(x, y);