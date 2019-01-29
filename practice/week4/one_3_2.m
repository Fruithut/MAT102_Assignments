% 1.3.2

% function given (e^x + x)
fOrg = @(x) exp(x) + x; % defined for -1 -> 0
fDerived = @(x) exp(x) + 1;

a = fOrg(-1);
b = fOrg(0);
fprintf("Since f(-1): %f and f(0): %f, and the function is continuous, \nthere must be a value x such that f(x) = 0\n", a, b);

% finding solution with newtons method
x = 0;
threshold = 0.001;
while (abs(fOrg(x)) > threshold)
    x = x - fOrg(x) / fDerived(x);
end

fprintf("Function value for %f = %f \n", x, fOrg(x));