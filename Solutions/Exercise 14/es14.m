function [x] = es14(A, b)

n = 4;
x = [0; 0; 0; 0];
x(n) = b(n) / A(n, n);

for i = n-1 : -1 : 1
    s = 0;
    for j = i + 1 : n
        s = s + A(i, j) * x(j);
    end
    x(i) = 1/A(i, i) * (b(i) - s);
end
