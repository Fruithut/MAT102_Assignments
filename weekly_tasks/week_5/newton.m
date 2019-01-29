function result = newton(startValue, fOrg, fDerived)
% Newtons method

x = startValue;
threshold = 0.0001;
while (abs(fOrg(x)) > threshold)
    x = x - fOrg(x) / fDerived(x);
    disp(x);
end

result = x;

end