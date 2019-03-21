% Task 3
% Testing eigenValue method

A = [3 -2 -6;
     -3 4 6;
     2 -2 -4];
 
% MATLAB IMPLEMENTATION
[eigenVectors, eigenValues] = eig(A)

% OWN IMPLEMENTATION
[eigVec, eigVal] = powermethod(A, 100)
% Estimation may fluctuate based on eigenvector calculation
% from the power method
eigenValEstimate = calculateEigenvalue(A, eigVec, 0.0001)