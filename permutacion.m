function p = permutacion(m)
    p=m;
    [n, ~] = size(m); %%incluso aunque le pase la matriz aumentada seguire obteniendo el valor q quiero
    for i=1:n
        for j=i:n
            if abs(p(i,i))<abs(p(j, i)) %%if q permuta las filas
                aux = p(i, :); %% variable auxiliar
                p(i, :) = p(j, :)
                p(j, :) = aux         
            end
        end
    end 
end