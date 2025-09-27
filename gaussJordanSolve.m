function sol = gaussJordanSolve(a, b); %% esta funcion retornara el vector solucion
gj=gaussJordanGrupoNoSe(gaussGrupoNoSe(a, b)); %% obtenemos matriz aumentada gauss-jordan
%%ojala pudiera usar nvim en vez de matlab
sol = gj(:, end);