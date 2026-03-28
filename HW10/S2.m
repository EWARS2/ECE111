format compact; format shortG; clear; clf; clc;
% 1-Stage RC Filter
V0 = 10;
V1 = 0;
dt = 0.01;
t = 0;
y = [V1];
while(t < 5)
    dV1 = 25*V0 - 27.5*V1;
    V1 = V1 + dV1*dt;
    t = t + dt;
    y = [y ; V1];
end
t = (0:length(y)-1)' * dt;
plot(t,y); xlim([0,5]);
xlabel('Time (seconds)'); ylabel('Volts');