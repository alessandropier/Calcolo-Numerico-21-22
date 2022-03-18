function [x, nit, fx] = es2(f, f1, f2, x0, tol, nmax)

for nit = 1:nmax

    %variables update
    fx0 = f(x0);
    f1x0 = f1(x0);
    f2x0 = f2(x0);

    % den = 0
    den = 2*(f1x0^2) - fx0*f2x0;
    if den == 0
        x = x0; nit = 0;
        return
    end

    % computation of x
    dx = - 2*fx0*f1x0/den;
    x = x0 + dx;

    % check if ER < tol
    if abs(dx)/abs(x) < tol
        fx = f(x);
        return
    end

    % x0 update
    x0 = x;
end
% nmax passed, ER >= tol
nit = -1;
