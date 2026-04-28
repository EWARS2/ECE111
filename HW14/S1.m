format compact; format shortG; clear; clc; % Filter Analysis
poly([-5, -6, -7]) % Problem 1a
% Problem 1b
s = 0i;
X = 3;
Y = X * 50*(s+4) / ((s+5)*(s+6)*(s+7))
% Problem 1c
s = 2i;
X = 0-5i;
Y = X * 50*(s+4) / ((s+5)*(s+6)*(s+7))
% Problem 2
w = [0:0.01:30]';
s = j*w;
G = 50.*(s+4) ./ ((s+5).*(s+6).*(s+7));
subplot(211); plot(w,abs(G))
xlabel('Frequency (rad/sec)'); ylabel('Gain');
% Problem 3
G = 100.*(s.^2 +4) ./ ((s.^2 + 2.*s + 50).*(s.^2 + 4.*s + 85));
subplot(212); plot(w,abs(G))
xlabel('Frequency (rad/sec)'); ylabel('Gain');