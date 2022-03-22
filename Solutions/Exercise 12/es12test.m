A = [13, 2, 0; 2, 1, 3; 0, 3, 22];
x0 = [1; 1; 1];
tol = 1e-6;
nmax = 10;
[lambda, nit] = es12(A, x0, tol, nmax)
