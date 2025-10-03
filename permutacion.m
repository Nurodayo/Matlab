function p = permutacion(m)
    p=m;
    [n, ~] = size(m); %%incluso aunque le pase la matriz aumentada seguire obteniendo el valor q quiero
    for i=1:n
        [max_val, fila_max] = max(abs(p(:, i)));

        if max_val == 0
            error('Sistema singular: columna %d desde fila %d es cero', i, i);
        end

        % Intercambiar filas solo si fila_max es distinta
        if fila_max ~= i
            aux = p(i, :);
            p(i, :) = p(fila_max, :);
            p(fila_max, :) = aux;
        end
       
    end 
end