function g = gaussNurin(a, b)
    [n, ~] = size(a);
    u = [a b];
    u(1, :) = u(1, :)/u(1, 1);
    for i=1:1:n-1
        u(i, :) = u(i, :)/u(i, i);
        u(i+1:n,:) = u(i+1:n,:) - u(i+1:n,i) * u(i,:); %esta mas obfuscado
        %% pero basicamente agarramos de una todo lo que esta abajo del pivote
        %% o la columna desde i+1 hasta n donde luego restamos fila por fila de una
        %% sinceramente no lo entiendo pero dije que lo haria en un for y hasta ahora funciona
        %% :P
    end
    g = u;
end

