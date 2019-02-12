% Task 1
format long

funcA = @(x) sin(x);
fprintf("Result for function A %f\n", trapezoidalMethod(funcA, 0, pi, 10));

funcB = @(x) sin(x^2);
fprintf("Result for function B %f\n", trapezoidalMethod(funcB, 0, pi, 10));

