% Task 1c

hOrg = @(x) x + log(x);
hDerived = @(x) 1 + (1/x);

x = -1:0.0001:3;
y = hOrg(x);
plot(x, y);

% finding solution with newtons method
fprintf("Approaching from the right side we get %f:\n", newton(2, hOrg, hDerived));
fprintf("Approaching from the left side we get %f:\n", newton(0, hOrg, hDerived));