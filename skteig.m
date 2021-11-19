function [u v] = skteig(T,k)
[m n] = size(T);
e1 = chebeig(T,k);
v = [];
u = [];
for i = 1:m
x = randn(m,1);
[v1 u1] = inverse_itr(T,e1(i),x);
v = [v v1];
u = [u u1/norm(u1)];
end
v = diag(v);
