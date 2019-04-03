function [xVals, zVals, time] = eulerSystemOfTwo(expressionOne, expressionTwo, initX, initY, deltaTime, iterations)
%eulerSystemOfTwo gives the approximation of the solutions for a
%system of 2 expressions using the know euler-method.
    xVals(1) = initX;
    yVals(1) = initY;
    % start at time 0
    time(1) = 0;
    
    for i = 1:iterations
        xVals(i+1) = xVals(i) + deltaTime * expressionOne(xVals(i), yVals(i), time(i));
        yVals(i+1) = yVals(i) + deltaTime * expressionTwo(xVals(i), yVals(i), time(i));
        
        time(i+1) = time(i) + deltaTime;
    end
end

