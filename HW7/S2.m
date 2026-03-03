format compact; format shortG; clear; clf; clc; % Numerical Integration
x = [-10:0.01:10]';

subplot(211) % 2)
y = (cos(x)+sin(2*x)) ./ (x.^2 + 3);
plot(x,y,'b',x,Integrate(x,y),'r')

subplot(212) % 3)
y = cos(x) + 0.1*cos(5*x);
plot(x,y,'b',x,Integrate(x,y),'r')
