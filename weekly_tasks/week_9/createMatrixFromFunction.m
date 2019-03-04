function [constructedMatrix] = createMatrixFromFunction(func, rows, cols)
    constructedMatrix = zeros(rows, cols);
    for i = 1:rows
        for j = 1:cols
            constructedMatrix(i,j) = func(i,j);
        end
    end
end

