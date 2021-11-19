function [x] = thomas(T,y)
[m n] = size(T);
a = diag(T,-1);
b = diag(T);
c = diag(T,1);

w =[];
%forward substitution
x = zeros(m,1);
for i = 2:m
w = a(i-1)./b(i-1);
b(i) = b(i) - w.*c(i-1);
y(i) = y(i) - w.*y(i-1);
end

x(m) = y(m)/b(m);

for i = m-1:-1:1
x(i,1) = (y(i) - c(i)*x(i+1))/b(i);
end


