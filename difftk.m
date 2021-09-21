function d =  difftk(A,k)
d = 1;
[m n] = size(A);
for i = 1:n
if i != k
d = d*(A(k)-A(i));
end
end

