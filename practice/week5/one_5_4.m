% 1.5.4

% visualize function for length of a parameterized curve
a = 2;
b = 3;
t = 0:(2*pi)/100:2*pi;
x = a*cos(t);
y = b*sin(t);
plot(x,y)

% calculate integral 0 -> 2pi of sqrt(a²sin²(t) + b²cos²(t)) dt,
% we use the trapezoid method (1.5.3) below:
n = 10;
t0 = 0;
t1 = 2*pi;
Deltat = (t1-t0)/n;
lengde = sqrt(a^2*(sin(t0))^2+ b^2*(cos(t0))^2);
for t = t0+Deltat:Deltat:t1-Deltat
    lengde = lengde + 2 * sqrt(a^2*(sin(t))^2+ b^2*(cos(t))^2);
end
lengde = lengde + sqrt(a^2*(sin(t1))^2+ b^2*(cos(t1))^2);
lengde = Deltat*lengde/2