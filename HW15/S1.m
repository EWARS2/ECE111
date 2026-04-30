format compact; format shortG; clear; clc; % Curve Fitting
t = (1:10000)' / 10000 * 2*pi + 1e-6;
x = t/2 .* (t<4);

disp("1) with a power series")
subplot(221);
B = [t.^0, t, t.^2, t.^3, t.^4, t.^5];
A = inv(B'*B)*B'*x
plot(t,x,'b',t,B*A,'r')
xlabel('time');

disp("2) using a Fourier Series")
subplot(222);
B = [t.^0, cos(t), sin(t), cos(2*t), sin(2*t), cos(3*t), sin(3*t)];
A = inv(B'*B)*B'*x
plot(t,x,'b',t,B*A,'r')
xlabel('time');

disp("3) using a Fourier Series (take 2)")
subplot(223);
a0 = mean(x)
a1 = 2*mean(x .* cos(t))
b1 = 2*mean(x .* sin(t))
a2 = 2*mean(x .* cos(2*t))
b2 = 2*mean(x .* sin(2*t))
a3 = 2*mean(x .* cos(3*t))
b3 = 2*mean(x .* sin(3*t))
A = [a0,a1,b1,a2,b2,a3,b3]';
plot(t,x,'b',t,B*A,'r')
xlabel('time');

disp("4-8) Superposition")
subplot(224);
y = @(s,X) X / (4*s^2 + 2*s +1);
Y0 = y(j*0, a0) % 4
Y1 = y(j*1, a1 - j*b1) % 5
Y2 = y(j*2, a2 - j*b2) % 6
Y3 = y(j*3, a3 - j*b3) % 7
y0 = Y0;
y1 = real(Y1)*cos(t) - imag(Y1)*sin(t);
y2 = real(Y2)*cos(2*t) - imag(Y2)*sin(2*t);
y3 = real(Y3)*cos(3*t) - imag(Y3)*sin(3*t);
y = y0 + y1 + y2 + y3;
plot(t,x,'b',t,y,'r');
xlabel('time');