format compact; format shortG; clear; clc % Solar Energy
Data = readtable('table2025.csv'); % Data must be placed in same folder
% Uncomment division to use roughly the same scaling as in examples
MJ = rmmissing(Data{:,'AvgSolRad'});%/26.0463701299;
hr = (1:numel(MJ))'/24;
plot(hr,MJ)
xlabel('Day');
ylabel('MJ/m2');
title('Fargo, ND Solar Radiation: March 2025')

% 2)
k = (54)*(0.89)*(1000)/3600*(0.215) % I can't replicate the example numbers
kWh = sum(MJ)*k                     % How did you get them??

% 3)
Dollars = kWh * 0.11
Pounds = kWh * 1.78

% 4)
Dollars_Per_Year = Dollars * 365/(numel(MJ)/24)
Years = 8649 / Dollars_Per_Year
% If these #s are accurate, yeah, solar looks *darned* good