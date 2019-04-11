% Task 1
%   I hereby confirm that I know UiBs guidelines for ethics in regards to 
%   the education and that I have written this submission.
%   Olav Gjerde

% y'1 = F(y1, y2) = 0.5*(y2 - y1)
% y'2 = G(y1, y2) = (y2 - y1)

% Explanation: 
% These differential equations model the change of temperature of two rooms. 
% Variables y1 and y2 are the temperatures of room 1 and 2 repectively.

% In the first equation we find (y2 - y1) which tells us that the rate of
% change (in temperature) of room 1 = (temp of room 2 - temp of room 1),
% excluding the 1/2 factor explained down below.
% In the second equation we find (y1 - y2) which is the rate of change in
% temp of room 2.

% These two combined tells ut that the temperature of the rooms will affect
% eachother, as an example given that y1 = 22, y2 = 18 and an arbitrary
% step in time deltaT = 1 we can see that: y'1 = -2 and y'2 = 2 if we know
% take one step of deltaT we get that y1 = 20 and y2 = 20. It stabilized.

% If we now factor in the mulitiplication by 1/2 into the first equation we
% can explain its effect by assuming that room 2 is half the size of room 1
% and hence its temperature affects room 1 less.