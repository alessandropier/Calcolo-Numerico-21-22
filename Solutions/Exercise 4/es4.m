function [x, nit] = es4(S, n, tol, nmax)

if(S > 0 && n ~= 0)
    x0 = S;
    for nit  = 1:nmax
        
        % check if den == 0 (n already checked)
        den = x0 ^ (n - 1);
        if den == 0
            x = 0; nit = 0;
            return
        end
        
        % computation of x
        x = (1/n) * ((n-1) * x0 + S/den);

        % check if ER < tol
        if abs(x0 - x)/abs(x) < tol
            return
        end

        %variables update
        x0 = x;
    
    end
end
nit = -1;
