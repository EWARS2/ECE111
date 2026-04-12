format compact; format shortG; clear; clc; % Complex Numbers
toComplex = @(a,b) a * exp(1i*(b)*pi/180);
disp("Problem 1")
A = 8 - 7i;
A1 = abs(A)
A2 = angle(A)
B = 8 + 3i;
B1 = abs(B)
B2 = angle(B)
C = toComplex(8,-44)
D = toComplex(8,172)
disp("Problem 2")
y = (8 - 7i) + (8 + 3i) + (12 + 6i)
y = toComplex(8,-70) + toComplex(8,30) + toComplex(12,60)
disp("Problem 3")
y = (8 - 7i)*(8 + 3i) / (12 + 6i)
y = ((4 + 6i)/(7 + 2i) + (3 - 1i)/(-5 + 12i)) * ((14 + 2i)/(-3 - 8i))
disp("Problem 4")
y = exp(-1 - 2i)
y = log(-1 - 2i)
y = (-1 + 2i)^(6 + 7i)
disp("Problem 5")
x = -3i;
a = 5*x*(x+6) / ( (x-3i)*(x+3) )
x = 3i;
b = 5*x*(x+6) / ( (x+3i)*(x+3) )
x = -5;
c = 5*x*(x+6) / ( (x+3i)*(x-3i) )
disp("Problem 6")
x = -6;
a = 5*x*(x+3i)*(x-3i) / ( (x+7)*(x+6i)*(x-6j) )
x = -7;
b = 5*x*(x+3i)*(x-3i) / ( (x+6)*(x+6i)*(x-6j) )
x = -6i;
c = 5*x*(x+3i)*(x-3i) / ( (x+6)*(x+7)*(x-6j) )
x = 6i;
d = 5*x*(x+3i)*(x-3i) / ( (x+6)*(x+7)*(x+6i) )