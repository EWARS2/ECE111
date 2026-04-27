format compact; format shortG; clear; clc; % Phasor Impedences (Problem 3)
Z1 = 1 / (1/200 - 1/50i)
Z2 = 20 + 40i + Z1
Z3 = 1 / (1/Z2 - 1/25i)
Z4 = 1 / (1/Z3 + 1/100)
Zab = 10 + 20i + Z4