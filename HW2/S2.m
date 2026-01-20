clc % Newton's Method
% Problems 3 & 4
x = (-5:.01:5)';
f1 = @(x) cos(x);
f2 = @(x) sin(0.6 .* x);
% Problem 3
plot(x,[f1(x),f2(x)])
grid
% Problem 4
Newton(-4, f1, f2)
Newton(-3, f1, f2)
Newton(1, f1, f2)
Newton(5, f1, f2)