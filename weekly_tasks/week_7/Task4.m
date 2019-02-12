% Task 4

% a
firstExpression = @(x, y) y^2 - x^2; 
[xVals1, yVals1] = eulerMethod(firstExpression, 0, 4, 1, 2);

% b (uses same expression as first, with different inital value)
[xVals2, yVals2] = eulerMethod(firstExpression, 0, -4, 1, 2);

% c
secondExpression = @(x, y) y^2 + y + 1; 
[xVals3, yVals3] = eulerMethod(secondExpression, 3, 2.3, 1, 2);

% plot all
plot(xVals1, yVals1, xVals2, yVals2, xVals3, yVals3);

