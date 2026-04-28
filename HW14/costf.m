function [ J ] = costf( z ) % Problem 4
a = z(1);
b = z(2);
c = z(3);
d = z(4);
e = z(5);
f = z(6);
g = z(7);
w = [0:0.01:10]' + 1e-6;
s = j*w;
Gideal = 1 * (w < 2)  +  (-0.15*w + 0.9).*(w>2).*(w<6);
G = a ./ ( (s.^2 + b*s + c) .* (s.^2 + d*s + e ).*(s.^2 + f*s + g) );
G = abs(G);
E = abs(Gideal) - G;
J = sum(E .^ 2);
plot(w,Gideal,w,G,'r');
ylim([0,1.4]); xlim([0,10]);
end