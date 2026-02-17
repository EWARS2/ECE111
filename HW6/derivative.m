function [ dy ] = derivative( x, y ) % Derivative Function from Example
dy = 0*y;
n = length(y);
for i=2:n-1
    dy(i) = ( y(i+1) - y(i-1) ) / ( x(i+1) - x(i-1) );
end
dy(1) = 2*dy(2) - dy(3);
dy(n) = 2*dy(n-1) - dy(n-2);
end