clc, clear, format compact % Plotting Polar Functions
theta = (-2 * pi : .01 : 2 * pi)'; % Problem 4
r = @(theta) 2.*sin(theta) + 3.*cos(theta); % Problem 4a
polarplot(theta,r(theta))