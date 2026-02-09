format compact; clear; clc % Sea Ice
% Place data in same directory as this script
Data = readtable('4 SeaIce.txt', ...
    'Delimiter', {' ', '\t'}, 'MultipleDelimsAsOne', true)