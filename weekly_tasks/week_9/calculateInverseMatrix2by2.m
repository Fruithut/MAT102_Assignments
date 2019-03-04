function [inverseMatrix] = calculateInverseMatrix2by2(matrix)
%Calculate the inverse of a 2 x 2 matrix

    % Uses my determinant function from last weeks tasks
    det = calcDeterminant2by2(matrix);
    
    if (det == 0)
        argException = MException("Determinant 0, inverse not possible");
        throw(argException);
    end
    
    inverseMatrix = [(matrix(2,2) / det) (-matrix(1,2) / det);
                     (-matrix(2,1) / det) (matrix(1,1) / det)];
end

