clc, format compact % Polar to Rectangular Conversions
Pol2RectX = @(len, degree) len .* cosd(degree);
Pol2RectY = @(len, degree) len .* sind(degree);
A_X = Pol2RectX(7,85) + Pol2RectX(3,-22) + Pol2RectX(6,47) % Problem 1
A_Y = Pol2RectY(7,85) + Pol2RectY(3,-22) + Pol2RectY(6,47)
B_X = Pol2RectX(11,138) + Pol2RectX(7,-67) + Pol2RectX(10,57) % Problem 2
B_Y = Pol2RectY(11,138) + Pol2RectY(7,-67) + Pol2RectY(10,57)
C_X = B_X - A_X % Problem 3
C_Y = B_Y - A_Y
r = hypot(C_X, C_Y)
theta = atan2d(C_Y, C_X) % Output is in degrees