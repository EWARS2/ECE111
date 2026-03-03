function [y ] = Integrate( x, dy )
npt = length(x);
y = 0*dy;
for i=2:npt
    y(i) = y(i-1) + 0.5*(dy(i) + dy(i-1)) * (x(i) - x(i-1));
end
end