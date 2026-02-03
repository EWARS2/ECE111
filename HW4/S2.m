format compact; clear; clc % Global CO2 Levels
Data = readmatrix('co2_mm_mlo.txt', "CommentStyle", "#");

year = Data(:,3);
CO2 = Data(:,4);
B = [year.^2, year, year.^0];
format short e
A = inv(B'*B)*B'*CO2
plot(year,CO2,'b',year,B*A,'r')
xlabel('year');
ylabel('CO2 ppm')

