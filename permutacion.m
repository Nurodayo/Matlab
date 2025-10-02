function p = permutacion(m)
    p=m;
    [n, ~] = size(m); %%incluso aunque le pase la matriz aumentada seguire obteniendo el valor q quiero
    for i=1:n
        [maximo, fila_max] = max(abs(p(i:n, i)))
        fila_max = fila_max+i-1;
        if maximo == 0
            warning("Miedo")
        end
            aux = p(i, :);
            p(i, :) = p(fila_max, :);
            p(fila_max, :) = aux;
    end 
end