f = @(x) sin(x) - x^3;
f1 = @(x) cos(x) - 3*x^2;
f2 = @(x) -sin(x) - 6*x;
x0 = 1;
tol = 1e-12;
nmax = 10;
[x, nit, fx] = es2(f, f1, f2, x0, tol, nmax)
