% TASK 1

% I hereby confirm that I know UiBs guidelines for ethics in regards to 
% the education and that I have written this submission.
% Olav Gjerde

% PART 1
load julaftentemperaturer.mat

x = 1950:1:2008;
plot(x, temperaturer);
xlabel('Year');
ylabel('Temperature');

% PART 2
sortedTemps = sort(temperaturer);
% We could have taken start and end of the sorted array vs. min/max func.
[minTemp, coldYear] = min(temperaturer);
[maxTemp, warmYear] = max(temperaturer);
% I assume that index nr 1 == 1950, hence we get index + 1949
coldYear = coldYear + 1949;
warmYear = warmYear + 1949;

fprintf("Warmest year and temp: %i %f \nColdest year and temp: %i %f\n", warmYear, maxTemp, coldYear, minTemp);

% PART 3
fprintf("Temperature for 1960: %f\n", temperaturer(1960 - 1949));

% PART 4
startNineties = 1990 - 1949;
endNineties = startNineties + 9;
fprintf("The mean temperature for the 90's were: %f\n", mean(temperaturer(startNineties:endNineties)));

% PART 5
% Interesting data for me personally (IT-student), would be trend data
% about which programming languages and architecture frameworks that are
% being used and have been used throughout the years. It would be interesting
% to connect these trends to data about financial changes (oil crisis etc.)