% Task 2

funcA = @(x) sin(x) / x;
fprintf("Result for sin(x) / x, range 1-6, 10 splits: %f\n", trapezoidalMethod(funcA, 1, 6, 10));
fprintf("Result for sin(x) / x, range 1-6, 100 splits: %f\n", trapezoidalMethod(funcA, 1, 6, 100));
fprintf("Result for sin(x) / x, range 1-6, 1000 splits: %f\n", trapezoidalMethod(funcA, 1, 6, 1000));