clc
function [R] = Res(T)
R = 2000 .* exp(4000./(T+273) - 4000/298);
end
function [V] = Volt(T)
V = Res(T) ./ (Res(T) + 2000) .* 10;
end
%3
disp(["T=5", Res(5), Volt(5)])
disp(["T=-20", Res(-20), Volt(-20)])
%4 & 5
T = (-30:0.1:30)';
R = Res(T);
V = Volt(T);
subplot(211)
plot(T,R);
xlabel('Degrees C');
ylabel('Ohms');
grid
subplot(212)
plot(T,V);
xlabel('Degrees C');
ylabel('Volts');
grid