function [x, nit, res] = es7(A, b, x0, tol, nmax)

% we consider the upper portion of the matrix
L = tril(A);
U = triu(A, 1);

for nit = 1 : nmax
    % computation of x
    x = L\(b - U * x0);

    % ER = norm(xk - xk-1) / norm(xk)
    err = norm(x - x0, inf) / norm(x, inf);

    % check ER
    if err < tol
        res = norm(A * x - b, inf);
        return
    end
    
    % variables update
    x0 = x;
end
res = norm(A * x - b, inf);
nit = -1;
