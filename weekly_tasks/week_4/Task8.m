%Task 8
%4.2.1 109

%a
funcA = @(x)(3 + x^3)/(x - 3);
a = 0:0.05:2;
b = arrayfun(funcA, a);

%b
funcB = @(x)((10 * x^2) + x + 1) / ((2 * x^2) + 4);
x = 0:1:20;
y = arrayfun(funcB, x);

%plot both
plot(a, b, x, y);