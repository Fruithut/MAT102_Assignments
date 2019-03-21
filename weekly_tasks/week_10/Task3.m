% Task 3

% 10.9.1
initialStateMatrix = [300; 0];

% Found the changematrix on paper based on the task description
% Part A
M = [0 0.5;
     1 0.5];
 
% Part B
% After 1 day we get:
firstChange = M * initialStateMatrix;

% After 2 days we get (alt: M * firstChange):
secondChange = M^2 * initialStateMatrix;

% Part C
% Since the determinant of the change-matrix M is not equal 0, the matrix is invertable
mDeter = det(M);

% Let's step back in time with the inverse of the change-matrix
mInverse = inv(M);
stateMatrix = [85; 215];

stepBackTwo = mInverse^2 * stateMatrix;

% Part D
% A matrix A such that multiplying by it steps us 4 days into the future
stepAheadFourDays = sym(M^4);

% Part E
% We need to find the statevector for: time = some n

% first we find eigenvectors and eigenvalues
[eigenVectors, eigenValues] = eig(sym(M));
% then we solve for the terms (x, y)
solvedTerms = rref([eigenVectors initialStateMatrix]);
% then we insert this into their eigenvectors
firstVector = eigenVectors(:, 1) * solvedTerms(1,3);
secondVector = eigenVectors(:, 2) * solvedTerms(2,3);
% to get our statevector for time = n we do
n = 0;
eigenValues(1,1)^n * firstVector + eigenValues(2,2)^n * secondVector



