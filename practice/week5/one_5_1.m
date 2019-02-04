Deltat = 0.0001; % delta-t = change in t pr iteration
i = 1; % counter of integral array
for x = 0.01:0.01:4
    
    % overestimate
    storSum = 0.5;
    for t = 0:Deltat:(x-Deltat)
        storSum = storSum + Deltat *exp(-0.5*t^2)/sqrt(2*pi);
    end
    
    % underestimate
    litenSum = 0.5;
    for t = Deltat:Deltat:(x)
        litenSum = litenSum + Deltat *exp(-0.5*t^2)/sqrt(2*pi);
    end
    
    % take the mean value as integral-value
    integralet(i) = (storSum + litenSum)/2;
    i = i+1;
end
x = 0.01:0.01:4;
plot(x,integralet)