function [total] = midpointSum(func, lowerBound, upperBound, nSplits)
%midpointSum calculates the riemann midpoint sum
    deltaX = (upperBound - lowerBound) / nSplits;
    x = lowerBound:deltaX:upperBound;
    total = 0;
    for i = 2:length(x)
        total = total + func((x(i - 1) + x(i)) / 2) * deltaX;
    end
end
