format compact; clear; clc % Global CO2 Levels
Data = readmatrix('co2_mm_mlo.txt', "CommentStyle", "#");
year = Data(:,3);             % Obtain 3rd column year.decimal_month (X)
CO2 = Data(:,4);              % Obtain 4th column CO2 ppm (Y)
B = [year.^2, year, year.^0]; % Setup for curve fit
format short e; disp('Obtained [a;b;c] for CO2 = aX^2 + bX + c')
A = inv(B'*B)*B'*CO2
plot(year,CO2,'b',year,B*A,'r')
xlabel('year'); ylabel('CO2 ppm')
format shortG
ppm400  = roots(A - [0;0;400])
ppm800  = roots(A - [0;0;800])
ppm1200 = roots(A - [0;0;1200])