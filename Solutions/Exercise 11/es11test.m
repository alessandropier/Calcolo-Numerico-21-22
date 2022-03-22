A = [13, 2, 0; 2, 1, 3; 0, 3, 22];
x0 = [1; 1; 1];
tol = 1e-6;
nmax = 50;
[vk, nit] = es11(A, x0, tol, nmax)
