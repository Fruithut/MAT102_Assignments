% Testing the function I made to solve examples in the coursebook.

% 10.7.5
sampleMatrixA = [1 2;
                 1 4];
calculateInverseMatrix2by2(sampleMatrixA)


% 10.5.8
matrixFormula = @(i, j) i^2 - 2*j;
createMatrixFromFunction(matrixFormula, 4, 5)