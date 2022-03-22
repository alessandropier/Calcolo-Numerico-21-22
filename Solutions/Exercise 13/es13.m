function [x] = es13(A, b)
x = [0; 0; 0; 0];
n = 4;
x(1) = b(1)/A(1, 1);

for i = 2 : n
    s = 0;
    for j = 1 : i-1
        s = s + A(i, j) * x(j);
    end
    x(i) = 1/A(i, i) * (b(i) - s);
end
