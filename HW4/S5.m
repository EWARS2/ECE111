format compact; clear; clc % World Temperatures
% Place data in same directory as this script
Data = readtable('4 Temperature Deviation.txt', ...
    'Delimiter', {' ','\t', ','}, ...
    'MultipleDelimsAsOne', true, ...
    'VariableNamesLine', 6, 'NumHeaderLines', 7, ...
    'LeadingDelimitersRule', 'ignore')

year = Data{:,1}; % Problem 8
dT = Data{:,2};
B = [year, year.^0];
A = inv(B'*B)*B'*dT % 8a

plot(year,dT,'b.-',year,B*A,'r')
xlabel('year');
ylabel('Degrees C')

temp = @(y) [y, 1] * A;
T2045 = temp(2045) % 8bi
T2075 = temp(2075) % 8bii
roots(A - [0;6]) % 8c

B = [year.^2, year, year.^0]; % Problem 9
format short e
A = inv(B'*B)*B'*dT % 9a

plot(year,dT,'b',year,B*A,'r')
xlabel('year')
ylabel('C');
title('Global Temperature Deviations')

temp = @(y) [y^2 y 1]*A;
T2045 = temp(2045) % 9bi
T2075 = temp(2075) % 9bii
roots(A - [0;0;6]) % 9c