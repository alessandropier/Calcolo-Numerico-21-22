function [x, nit] = es3.m(f, f1, x0, tol, nmax)

for nit = 1:nmax
        
    f1x0 = f1(x0);
    
    % den == 0
    if f1x0 == 0
        x = 0; nit = 0;
        return
    end
    
    % computation of x
    yk = x0 - f(x0)/f1x0;
    dx = - f(yk)/f1x0;
    x = yk + dx;

    % check ER
    if abs(dx)/abs(x) < tol
        return
    end

    %variables update
    x0 = x;
end
% nit > nmax, tol not reached
nit = -1;
