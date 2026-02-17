format compact; format shortG; clear; clf; clc; % Path Planning
t = (-2:0.01:6) + 1e-6; % This fixes erratic /by0 at joints

subplot(311) % 4)
q = t/3 .* (t>0) .* (t<3) + 1*(t>3);
dq = derivative(t, q);
ddq = derivative(t, dq);
plot(t,q,'r',t,dq,'g',t,ddq,'b')
xlim([-2,6])
ylim([-2,2])
xlabel('Time (seconds)')
title("Problem 4")

subplot(312) % 5)
q = (0.5 - 0.5*cos(pi*t/3)) .* (t>0) .* (t<3) + 1*(t>3);
dq = derivative(t, q);
ddq = derivative(t, dq);
plot(t,q,'r',t,dq,'g',t,ddq,'b')
xlabel('Time (seconds)')
xlim([-2,6])
ylim([-0.75,1.5])
title("Problem 5")

subplot(313) % 6)
q = (t.^2)/8 .* (t>0) .* (t<2) + (-0.5*t.^2+3*t-3.5).*(t>2).*(t<3 ...
    ) + 1*(t>3);
dq = derivative(t, q);
ddq = derivative(t, dq);
plot(t,q,'r',t,dq,'g',t,ddq,'b')
xlim([-2,6])
ylim([-1,1.5])
xlabel('Time (seconds)')
title("Problem 6")