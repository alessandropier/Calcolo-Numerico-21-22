function [x, nit, res] = es8(A, b, tol, x0, nmax)

D = triu(tril(A));
R = A - D;

for nit = 0 : nmax
    % computation of x
    x = D \ (b - R * x0);

    % check ER
    if norm(x - x0, inf) / norm(x, inf) < tol
        res = norm(A * x - b, inf);
        return
    end

    % update variables
    x0 = x;
end
res = norm(A * x - b, inf);
nit = -1;
