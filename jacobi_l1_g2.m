function sol = jacobi_l1_g2(a, b, x0, tol, max, norma)
    u = [a b];
    u = pivot_l1_g2(u);
    %% sacar los 0 de la diagonal pipipi
    b = u(:, end);
    [n, ~] = size(a);
   
    for i=1:n
        a(:, i)=u(:, i);
    end

    i=1;
    xsol(:,i)=x0;
    s=diag(diag(a));
    if det(s) == 0
        error('Matriz no resolvible');
    end
    invs = inv(s);
    L = tril(a, -1);
    U = triu(a, 1);

    aux = invs*(b - (L+U)*xsol(:,i));
    xsol(:,i+1) = aux;

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