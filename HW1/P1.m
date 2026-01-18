% Problem #1
clc
% Graph
x = (0.01:0.001:10)';
y1 = x + 1 ./ x;
y2 = 5 + (0 .* x);
plot(x,[y1,y2])
ylim([0,10])
grid

function [e] = Prob1(x)
y = x + 1/x;
e = y - 5;
end
% Find & print solution
x3 = 2;
for i=1:10
    x1 = x3;
    y1 = Prob1(x1);
    x2 = x1 + 0.001;
    y2 = Prob1(x2);
    x3 = x1 - (x2-x1)/(y2-y1) * y1;
    if y1 == 0
        %disp([i, x1, y1]);
        disp(x1)
        break
    end
end