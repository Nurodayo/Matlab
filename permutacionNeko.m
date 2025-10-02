function [ap, bp, incp] = permutacionNeko(a, b, inc)
%% Basicamente permutamos filas y ademas permutamos las columnas si la diag tiene un 0. 
%% pero cuando permutamos las columnas tenemos que cambiar el vector de incognitas para que el producto matricial se cumpla.
%% si no funca no se q hacer
    p = [a b];
    incp = inc;
    [n, ~] = size(a); %%incluso aunque le pase la matriz aumentada seguire obteniendo el valor q quiero
    for i=1:n
        [maximo, fila_max] = max(abs(p(i:n, i)))
        fila_max = fila_max+i-1;
        if maximo == 0
            warning("Miedo");
        end
            aux = p(i, :);
            p(i, :) = p(fila_max, :);
            p(fila_max, :) = aux;
    end 
    %%revisamos diagonal por primera vez
    for i=1:n
        if p(i, i) == 0
            condicion = true;
        end
    end
    %% si hay un 0 hacemos la permutacion de columnas
    if condicion == true
            for i=1:n
                [maximo, col_max] = max(abs(p(i, i:n)))
                col_max = col_max+i-1;
                if maximo == 0
                    warning("Miedo doble");
                end
                aux = p(:, i);
                p(:, i) = p(:, col_max);
                p(:, col_max) = aux;
                aux = incp(i, :); %%deberia ser un vector nx1
                incp(i) = incp(col_max);
                incp(col_max) = aux;
            end 
            condicion = false; % Reset condicion for the next check
    end

    ap=p(:,1:n);
    bp=p(:, end);

    %% si aun hay 0 en la diagonal me muero

end
%%codigo tipo yandere dev a fuerza bruta tratando de que funque