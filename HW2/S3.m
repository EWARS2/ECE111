clc % Newton's Method with a Temperature Sensor
T = (-30:.01:30)';
R = @(T) 2000 * exp(4000 ./ (T + 273) - 4000/298);
% Problem 5 & 6
%plot(T,R(T))
%grid
f1 = @(T) 20000;
f2 = @(T) 5000;
% Required: For some reason, these calculations display ints as short
% engineering??
format shortG
Newton(0, R, f1, 0.000001)
Newton(0, R, f2, 0.000001)