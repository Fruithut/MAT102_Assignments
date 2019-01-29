% 1.3.1 
% Newtons method: x_n+1 = x_n - (f(x_n) / f'(x_n))

% function
fOrg = @(x) 2*cos(x) - x;
fDerived = @(x) -2*sin(x) - 1;

% manually
x0 = 0;
x1 = x0 - fOrg(x0) / fDerived(x0);
x2 = x1 - fOrg(x1) / fDerived(x1);
x3 = x2 - fOrg(x2) / fDerived(x2);
x4 = x3 - fOrg(x3) / fDerived(x3);
x5 = x4 - fOrg(x4) / fDerived(x4);

fprintf("Function value for %f = %f \n", x5, fOrg(x5));

% we could do the same calculation with a loop
x = 0;
threshold = 0.001;
while (abs(fOrg(x)) > threshold)
    x = x - fOrg(x) / fDerived(x);
end
