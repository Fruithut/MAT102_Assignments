% Task 1a

fOrg = @(x) exp(x) - (4*x);
fDerived = @(x) exp(x) - 4;

x1 = -3:1:3;
y1 = fOrg(x1);
plot(x1, y1);

% finding solution with newtons method
fprintf("Approaching from the right side we get %f:\n", newton(4, fOrg, fDerived));
fprintf("Approaching from the left side we get %f:\n", newton(0, fOrg, fDerived));