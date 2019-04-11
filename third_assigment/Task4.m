% Task 4
%   I hereby confirm that I know UiBs guidelines for ethics in regards to 
%   the education and that I have written this submission.
%   Olav Gjerde

y1D = @(y1, y2, t) 0.5*(y2 - y1);
y2D = @(y1, y2, t) (y1 - y2);
y1Start = 22; y2Start = 19;

[x1, y1, t1] = eulerSystemOfTwo(y1D, y2D, y1Start, y2Start, 10, 19, 50);
[x2, y2, t2] = eulerSystemOfTwoImp(y1Start, y2Start, 10, 19, 50);
plot(t1, x1, t1, y1, t2, x2, t2, y2);

% COMMENT:
% The blue and orange lines represent the solution from regular euler (room 1 and room 2)
% While the yellow and purple represent the solution from implicit euler.
%
% POINT 1: We can see that the results from the implicit version converges to 21
% degress which is equal to our original results - but at a much slower pace 
% than regular euler for the same amount of steps in time.
%
% POINT 2: I noticed that with a higher number of steps for regular euler to
% increase the precision, we can achieve about the same performance with a
% much smaller amount of steps with implicit euler.

function [xVals, yVals, time] = eulerSystemOfTwoImp(initX, initY, timeStart, timeEnd, steps)
%eulerSystemOfTwoImp gives the approximation of the solutions for a system 
%of 2 expressions using the implicit euler-method.
    xVals(1) = initX; yVals(1) = initY;
    deltaTime = (timeEnd - timeStart) / steps;
    time = linspace(timeStart, timeEnd, steps);
    
    % Specific coefficient matrix of system belonging to this task (y1D, y2D)
    coeffMatrix = [1+(deltaTime/2) -(deltaTime/2); -deltaTime (1+deltaTime)];
    invCoeffMatrix = inv(coeffMatrix);
    
    for i = 1 : (steps - 1)
        % MATLAB suggest using left matrix division for a faster
        % and more accurate solution: result = coeffMatrix\[xVals(i); yVals(i)];
        result = invCoeffMatrix*[xVals(i); yVals(i)];
        xVals(i+1) = result(1);
        yVals(i+1) = result(2);
    end
end