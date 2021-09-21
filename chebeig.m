function [zcheb] = chebeig(T,k)
[m n] = size(T);
[q g zeta] = qgammazeta(T,k);
tnroots   =  1i*2*cos(pi/((n/k)+1)*(1:(n/k)));
zcheb = [];
c0 = q(1,k+1) ;
for i = 1:(n/k)
q(1,k+1) = c0+sqrt(g)*tnroots(i);
zcheb = [zcheb; -1*(roots(q))]; 
end
