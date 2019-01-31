% TASK 3

% short anonymous function
circleSectorArea = @(radius, angle) (angle/2) * radius^2;

% the following should then be equal to pi * 10^2 -> 314.1592..
circleSectorArea(10, 2*pi)