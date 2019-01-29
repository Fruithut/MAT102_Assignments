% 1.3.4 Finding the derivative of a function in several points using a small value (h)
% f'(x) = (f(x + h) - f(x)) / h) -> with a small h

% Ex 1
x = -10:0.1:10;
h = 10^(-6);
y = [];
for i = 1:length(x)
    y(i) = (sin(x(i) + h) - sin(x(i))) / h;
end

y2 = cos(x);
plot(x,y, x, y2)

% Ex 2
% x = 0:0.1:15;
% y = besselj(3,x);
% h = 10^(-6);
% yMerket = [];
% for i = 1:length(x)
%     yMerket(i) = (besselj(3,x(i) + h) - besselj(3,x(i))) / h;
% end
% plot(x,y,x,yMerket);