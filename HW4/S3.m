format compact; clear; clc % Fargo Temperatures
% Place data in same directory as this script
Data = readtable('4 Fargo_Weather_Monthly_Avg.txt', ...
    'Delimiter', {' ', '\t'}, 'MultipleDelimsAsOne', true);
year = Data{:,1}; % Note the curly braces. Needed for tables.
T = Data{:,14};
B = [year.^2, year, year.^0]; % Problem 5a
A = inv(B'*B)*B'*T
plot(year,T,'b',year,B*A,'r')
xlabel('year');
ylabel('Degrees F')
Temp = @(y) [y^2 y 1] * A;
T0 = Temp(1945) % Problem 5b
T1 = Temp(2025)
dT = T1 - T0 
T2045 = Temp(2045) % Probblem 5c
T2075 = Temp(2075)