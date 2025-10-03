function sol = gaussJordanSolve(a, b); %% esta funcion retornara el vector solucion
u = [a b];
gj=gaussJordanGrupoNoSe(gaussGrupoNoSe(pivot(u))); %% obtenemos matriz aumentada gauss-jordan
%%ojala pudiera usar nvim en vez de matlab
sol = gj(:, end);
end 