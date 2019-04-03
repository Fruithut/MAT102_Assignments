function [xVals, yVals, zVals, time] = eulerSystemOfThree(expressionOne, expressionTwo, expressionThree, initX, initY, initZ, deltaTime, iterations)
%eulerSystemOfThree gives the approximation of the solutions for a
%system of 3 expressions using the know euler-method.
    xVals(1) = initX;
    yVals(1) = initY;
    zVals(1) = initZ;
    % start at time 0
    time(1) = 0;
    
    for i = 1:iterations
        xVals(i+1) = xVals(i) + deltaTime * expressionOne(xVals(i), yVals(i), zVals(i), time(i));
        yVals(i+1) = yVals(i) + deltaTime * expressionTwo(xVals(i), yVals(i), zVals(i), time(i));
        zVals(i+1) = zVals(i) + deltaTime * expressionThree(xVals(i), yVals(i), zVals(i), time(i));

        time(i+1) = time(i) + deltaTime;
    end
end

