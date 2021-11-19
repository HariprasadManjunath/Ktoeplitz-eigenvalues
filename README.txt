# Ktoeplitz-eigenvalues
Finding eigenvalues of tridiagonal k toeplitz matrices
These are OCTAVE functions for computing eigenvalues and eigenvectors of tridiagonal k-Toeplitz matrices
the details of the approximation methods can be found at 
https://www.sciencedirect.com/science/article/abs/pii/S0096300321006019?dgcid=rss_sd_all


ktoeplitz.m

A = ktoeplitz(a,b,c,k)
generates k-toepltz matrix with three diagonal entries from the array a,b, and c


difftk.m
b = difftk(A,k) evaluates the derivative of the Chebyshev polynomial having roots given by A, at a Chebyshev node k. 

qgammazeta.m
[q gamma zeta] = qgammazeta(A,k)
evaluate the polynomial coefficients q, constant gamma and polynomial coefficients zeta.


chebeig.m
e = chebeig(A,k) evaluates the approximate eigenvalues of tridiagonal k-Toeplitz matrix A.

dependencies:   qgammazeta.m  

chebteig.m
e = chebeig(A,k) evaluates the approximate eigenvalues of tridiagonal k-Toeplitz matrix A using Taylor-series on limiting set.
dependencies : difftk.m, qgammazeta.m  

inverse_itr.m
[lambda u] = inverse_itr(A,x,l)
performs the inverse iteration with the shift l, starting vector x on the matrix A to find the eigenvalue lambda and eigenvector x.

thomas.m
[y] = thomas(A,x)
solves Ax=y using Thomas algorithm. 

skteig.m 
[u v] = skteig(A,k)
For symmetrix matrices, solves eigenvalue problem using inverse iteration and thomas algorithm
dependencies : thomas.m, inverse.m, chebeig.m
