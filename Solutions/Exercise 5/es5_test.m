f = @(x) sin(x) - log(x);
x0 = 2;
tol = 1e-8;
nmax = 10;
[x, nit, fx] = es5(f, x0, tol, nmax)
