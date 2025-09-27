function g = gaussGrupoNoSe(u)
    [n, ~] = size(u);
    %%u = [a b];
    %% lo estoy haciendo con dos for porque sera mas facil de explicar
    %% pero se puede hacer con uno solo, aunque el codigo queda menos legible miau
    for i=1:n
        %% dividimos cada fila por la diagonal
        u(i, :) = u(i, :)/u(i, i);
        for j=i+1:n
            u(j, :) = u(j, :)-(u(j, i)*u(i, :));
            
        end 
    end
    g = u;
end
%%complejidad n^2 poque dos for
