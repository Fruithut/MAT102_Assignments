% Task 5
% f'(x) = (f(x + h) - f(x)) / h) -> with a small h

h = 1 * 10^(-6);
numDerive = @(func, x, h) (func(x + h) - func(x)) / h;

% First equation:
fOrg = @(x) exp(x) - (4*x);
fDerived = @(x) exp(x) - 4;

fprintf("Equations 1a\n");
fprintf("Result by numerical derivation x = 2: %f, x = 5: %f\n",  numDerive(fOrg, 2, h), numDerive(fOrg, 5, h));
fprintf("Result by real derived function x = 2: %f, x = 5: %f\n",  fDerived(2), fDerived(5));

% Second equation:
gOrg = @(x) exp(x) + cos(x);
gDerived = @(x) exp(x) - sin(x);

fprintf("Equations 1b\n");
fprintf("Result by numerical derivation x = 2: %f, x = 5: %f\n",  numDerive(gOrg, 2, h), numDerive(gOrg, 5, h));
fprintf("Result by real derived function x = 2: %f, x = 5: %f\n",  gDerived(2), gDerived(5));

% Third equation:
hOrg = @(x) x + log(x);
hDerived = @(x) 1 + (1/x);

fprintf("Equations 1b\n");
fprintf("Result by numerical derivation x = 2: %f, x = 5: %f\n",  numDerive(hOrg, 2, h), numDerive(hOrg, 5, h));
fprintf("Result by real derived function x = 2: %f, x = 5: %f\n",  hDerived(2), hDerived(5));