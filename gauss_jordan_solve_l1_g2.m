function sol = gauss_jordan_solve_l1_g2(a, b) %% esta funcion retornara el vector solucion
u = [a b];
gj=gauss_jordan_l1_g2(gauss_l1_g2(pivot_l1_g2(u))); %% obtenemos matriz aumentada gauss-jordan
sol = gj(:, end);
end 