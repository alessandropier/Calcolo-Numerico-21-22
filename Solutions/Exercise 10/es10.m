function [I] = es10(f, a, b, n)

h = (b-a) / n;
I0 = f(a) + f(b);

I1 = 0;
for j = 1:(n/2 - 1)
    I1 = I1 + f(a + 2 * j * h);
end

I2 = 0;
for j = 1:n/2
    I2 = I2 + f(a + (2 * j - 1) * h);
end

I = h/3 * (I0 + 2*I1 + 4*I2);
