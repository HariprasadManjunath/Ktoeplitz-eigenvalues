function [lambda x] = inverse_itr(A,d,x)
[m n] = size(A);

for i = 1:m
x = thomas(A - d*eye(m),x)/norm(x);
end

lambda = (A*x)./x;
lambda = lambda(1);



