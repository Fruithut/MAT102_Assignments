% Task 3
%   I hereby confirm that I know UiBs guidelines for ethics in regards to 
%   the education and that I have written this submission.
%   Olav Gjerde

% We add another source of heat to room 1 (an oven set to 23 degrees)
% y'1 = F(y1, y2) = 0.5*(y2 - y1) + k(23 - y1)
% where k is the effect/strength of the oven

k = 0.281;
y1D = @(y1, y2, t) 0.5*(y2 - y1) + k*(23 - y1);
y2D = @(y1, y2, t) (y1 - y2);
y1Start = 22; y2Start = 19;

[x, y, t] = eulerSystemOfTwo(y1D, y2D, y1Start, y2Start, 10, 19, 50);

fprintf("The temperature of the two rooms settle down to" + ...
        "(room 1 : room 2) by 19 o'clock: " + x(end) + " : " + y(end) + "\n");
plot(t,x,t,y);

% By trial and error we can see that k = 0.281 is enough of an effect 
% for the oven to raise the temperature of room 2 to about 22.5 degrees 
% by 19 o'clock