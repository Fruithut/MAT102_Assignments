% Task 3

fOrg = @(x) x^2 + 1;
fDerived = @(x) 2*x;

x = -1:0.001:1;
y = arrayfun(fOrg, x);
plot(x, y);

% finding solution with newtons method
fprintf("Approaching from the right side we get %f:\n", newton(-1, fOrg, fDerived));

% we get NaN - our function goes towards infinity because we are not able
% to find the root -> and then maxes out the space that the variable can
% hold.