function sol = jacobiGrupoNoSe(a, b, x0, tol, max, norma)
    u = [a b];
    u = pivot(u);
    %% sacar los 0 de la diagonal pipipi
    b = u(:, end);
    [n, ~] = size(a);
    for i=1:n
        %% Regularizacion
        if u(i, i) == 0
            u(i, i) = u(i, i)+0.0001
        end
    end
    for i=1:n
        a(:, i)=u(:, i);
    end

    i=1;
    xsol(:,i)=x0;
    s=diag(diag(a));
    invs = inv(s);
    L = tril(a, -1);
    U = triu(a, 1);

    aux = invs*(b - (L+U)*xsol(:,i));
    xsol(:,i+1) = aux

    while norm(xsol(:,i+1)-xsol(:,i), norma) > tol
        i=i+1;
        aux = invs*(b - (L+U)*xsol(:,i));
        xsol(:,i+1) = aux;
        if i > max
            break;
        end
    end
    sol = xsol(:, i+1);
end