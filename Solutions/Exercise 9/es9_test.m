f = @(x) sin(pi * x);
a = 0;
b = 1;
n = 4;
I0 = es9(f, a, b, n);


tol = 1e-4;
for k = 1 : 10
    n = 2 * n;
    I1 = es9(f, a, b, n);
    if abs(I1 - I0) < tol
        fprintf('I = %1.5f\n', I1)
        fprintf('n = %d\n', n)
        return
    end
    I0 = I1;
end
