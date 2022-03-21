function [I] = es9(f, a, b, n)

h = (b-a) / n;
I0 = f(a) + f(b);

I1 = 0;
for j = 1:(n-1)
    I1 = I1 + f(a + j * h);
end

I = h/2 * (I0 + 2*I1);
