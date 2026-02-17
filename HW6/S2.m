format compact; format shortG; clear; clc % Numerical Differentiation

function [ dy ] = derivative( x, y )
dy = 0*y;
n = length(y);
for i=2:n-1
    dy(i) = ( y(i+1) - y(i-1) ) / ( x(i+1) - x(i-1) );
end
dy(1) = 2*dy(2) - dy(3);
dy(n) = 2*dy(n-1) - dy(n-2);
end

x = (-10:0.01:10)';

subplot(211) % 2)
y = (cos(x) + sin(2*x)) ./ (3 + x.^2);
z = derivative(x, y);
plot(x,y,'b',x,z,'r')

subplot(212) % 3)
y = cos(x) + 0.1*sin(5*x);
z = derivative(x, y);
plot(x,y,'b',x,z,'r')