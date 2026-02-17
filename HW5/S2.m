format compact; format shortE; clear; clc % Wind Energy 5)
Data = readtable('wind4-2023.csv'); % Data must be placed in same folder
% Make sure data is in SI not US!
Wind = rmmissing(Data{:,'AvgWindSpeed'});
hr = (1:numel(Wind))'/24;
subplot(221)
plot(hr,Wind)
xlabel('Day');
ylabel('m/s');
title('Fargo, ND Wind Speed: April 2023');

function [kW] = PowerCurve( Wind ) % 6a)
x = [3,4,5,6,7,8,9,10,11,12,13]';
y = [0 33 311 685 1235 1786 2479 3189 3813 4253 4500]';
B = [x.^3, x.^2, x, x.^0];
A = inv(B'*B)*B'*y;
kW = 0*Wind;
for i=1:length(Wind)
    if(Wind(i) < x(1))
        kW(i) = y(1);
    elseif(Wind(i) > x(end))
        kW(i) = y(end);
    else
        kW(i) = [Wind(i)^3, Wind(i)^2, Wind(i), 1]*A;
    end
end
plot(x,y,'r',Wind,kW,'r.')
end

subplot(222)
x = [0:0.1:15]';
kW = PowerCurve(x);

subplot(223) % 6b)
kW = PowerCurve(Wind*1.8);
plot(hr/24, kW)
xlabel('Day');
ylabel('kW');

% 7)
kWh = sum(kW) * 1
Dollars = kWh * 0.11
Pounds = kWh * 1.78

% 8)
Dollars_Per_Year = Dollars * 365/(numel(Wind)/24)
format shortG;
Years = 5.85e6 / Dollars_Per_Year