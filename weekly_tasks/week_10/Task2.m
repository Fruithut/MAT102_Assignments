% Task 2

% 10.8.2
% a (we use sym to get a more 'human'-readable format for our eigenvector)
A = sym([8 -3;
         -2 3]);
% Eigenvectors are received as first paramter and eigenvalues as second
[V, D] = eig(A)

% b
B = sym([2 7;
         0 1]);
[V2, D2] = eig(B)

% 10.8.3
% d
D = sym([-5 0 0;
          1 1 0;
         -1 4 1]);
[V3, D3] = eig(D)