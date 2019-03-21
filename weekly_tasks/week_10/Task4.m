% Task 4
% Eirik with backpack = 90kg
% Both with backpacks = 200kg
% The two backpacks = 35kg
% Eirik with backpacks + Ivar without backpack = 182kg

coefficientMatrix = [1 0 1 0;
                     1 1 1 1;
                     0 0 1 1;
                     1 1 1 0];

rightSideEquation = [90; 200; 35; 182];

% The easy way 
rref([coefficientMatrix rightSideEquation]);

% AX = B
% Therefore X = A^-1 * B
% Eirik: 73, Ivar: 92, BackpackEirik: 17, BackpackIvar: 18
coefficientMatrix^-1 * rightSideEquation