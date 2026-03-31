format compact; format shortG; clear; clc; clf; cla;
% Natural Response: Eigenvectors and Eigenvalues
a = 25; b = 52.5; % Multipliers in equations
A = zeros(10,10);
for i=1:9
    A(i,i) = -b;
    A(i+1,i) = a;
    A(i,i+1) = a;
end
A(10,10) = -27.5;
[M,V] = eig(A)

function eiganator(V,a,b)
hold on;
dV = zeros(10,1);
V0 = 0;
dt = 0.001;
t = 0;
while(t < 1)
    dV(1) = a*V0 - b*V(1) + a*V(2); % Evaluate all 10 equations
    for i = 2:9
        dV(i) = a*V(i-1) - b*V(i) + a*V(i+1);
    end
    dV(10) = a*V(9) - 27.5*V(10);
    V = V + dV*dt; % Calculate change
    t = t + dt;
    plot([0:10], [V0;V], '.-');
    %pause(0)
end
plot([0;V0])
xlabel('Time (seconds)'); ylabel('Volts');
end

subplot(211); % Problem 8
eiganator(M(:,1),a,b);
subplot(212); % Problem 9
eiganator(10 * rand(10,1),a,b);