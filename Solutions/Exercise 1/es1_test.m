f = @(x) sin(x) / x - x;
x0 = 1;
x1 = 0.9;
tol = 1e-10;
nmax = 10;
[x, nit, fx] = es1(f, x0, x1, tol, nmax)
