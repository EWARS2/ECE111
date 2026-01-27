clc, clear, format compact % Plotting Polar Functions
theta = (-2 * pi : .01 : 2 * pi)'; % Problem 4
r = @(theta) sin(theta) + cos(3 .* theta); % Problem 4b
polarplot(theta,r(theta))