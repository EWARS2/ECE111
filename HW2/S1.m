clc % Newton's Method
% Problems 1 & 2
x = (-5:.01:5)';
f1 = @(x) x.^2 + 3.*sin(x);
f2 = @(x) 5;
% Problem 1
y = f1(x);
plot(x,y)
grid
% Problem 2
Newton(2, f1, f2)
Newton(-2, f1, f2)