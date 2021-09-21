function [T] = ktoeplitz(a,b,c,n)
% Generates a k toeplitz matrix with diagonals a, 
% upper diagonals b and lower diagonals c.
[x k] = size(a);
m = n/k; 
D0 = kron(ones(1,m),a);
D1 = kron(ones(1,m),b);
Dm1 = kron(ones(1,m),c);

T = diag(D0) + diag(D1(1:(n-1)),1) + diag(Dm1(1:(n-1)),-1); 
