function [x, nit, fx] = es6(f, x0, h, tol, nmax)

for nit = 1 : nmax
    fx0 = f(x0);

    %den & h
    den = f(x0 + h) - fx0;
    if den == 0 || h == 0
        x = x0; nit = 0; fx = fx0;
        return;
    end

    %dx & computation of x
    dx = - h * fx0/den;
    x = x0 + dx;

    %check ER
    if abs(dx)/abs(x) < tol
        fx = f(x);
        return;
    end

    %variables update
    x0 = x;
end
nit = -1;
fx = fx0;
