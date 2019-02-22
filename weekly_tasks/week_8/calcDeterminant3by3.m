function [determinant] = calcDeterminant3by3(matrix)
%calcDeterminant3by3 calculates the determinant of a 2x2 matrix
    determinant = matrix(1,1) * calcDeterminant2by2(matrix(2:end, 2:end)) - ...
                  matrix(1,2) * calcDeterminant2by2(matrix(2:end, [1 3])) + ...
                  matrix(1,3) * calcDeterminant2by2(matrix(2:end, 1:2));
end

