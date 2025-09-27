function sol = gaussSolve(a, b); %% esta funcion retornara el vector solucion
    g=gaussGrupoNoSe(a, b); %% llamamos la funcion que retorna la matriz gauss
    [n, ~] = size(a);
    x = zeros(n, 1); %% array de zeros
    for i=n:-1:1; %%sustitucion hacia atras
        for j=i+1:n;
            g(i, end) = g(i, end) - g(i, j) * x(j);
        end
        x(i) = g(i, end);
    end
    sol = x;
end