format compact; format shortG; clear; clc; % Phasor Impedences (Problem 2)
Z1 = 1 / (1/90 - 1/30i)
Z2 = Z1 + (1 / (1/100 + 1/250i))
Z3 = Z2 + 300i
Z4 = 1 / (1/Z3 + 1/(20-150i))
Zab = Z4 + 70