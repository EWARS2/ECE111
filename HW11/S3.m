format compact; format shortG; clear; clc; clf; % 30-Stage RLC Filter
N = 30;   % number of nodes
V = zeros(N,1);
dV = zeros(N,1);
ddV = zeros(N,1);
t = 0;
dt = 0.02;
a = 500/33; b = 1000/33; c = a; d = 1/33;
while(t < 10)
    if (t < 2)
        V0 = 100 * ( ( sin(0.5*pi*t) )^2 );
    else
        V0 = 0;
    end
    ddV(1) = a*V0 - b*V(1) + c*V(2) - d*dV(1);
    for i=2:N-1
        ddV(i) = a*V(i-1) - b*V(i) + c*V(i+1) - d*dV(i);
    end
    ddV(N) = a*V(N-1) - c*V(N) - 130/33*dV(N);
    %                            ^^^
    %                      change this term
    for i=1:N
        dV(i) = dV(i) + ddV(i)*dt;
        V(i) =  V(i) +  dV(i)*dt;
    end
    t = t + dt;
    plot(0:N,[V0;V],'.-');
    %clc
    %disp(t)
    %pause(0.01);
end
ylim([-150,250]);
disp(t)