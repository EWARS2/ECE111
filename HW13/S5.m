format compact; format shortG; clear; clc; % Voltage Nodes with Phasors
A = [1,  0,  0,  -10i;
    -1/10,  1/10 + 1/100 + 1/20 + 1/(-50i/3),  -1/20, 0;
    0,  -1/20,  1/20 + 1/200 + 1/(-100i/3),  0]
V = rref(A) % Pretty sure there's a problem here somewhere but I cannot
abs(V)      % find it for the life of me