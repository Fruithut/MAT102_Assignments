% Task 3 Gauss Jordan

% 10.4.5
% a
leftMatrix1 = [3 -1; 1 1; 5 1];
rightVector1 = [14; 6; 26];
total1 = [leftMatrix1, rightVector1];

% Matlabs Gauss Jordan Elimination gives us
% x = 5 and y = 1
% (x, y) = (5, 1)
ansA = rref(total1);

% b
leftMatrix2 = [2 -4 6 -2 3;
               3 -7 3 -2 -1];
rightVector2 = [0; 1];
total2 = [leftMatrix2, rightVector2];

% x1 = -2 -15x3 + 3x4 - 12.5x5 
% x2 = -1 -6x3 + x4 - 5.5x5
% (x1, x2, x3, x4, x5) = (-2 -15r +3s -12.5t, -1 -6r +s -5.5t, r, s, t)
ansB = rref(total2);

% c
leftMatrix3 = [1 5 -1 0 1;
               2 10 -2 1 0;
               -5 -25 5 0 -4];
rightVector3 = [3; 1; -13];
total3 = [leftMatrix3, rightVector3];

% x1 = 1 - 5x2 + x3
% x4 = -1
% x5 = 2
% (x1, x2, x3, x4, x5) = (1 - 5r + s, r, s, -1, -2)
ansC = rref(total3);

% d
leftMatrix4 = [1 -1 3 1 1;
               5 -4 15 6 6;
               3 -2 9 4 4];
rightVector4 = [0; 2; 4];
total4 = [leftMatrix4, rightVector4];

% No solution: last vector not valid 0 != 1;
ansD = rref(total4);

% e
leftMatrix5 = [1 1 4;
               -1 0 -2;
               2 1 6;
               3 5 16;
               -2 -1 -6];
rightVector5 = [3; -3; 6; 9; -6];
total5 = [leftMatrix5, rightVector5];

% x = 3 - 2z
% y = -2z
% (x, y, z) = (3 - 2t, -2t, t)
ansE = rref(total5);

% 10.4.6
% a
leftMatrix6 = [2 -1 3 2 -1;
               1 2 1 -1 1;
               1 -4 -1 3 -1];
rightVector6 = [7; 6; 0];
total6 = [leftMatrix6, rightVector6];

% x1 = 4 - 0.25x4 - 0.5x5
% x2 = 1 + 0.75x4 - 0.5x5
% x3 = -0.25x4 + 0.5x5
% (x1, x2, x3, x4, x5) = (4 -0.25r -0.5s, 1 +0.75r -0.5s, -0.25r + 0.5s, r, s)
ans1 = rref(total6);

% b
leftMatrix7 = [0.2 1.7 1.3;
               0.3 0.8 0.1;
               1 1 1];
rightVector7 = [0; 0; 1];
total7 = [leftMatrix7, rightVector7];

% (x1, x2, x3) = (1.0235, -0.4353, 0.4118)
ans2 = rref(total7);


