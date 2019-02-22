% Task 3

% 10.6.1
A = [5 4;
     3 7];
fprintf("The determinant of 10.6.1 a: %f\n", calcDeterminant2by2(A));

B = [0 3;
     1 4];
fprintf("The determinant of 10.6.1 b: %f\n", calcDeterminant2by2(B));
 
%  10.6.2
firstMatrix = [2 3 5;
               1 0 4;
               -1 3 2];
fprintf("The determinant of 10.6.2 a: %f\n", calcDeterminant3by3(firstMatrix));

secondMatrix = [1 -3 -5;
               7 -3 0;
               4 -2 2];
fprintf("The determinant of 10.6.2 b: %f\n", calcDeterminant3by3(secondMatrix));

% 10.6.3
largerMatrix = [2 3 -3 0;
               0 2 0 4;
               -1 1 -2 0;
               0 1 1 1];
fprintf("The determinant of 10.6.3: %f\n", calcDeterminantNbyN(largerMatrix));
           

