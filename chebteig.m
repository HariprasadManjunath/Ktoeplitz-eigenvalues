function [e2] = chebteig(T,k)
[m n] = size(T);
[q g zeta] = qgammazeta(T,k);
tnroots   =  1i*2*cos(pi/((n/k)+1)*(1:(n/k)));
tnm1roots = 1i* 2*cos(pi/(n/k)*(1:(n/k)-1));


zapprox = [];

e1 = chebeig(T,k);
c0 = q(1,k+1);
for i = 1:(size(e1)(1))
zetaval = sum(zeta.*e1(i,1).^(k:-1:0));
lambda = sum(q.*((-e1(i,1)).^(k:-1:0)))/(-1*sqrt(g));
[val ind] = sort(abs(lambda-tnroots));
[val ind2] = sort(abs(lambda-tnm1roots));
tnd = difftk(tnroots,ind(1));
tnm1d = difftk(tnm1roots,ind2(1));

p1 = tnroots(ind(1));
p2 = tnm1roots(ind2(1));

nr = (p1*tnd + zetaval*p2*tnm1d);
dr = (tnd + zetaval*tnm1d);

tval = nr/dr;
q(1,k+1) = c0 + sqrt(g)*tval;
qroots = roots(q);
[val ind] = sort(abs(qroots+e1(i,1)));
zapprox = [zapprox; -1*qroots(ind(1))];
end

e2 = zapprox;






