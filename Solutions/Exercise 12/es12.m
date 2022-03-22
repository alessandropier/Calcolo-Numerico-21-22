function [lambda, nit] = es12(A, x0, tol, nmax)

v0 = 0;
for nit = 1 : nmax
    yk = x0 / norm(x0, 2);
    x = A\yk;
    vk = transpose(yk) * x;

    % if nit > 1 check ER
    if nit > 1
        if abs(vk - v0) < tol * vk
            lambda = 1 / vk;
            return
        end
    end
    
    % variables update
    v0 = vk;
    x0 = x;
end
lambda = 1 / vk;
nit = -1;

 
