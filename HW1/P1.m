% Problem #1 
% Graph
x = (0.01:0.001:10)';
y1 = x + 1 ./ x;
y2 = x + (0 .* x);
plot(x,y)
ylim([0,10])
grid