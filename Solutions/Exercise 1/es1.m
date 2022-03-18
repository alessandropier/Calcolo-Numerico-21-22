function [x, nit, fx] = es1(f, x0, x1, tol, nmax)

fx0 = f(x0);
fx1 = f(x1);

for nit = 1:nmax
    den = fx1 - fx0;

    if den == 0
        x = x0; nit = 0; fx = f(x0); %nit = 0 aka den = 0
        return
    end

    dx = -fx1*(x1 - x0)/(fx1 - fx0); 
    x = x1 + dx;
    
    if abs(dx)/abs(x) < tol %ER < tol
        fx = f(x);
        return % nit < nmax, tol reached
    end
    
    x0 = x1;
    x1 = x;
    fx0 = fx1;
    fx1 = f(x1);
end
%nit = nmax, tol not reached
fx = f(x0);
nit = -1; 
