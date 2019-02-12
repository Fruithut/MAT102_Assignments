function [total] = trapezoidalMethod(func, lowerBound, upperBound, nSplits)
%trapezoidalMethod gives the area under a function between the upper and lower bound
    deltaX = (upperBound - lowerBound) / nSplits;
    x = lowerBound:deltaX:upperBound;
    
    total = func(x(1)) + 2.0 * sum(arrayfun(func, x(2:end-1))) + func(x(end));
    total = total * (deltaX / 2);
end

