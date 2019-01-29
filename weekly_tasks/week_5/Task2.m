% Task 2

fOrg = @(x) x*exp(-x^2);
fDerived = @(x) -(2*x^2 - 1) * exp(-x^2);

x = -5:0.001:5;
y = arrayfun(fOrg, x);
plot(x, y);

% finding solution with newtons method
fprintf("Approaching from the right side at (x=0.2) we get %f:\n", newton(0.2, fOrg, fDerived));
% fprintf("Approaching from the left side we get %f:\n", newton(0, fOrg, fDerived));

% for startvalue 0.5, newtons method end up being stuck between two
% extremal points
% for startvalue 0.51 it stops at 3.31, even though this function goes
% towards 0 as x appraoches infinity.