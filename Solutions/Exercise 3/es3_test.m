f = @(x) 1 - (x^2)/2 - x^3;
f1 = @(x) - x -3*x^2;
x0 = 1;
tol = 1e-10;
nmax = 10;
[x, nit] = es3(f, f1, x0, tol, nmax)
