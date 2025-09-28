function sol = jacobiGrupoNoSe(a, b, x0, tol, max, norma)
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
        xsol(:,i+1) = aux
        if i > max
            break;
        end
    end
    sol = xsol(:, i+1);
end