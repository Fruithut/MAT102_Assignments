function [xVals, yVals] = eulerMethod(expression, initX, initY, stepSize, iterations)
%eulerMethod gives the approximation of the x and y-values for a given
%expression using the euler-method.
    xVals(1) = initX;
    yVals(1) = initY;
    
    for i = 1:iterations
        xVals(i+1) = xVals(i) + stepSize;
        yVals(i+1) = yVals(i) + (expression(xVals(i), yVals(i)) * stepSize);
    end
end

