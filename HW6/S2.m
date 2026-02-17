format compact; format shortG; clear; clf; clc; % Numerical Differentiation
x = (-10:0.01:10)';

subplot(211) % 2)
y = (cos(x) + sin(2*x)) ./ (3 + x.^2);
z = derivative(x, y);
plot(x,y,'r',x,z,'g')
title("Problem 2")

subplot(212) % 3)
y = cos(x) + 0.1*sin(5*x);
z = derivative(x, y);
plot(x,y,'r',x,z,'g')
title("Problem 3")