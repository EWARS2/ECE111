clc, clear, format compact % Robot Tip Position (Forward Kinematics)
[q1, q2, q3] = deal(40, 50, 60); % Problem 5
[x0, y0] = deal(0); % Origin
x1 = 2 * cosd(q1);
y1 = 2 * sind(q1);
x2 = x1 + cosd(q1 + q2);
y2 = y1 + sind(q1 + q2);
x3 = x2 + cosd(q1 + q2 + q3);
y3 = y2 + sind(q1 + q2 + q3);
disp('Tip Position'), disp([x3,y3])
plot([x0,x1,x2,x3], [y0,y1,y2,y3],'b.-')
xlim([0,4]), ylim([0,3]), grid