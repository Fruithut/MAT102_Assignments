% Task 2
%   I hereby confirm that I know UiBs guidelines for ethics in regards to 
%   the education and that I have written this submission.
%   Olav Gjerde

y1D = @(y1, y2, t) 0.5*(y2 - y1);
y2D = @(y1, y2, t) (y1 - y2);
y1Start = 22; y2Start = 19;

[x, y, t] = eulerSystemOfTwo(y1D, y2D, y1Start, y2Start, 10, 19, 50);

fprintf("The temperatures of the two rooms settle down to" + ...
        "(room 1 : room 2) by 19 o'clock: " + x(end) + " : " + y(end) + "\n");
plot(t,x,t,y);

% By examining the graph we can see that room 2 has a much more rapid change
% in temperature than room 1, hence the temperature stabilizes at 21 degrees
% which is closer to the original temperature of room 1.
% This behaviour follows naturally from the assumption we made in task 1 
% about room 2 being half the size of room 1 which explained the (1/2) factor.