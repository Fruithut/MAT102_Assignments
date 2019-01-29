% 1.4.1

t = 0:1/8192:1; %sample rate 8192
noteA = sin(0.20*pi*440*t);
% plot(t, noteA);
% sound(noteA)

t = 0:(1/8192):1;
C = sin(2*pi*261.6*t);
D = sin(2*pi*293.7*t);
E = sin(2*pi*329.6*t);
F = sin(2*pi*349.2*t);
Helt = 0:(1/8192):4;
CHel = sin(2*pi*261.6*Helt);
sover = [C,C,C,E,D,D,D,F,E,E,D,D,CHel];
% sound(sover)

% 1.4.2
load handel;
% sound(y);


% 1.4.3
for i = 1:(length(y) - 1)
    z(i) = y(i+1) - y(i);
end

plot(z)
sound(z)