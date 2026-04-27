format compact; format shortG; clear; clc; % Phasor Voltages
toComplex = @(a,b) a * exp(1j*(b)*pi/180);
V = toComplex(3,-43.2)
I = toComplex(2.5e-3,0)
Z = V / I