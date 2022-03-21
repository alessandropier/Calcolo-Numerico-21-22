f = @(x) exp(1)^x - 1 - cos(x);
x0 = 0.5;
h = 10^(-6);
tol = 1e-8;
nmax = 10;
[x, nit, fx] = es6(f, x0, h, tol, nmax)
