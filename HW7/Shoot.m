function [ Error ] = Shoot( Speed, Angle, Target )
x = 0;
y = 0;
dx = Speed * cos(Angle*pi/180);
dy = Speed * sin(Angle*pi/180);
dt = 0.01;
N = 0;
plot(Target,0,'bx');
xlim([0,120]);
ylim([0,70]);
hold on
while(y >= 0)
    ddx = 0;
    ddy = -9.8;
    dx = dx + ddx*dt;
    dy = dy + ddy*dt;
    x = x + dx*dt;
    y = y + dy*dt;
    N = mod(N+1,10);
    if(N == 0) plot(x,y,'ro',Target,0,'bx'); end
    %pause(0.01);
end
x = x - y*(dx/dy);
Error = x - Target;
end