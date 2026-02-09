format compact; clear; clc % World Temperatures
% Place data in same directory as this script
Data = readtable('4 Temperature Deviation.txt', ...
    'Delimiter', {' ','\t', ','}, ...
    'MultipleDelimsAsOne', true, ...
    'VariableNamesLine', 6, 'NumHeaderLines', 7, ...
    'LeadingDelimitersRule', 'ignore')

year = Data(:,1); % Problem 8
dT = Data(:,2);
B = [year, year.^0];
A = inv(B'*B)*B'*dT % 8a

plot(year,dT,'b.-',year,B*A,'r')
xlabel('year');
ylabel('Degrees C')

y = 2050;
T2050 = [y, 1] * A

y = 2100;
T2100 = [y, 1] * A

roots(A - [0;6])


% Problem 9
y = Data(:,1);
dT = Data(:,2);
B = [y.^2, y, y.^0];
format short e
A = inv(B'*B)*B'*dT

plot(y,dT,'b',y,B*A,'r')
xlabel('year')
ylabel('C');
title('Global Temperature Deviations')

y = 2050;
[y^2 y 1]*A

y = 2100;
[y^2 y 1]*A

roots(A - [0;0;6])