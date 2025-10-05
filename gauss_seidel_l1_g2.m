function sol = gauss_seidel_l1_g2(a, b, x0, tol, max, norma)
    u = [a b];
    u = pivot_l1_g2(u);
    %% sacar los 0 de la diagonal 
    b = u(:, end);    
    [n, ~] = size(a);
    a = u(:, 1:n);
    
    i=1;
    L = tril(a, -1);
    U = triu(a, 1);
    xsol(:,i)=x0;
    s=diag(diag(a))+L;
    if det(s) == 0
        error('Matriz no resolvible');
    end
    invs = inv(s);

    aux = invs*(b - (U)*xsol(:,i));
    xsol(:,i+1) = aux;

    while norm(xsol(:,i+1)-xsol(:,i), norma) > tol
        i=i+1;
        aux = invs*(b - (U)*xsol(:,i));
        xsol(:,i+1) = aux;
        if i > max
            break;
        end
    end
    sol = xsol(:, i+1);
end