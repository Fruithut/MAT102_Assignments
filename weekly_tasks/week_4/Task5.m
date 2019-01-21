%Task 5

%Part a
sum = 0;
for x = 1:1000000
    sum = sum + (1/x);
end
disp(sum);

%Part b
tot = 0.0;
for n = 1:2000000
    tot = tot + (1/n);
    if (tot >= 15.0)
        disp(n);
        break;
    end
end