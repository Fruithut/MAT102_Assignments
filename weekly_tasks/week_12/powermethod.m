function [x, eigenEstimate] = powermethod(Matrix, iterations)
% Power Method 
% Finds the largest eigenvector of a given matrix by calculating:
% startVector_n + 1 = A * startVector_n 
% until
% | A * startVector_n - startVector_n | < tolerance
% returns the eigenvector 'x' and estimate of eigenvalue 'eigenEstimate'

    tolerance = 0.001;
    x = rand(size(Matrix, 1), 1); % random start vector
    
    for i = 1:iterations
        Ax = Matrix*x;
        eigenEstimate = Ax(1)/x(1);
        
        if norm(Ax - x) < tolerance
            return
        end

        x = Ax;
        x = x / norm(x);
    end
    
    warning("The power method did not converge")
end

