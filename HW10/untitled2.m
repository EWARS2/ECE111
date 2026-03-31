format compact; format shortG; clear; clc;

a = 25; b = 52.5; % Multipliers in equations

V = [ -2.9558
    5.6490
    -7.8402
    9.3348
    -10.0000
    9.7766
    -8.6845
    6.8208
    -4.3510
    1.4946 ];

%a = 10; b = 20.1;
dV = zeros(10,1);
V0 = 0;
dt = 0.001;
t = 0;
while(t < 1)
    dV(1) = a*V0 - b*V(1) + a*V(2); % Evaluate all 10 equations
    for i = 2:9
        dV(i) = a*V(i-1) - b*V(i) + a*V(i+1);
    end
    dV(10) = a*V(9) - 10.1*V(10);
    V = V + dV*dt; % Calculate change
    t = t + dt;
    plot([0:10], [V0;V], '.-');
    pause(0)
end
%plot([0;V0])
xlabel('Time (seconds)'); ylabel('Volts');