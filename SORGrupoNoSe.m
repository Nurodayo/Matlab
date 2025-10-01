function sol = SORGrupoNoSe(a, b, x0, tol, max, norma, delta)

    if 1/delta <= 1
        error('Factor de relajacion no valido');
    end
    u = [a b];
    u = permutacion(u);
    %% sacar los 0 de la diagonal pipipi
    b = u(:, end);
    [n, ~] = size(a);
    for i=1;n
        a(:, i)=u(:, i);
    end
    
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