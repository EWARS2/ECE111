format compact; format shortG; subplot; clear; clc % Solar Energy 1)
Data = readtable('solar3-2025.csv'); % Data must be placed in same folder
% Make sure data is in SI not US!
MJ = rmmissing(Data{:,'AvgSolRad'});
hr = (1:numel(MJ))'/24;
plot(hr,MJ)
xlabel('Day');
ylabel('MJ/m2');
title('Fargo, ND Solar Radiation: March 2025');

% 2)
k = (54)*(0.89)*(1000)/3600*(0.215)
kWh = sum(MJ)*k

% 3)
Dollars = kWh * 0.11
Pounds = kWh * 1.78

% 4)
Dollars_Per_Year = Dollars * 365/(numel(MJ)/24)
Years = 8649 / Dollars_Per_Year