clc % Newton's Method
% Problems 1 & 2
x = (-5:.01:5)';
function [y] = func1(x)
y = x.^2 + 3.*sin(x);
end
function [y] = func2(x)
y = 5;
end
function [y] = func(x)
y = func1(x) - func2(x);
end
function [] = Newton(start) % Finds when func() = 0
disp(["i","x","error"])     % TODO: Is it worth passing function names?
x3 = start;
for i=1:10
    x1 = x3;
    y1 = func(x1);
    x2 = x1 + 0.001;
    y2 = func(x2);
    x3 = x1 - (x2-x1)/(y2-y1) * y1;
    disp([i, x1, y1]);
    if (abs(y1) <=  0.000001) % Normal output only shows these many digits
        break
    end
end
end
% Problem 1
y = func1(x);
plot(x,y)
grid
% Problem 2
Newton(2)
Newton(-2)