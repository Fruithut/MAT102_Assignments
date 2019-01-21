%Task 7
%2.1.3 p55

x = -10:1:3;
y = [];

for i = 1:length(x)
    if (x(i) ~= -2)
        y(i) = x(i) - 2;
    elseif (x(i) == -2)
        y(i) = 5;
    elseif (x(i) > 1 && x(i) <= 3)
        y(i) = x;
    end
end
    
plot(x, y);