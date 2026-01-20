function [] = Newton(start, f1, f2) % Newton's Method
arguments                           % Finds when f1(x)-f2(x) = 0
    start
    f1 (1,1) function_handle
    f2 (1,1) function_handle
end
disp(["i","x","error"])
x3 = start;
for i=1:10
    x1 = x3;
    y1 = f1(x1) - f2(x1);
    x2 = x1 + 0.001;
    y2 = f1(x2) - f2(x2);
    x3 = x1 - (x2-x1)/(y2-y1) * y1;
    disp([i, x1, y1]);
    if (abs(y1) <=  0.000001) % Normal output only shows these many digits
        break
    end
end
end