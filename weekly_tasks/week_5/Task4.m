% Task 4

% 1. Explain why cos(x) = sqrt(x) must have atleast one solution:
% This is because cos(x) ranges from -1 -> 1, and there exists a value
% -1 < x < 1 such that cos(x) = sqrt(x).
% Do note that both are continous!

% 2. Explain how we can be sure that the equation only has one
% solution:
% This is because both functions are continous and since sqrt(x) becomes
% larger as x grows, these two functions will only intersect once.

% 3. Solving the problem by using newtons method:
fOrg = @(x) cos(x) - sqrt(x);
fDerived = @(x) -sin(x) - (1/(2*sqrt(x)));

fprintf("By using newtons method we find the solution to cos(x) = sqrt(x): %f", newton(0.1, fOrg, fDerived));

