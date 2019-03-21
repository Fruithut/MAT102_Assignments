% Task 5

A = [3 -2 -6;
     -3 4 6;
     2 -2 -4];
 
initialState = [1; -15; 6];

% a
stepOneAhead = A * initialState;
stepTwoAhead = A^2 * initialState;

% b 
[eigenVectors, eigenValues] = eig(sym(A));

% c
solvedTerms = rref([eigenVectors initialState]);
firstVector = eigenVectors(:, 1) * solvedTerms(1,4);
secondVector = eigenVectors(:, 2) * solvedTerms(2,4);
thirdVector = eigenVectors(:, 3) * solvedTerms(3,4);

% we now check that the sum of eigenvectors equal our inital statevector
vectorComparison = firstVector + secondVector + thirdVector == initialState;

% d -> now we find a formula for the statevector at time = some n
% we can compare the vectors we get with the ones we got in part a and see
% that our formula is correct
n = 2;
eigenValues(1,1)^n * firstVector + ...
eigenValues(2,2)^n * secondVector + ...
eigenValues(3,3)^n * thirdVector;