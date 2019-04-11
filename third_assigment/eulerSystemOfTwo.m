function [xVals, yVals, time] = eulerSystemOfTwo(expressionOne, expressionTwo, initX, initY, timeStart, timeEnd, steps)
%eulerSystemOfTwo gives the approximation of the solutions for a
%system of 2 expressions using the known euler-method.
    xVals(1) = initX;
    yVals(1) = initY;
    
    deltaTime = (timeEnd - timeStart) / steps;
    time = linspace(timeStart, timeEnd, steps);
    
    for i = 1 : (steps - 1)
        xVals(i+1) = xVals(i) + deltaTime * expressionOne(xVals(i), yVals(i), time(i));
        yVals(i+1) = yVals(i) + deltaTime * expressionTwo(xVals(i), yVals(i), time(i));
    end
end

