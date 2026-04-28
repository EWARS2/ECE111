format compact; format shortG; clear; clc; clf; % Filter Design
subplot(211); % Problem 5
costf([1000,2,5,2,17,2,37])
subplot(212); % Problem 6
[Z,e] = fminsearch('costf',[1000,2,5,2,17,2,37])