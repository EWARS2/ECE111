format compact; format shortG; clear; clc;
disp("Problem 2")
R01 = 321 * (120/128e3)^2
R1 = 40e6 * (120/128e3)^2
X1 = j*4e6 * (120/128e3)^2
R12 = 3.21 * (120/13.2e3)^2
R2 = 400e3 * (120/13.2e3)^2
X2 = j*60e3 * (120/13.2e3)^2
R23 = 0.0214;
R3 = 1.44;
disp("Problem 4")
b1 = [1,0,0,0];
b2 = [-1/R01,1/R01+1/R1+1/X1+1/R12,-1/R12,0];
b3 = [0,-1/R12,1/R12+1/R2+1/X2+1/R23,-1/R23];
b4 = [0,0,-1/R23,1/R23+1/R3];
B = [b1;b2;b3;b4]
A = [120;0;0;0]
V = inv(B)*A
abs(V)
disp("Probem 5")
V0 = V(1);
V1 = V(2);
V2 = V(3);
V3 = V(4);
disp("Power Dissipated by Each Resistor")
P01 = abs(V0 - V1)^2 / R01
P1 = abs(V1)^2 / R1
P12 = abs(V1 - V2)^2 / R12
P2 = abs(V2)^2 / R2
P23 = abs(V2 - V3)^2 / R23
P3 = abs(V3)^2 / R3
disp("Efficiency Including Core Losses")
eff = P3 / (P1 + P12 + P2 + P23 + P3)
disp("Efficiency Excluding Core Losses")
eff = P3 / (P12 + P23 + P3)