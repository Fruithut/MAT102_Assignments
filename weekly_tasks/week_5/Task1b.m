% Task 1b

gOrg = @(x) exp(x) + cos(x);
gDerived = @(x) exp(x) - sin(x);

x = -20:1:3;
y = gOrg(x);
plot(x, y);

% finding solution with newtons method
fprintf("Approaching from the right side we get %f:\n", newton(0, gOrg, gDerived));
fprintf("Approaching from the left side we get %f:\n", newton(-5, gOrg, gDerived));
fprintf("Do note that there are many more roots of this cosine function..\n");