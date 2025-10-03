function sol = SORGrupoNoSe(a, b, x0, tol, max, norma, delta)

    u = [a b];
    u = pivot(u);
    %% sacar los 0 de la diagonal pipipi
    b = u(:, end);    
    [n, ~] = size(a);
    a = u(:, 1:n)
    
    i=1;
    L = tril(a, -1);
    U = triu(a, 1);
    d = diag(diag(a));
    xsol(:,i)=x0;
    s=delta*d+L;
    invs = inv(s);


    aux = invs*(delta*b - (U + (delta-1)*d)*xsol(:,i));
    xsol(:,i+1) = aux

    while norm(xsol(:,i+1)-xsol(:,i), norma) > tol
        i=i+1;
        aux = invs*(delta*b - (U + (delta-1)*d)*xsol(:,i));
        xsol(:,i+1) = aux
        if i > max
            break;
        end
    end
    sol = xsol(:, i+1);
end