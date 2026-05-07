format compact; format shortG; clear; clc;
disp("Series Model")
V = 9.6e3;
P = 15;
pf = 0.015;
I = P / (V*pf)
q = acos(0.015)
Z = (V/I) * exp(j*q)
1/Z
Rc = 1/real(1/Z)
Xc = -1/imag(1/Z)
disp("Line Model")
P = 10;
V = 20;
pf = 0.99;
I = P / (V*pf)
q = acos(pf)
Z = (V/I) * exp(j*q)
RL = real(Z)
XL = imag(Z)