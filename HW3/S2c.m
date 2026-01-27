clc, clear, format compact % Plotting Polar Functions
theta = (-2 * pi : .01 : 2 * pi)'; % Problem 4
r = @(t) cos(t) + (cos(t)/2) + (cos(3.*t)/3) + (cos(4.*t)/4); % Problem 4c
polarplot(theta,r(theta))