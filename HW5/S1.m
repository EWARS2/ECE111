format compact; clear; clc % Solar Energy
Data = readtable('table.csv');
MJ = rmmissing(Data{:,'AvgSolRad'});
hr = (1:numel(MJ))'/24;
plot(hr,MJ)
xlabel('Day');
ylabel('MJ/m2');
title('Carrington, ND Solar Radiation: April 2023')