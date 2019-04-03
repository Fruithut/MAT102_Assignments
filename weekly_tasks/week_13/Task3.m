% Task 3
% Using euler system function to solve systems with 3 unknowns (Book: 11.2.12)
funcF = @(x,y,z,t) 4*x + z;
funcG = @(x,y,z,t) -2*x + y;
funcH = @(x,y,z,t) -2*x + z - 1;
xStart = -1; yStart = 0; zStart = 1;

X = [x y z]';

[x,y,z,t] = eulerSystemOfThree(funcF, funcG, funcH, ...
                               xStart, yStart, zStart, ...
                               0.0001, 20000);
x(end)
y(end)
z(end)
plot(t,x,t,y,t,z)