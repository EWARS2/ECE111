format compact; format shortG; % Animation in Matlab
clear; clf; clc;               % with Numerical Integration

g = -1.37;
x = 0; y = 3;
dx = 100/73; dy = 1; % dx = 100/73 to hit x = 10 (Default: 1)
t = 0; dt = 0.05;
Bounce = 0;
while(Bounce < 2)
    ddx = 0;
    ddy = g;
    dx = dx + ddx * dt;
    dy = dy + ddy * dt;
    x = x + dx * dt;
    y = y + dy * dt;
    t = t + dt;
    if(y < 0)
        dy = abs(dy);
        Bounce = Bounce + 1;
    end
    plot(x,y,'ro',[0,12],[0,0],'b',0,10,'b+');
    xlim([0,12]);
    ylim([0,4]);
    hold on
    %pause(0.01);
end