format compact; clear; clc % Fargo Temperatures
% Place data in same directory as this script
filename = '4 Fargo_Weather_Monthly_Avg.txt';
opts = detectImportOptions(filename);
Data = readtable(filename, opts);
Data = Data(~all(isnan(Data{:,:}), 2), :); % Discard all instances of NaN
year = Data{:,1}; % Note the curly braces. Needed for tables.
T = Data{:,14};
B = [year.^2, year, year.^0]; % Problem 5a
A = inv(B'*B)*B'*T
plot(year,T,'b',year,B*A,'r')
xlabel('year');
ylabel('Degrees F')
