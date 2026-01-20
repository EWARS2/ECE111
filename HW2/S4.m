clc % Newton's Method and a Voltage Divider
x = (-5:.01:5)';
V = @(R) (R ./ (R+2000)) .* 10;
% Problem 7
%plot(x,V(x))
%grid
f1 = @(R) 8;
f2 = @(R) 6;
% Problem 4
Newton(0, V, f1)
Newton(0, V, f2)