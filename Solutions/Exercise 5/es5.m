function [x, nit, fx] = es5(f, x0, tol, nmax)

fx0 = f(x0);
for nit = 1 : nmax
    %check den
    den = f(x0 + fx0) - fx0;
    if den == 0
        x = x0; nit = 0; fx = fx0;
        return;
    end

    %computation of dx & x
    dx = - (fx0^2)/den;
    x = x0 + dx;

    %check ER
    if abs(dx)/abs(x) < tol
        fx = f(x);
        return
    end

    %variables update
    x0 = x;
    fx0 = f(x0);
end
fx = fx0;
nit = -1;
