function [determinant] = calcDeterminant2by2(matrix)
%calcDeterminant2x2 calculates the determinant of a 2x2 matrix
    determinant = matrix(1,1) * matrix(2,2) - matrix(1,2) * matrix(2,1);
end

