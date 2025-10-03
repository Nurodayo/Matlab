%% EJERCICIO 3
syms x1 x2 x3 x4 x5 x6
eqs3 = [
    x1-x2==200,
    x2-x3-x6==-600,
    -x1+x5==-100,
    x4-x5+x6==700,
    -x3+x4==200,
    x2-x5==-100
];
vars3 = [x1, x2, x3, x4, x5, x6];
[ae3, be3] = equationsToMatrix(eqs3, vars3);

disp([ae3 be3]);
mat3 = [ae3, be3];
mat3 = pivot(mat3);
mat3 = gaussGrupoNoSe(mat3)

rGaussE3 = gaussGrupoNoSe(mat3)
disp(rGaussE3)