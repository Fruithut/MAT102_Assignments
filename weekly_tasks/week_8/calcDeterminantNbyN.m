function [determinant] = calcDeterminantNbyN(matrix)
%calcDeterminantNbyN calculates the determinant of a NxN matrix
%{
  Explanation of loop with recursive calls:

  | (-1)^(1+i) alternates between positive and negative according to row
    index.
  | matrix(1, i) grabs the index of top row to be multiplied by the sub
    matrix.
  | matrix(2:end, [1:i-1 i+1:end]) grabs the sub-matrix that we need by
    excluding the column that the index i is currently on
  | We then multiply by the recursive call to the determinant-function with
    the sub-matrix as input.
  | This continues until we have reduced the input to the recursive call
    down to the basecase of a 2x2 matrix

  / Credit's due: https://www.slideshare.net/SoniaPahuja4/determinant-matlab-code
%}
    [numRows, numCols] = size(matrix);
    if (size(matrix) == [1 1])
        determinant = matrix(1,1);
    elseif (size(matrix) == [2 2])
        determinant = matrix(1,1) * matrix(2,2) - matrix(1,2) * matrix(2,1);
    else
        determinant = 0;
        for i = 1:numCols
            determinant = determinant + ((-1)^(1+i) * matrix(1, i) * calcDeterminantNbyN(matrix(2:end, [1:i-1 i+1:end])));
        end
    end
end

