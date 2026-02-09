format compact; clear; clc % Sea Ice
% Place data in same directory as this script
Data = readtable('4 SeaIce.txt', ...
    'Delimiter', {' ', '\t'}, 'MultipleDelimsAsOne', true);
year = Data{:,1};
Ice = Data{:,2};

B = [year, year.^0]; % Problem 6a
A = inv(B'*B)*B'*Ice

subplot(211)
plot(year,Ice,'b.-',year,B*A,'r')
xlabel('year')
ylabel('m km^2');
title('Arctic Sea Ice Area')
roots(A) % Problem 6b

B = [year.^2, year, year.^0]; % Problem 7a
A = inv(B'*B)*B'*Ice

subplot(212)
plot(year,Ice,'b',year,B*A,'r')
xlabel('year');
ylabel('Area (M km^2)')
roots(A) % Problem 7b