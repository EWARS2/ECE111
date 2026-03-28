format compact; format shortG; clear; clf; clc; % 10-Stage RC Filter
V = zeros(10,1); dV = zeros(10,1);
V0 = 10;
dt = 0.002;
t = 0; y = [];
a = 25; b = 52.5; % Multipliers in equations
while(t < 2)
    dV(1) = a*V0 - b*V(1) + a*V(2); % Evaluate all 10 equations
    for i = 2:9
        dV(i) = a*V(i-1) - b*V(i) + a*V(i+1);
    end
    dV(10) = a*V(9) - 27.5*V(10);
    V = V + dV*dt; % Calculate change
    t = t + dt;
    y = [y ; V'];
    plot([0:10], [V0;V], '.-');
end
t = [0:length(y)-1]' * dt;
plot(t,y); xlabel('Time (seconds)'); ylabel('Volts');