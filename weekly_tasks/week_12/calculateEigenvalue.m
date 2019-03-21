function [eigenvalue] = calculateEigenvalue(Matrix, eigenvector, tolerance)
% calculateEigenvalue 
% Finds the eigenvalue for the Matrix paired with its eigenvector
    
    product = Matrix * eigenvector;
    % Divide product element-by-element with the eigenvector
    values = product ./ eigenvector;
    eigenvalue = mean(values);
    
    deviation = abs(values - eigenvalue);
    if max(deviation) > tolerance
        warning('Value found not withing specified tolerances');
    end
end

