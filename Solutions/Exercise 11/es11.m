function [vk, nit] = es11(A, x0, tol, nmax)

vk0 = 0;
for nit = 1 : nmax
    % computation of yk, x, vk
    yk = x0 / norm(x0, 2); 
    x = A * yk;
    vk = transpose(yk) * x;

    % check ER
    if abs(vk - vk0) < tol * abs(vk)
        return
    end

    % variables update
    x0 = x;
    vk0 = vk;
end
nit = -1;
