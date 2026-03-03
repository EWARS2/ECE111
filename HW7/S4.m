format compact; format shortG; clear; clf; clc; % Shoot Game
Target = 50 + 50*rand
Angle = 30 + 40*rand

subplot(211) % 6)
Shoot2 = @(Speed) Shoot(Speed, Angle, Target);
Shoot2(30)
Shoot2(50)

subplot(212) % 7)
x2 = 20;
for n=1:5
    x0 = x2;
    y0 = Shoot(x0, Angle, Target);
    disp([n, x0, y0])
    x1 = x0 + 0.1;
    y1 = Shoot(x1, Angle, Target);
    x2 = x0 - (x1-x0)/(y1-y0)*y0;
end
disp(y0)