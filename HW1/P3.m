clc
function [R] = Res(T)
R = 2000 * exp(4000/(T+273) - 4000/298);
end
function [V] = Volt(T)
V = Res(T) / (Res(T) + 2000) * 10;
end
%3
disp(["T=5", Res(5), Volt(5)])
disp(["T=-20", Res(-20), Volt(-20)])
%4
x = (-30:0.001:30)';
