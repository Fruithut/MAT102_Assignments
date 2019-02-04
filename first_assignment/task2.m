% TASK 2
format long

% PART 1
f = @(x) 1/x;
% See function definition in "midPointsSum.m"-file
disp(midpointSum(f, 0, 2, 10));

% PART 2
% n=10 : 4.266
% n=100 : 6.5686
% n=10000 : 11.1738
% That midTotal grows as n -> infinity makes sense since smaller increments
% means that we evaluate f(x) at values for x which are closer to 0 which 
% means that the result will be larger. 
% This comes from the fact that lim (1/x) -> infinity as x -> 0 (from the right side).

% PART 3
% Here it looks like the integral is slowly approaching 1.
% Since we know that the integral of f is ln(|x|) + C
% these calculations make sense, given that ln(|e|) - ln(1) = 1
disp(midpointSum(f, 1, exp(1), 100));

% PART 4
% It is a bad idea to use the trapezoidal rule because the starting point
% is at 0 where our function 'f(x) = 1/x' is not defined, and goes toward
% infinity as we get closer to zero from the positive side.