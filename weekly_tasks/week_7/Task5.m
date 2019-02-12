% Task 5

% What would happen if we had set y(0) = 0 as the inital condition?
% we would not be able to evaluate the expression we are using, since
% we would try to take the square-root of a negative number.

% Does our answer over/underestimate the real solution?
% This depends on the real function we are looking to approximate,
% larger values for the step-size means that we are following along
% a tangent and hence the slope of it, for longer (i.e: larger distances). 

expression = @(x, y) sqrt(4*y -1);
[xVals, yVals] = eulerMethod(expression, 0, 2, 1, 100);
fprintf("Last y-value %f \n", yVals(end));

realExpression = @(x) x^2 + sqrt(7*x) + 2;
realNums = arrayfun(realExpression, xVals);
fprintf("Last y-value of real solution %f \n", realNums(end));

plot(xVals, yVals,  xVals, realNums);