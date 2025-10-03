%% EJERCICIO 2
%% Matriz Arco enrejado 
%% Usaremos equationsToMatrix() para no escribir la matriz 20x20 entera
syms ha ac ae va ce cd eg df dg ed gh gi gf fh hj hi ib ij jb vb;
vars = [ha, ac, ae, va, ce, cd, eg, df, dg, ed, gh, gi, gf, fh, hj, hi, ib, ij, jb, vb];
eqs = [
    ha-sin(10)*ac+cos(45)*ae==0, %a
    va+cos(10)*ac+sin(45)*ae==0, %a
    sin(10)*ac+cos(5)*ce+cos(30)*cd==0, %c
    -cos(10)*ac+sin(5)*ce+sin(30)*cd-1500==0, %c
    -cos(5)*ce-cos(45)*ae+cos(15)*eg==0, %e
    -sin(5)*ce-sin(45)*ae+sin(15)*eg+ed==0, %e
    -cos(30)*cd+cos(10)*df+cos(20)*dg==0, %d
    -sin(30)*cd-ed-sin(20)*dg+sin(10)*df-1000==0, %d
    -cos(20)*dg-cos(15)*eg+cos(20)*gh+cos(15)*gi==0, %g
    -sin(15)*eg-sin(15)*gi+sin(20)*dg+sin(20)*gh+gf==0, %g
    -cos(10)*df+cos(10)*fh==0, %f
    -gf-sin(10)*df-sin(10)*fh-1200==0, %f
    -cos(10)*fh-cos(20)*gh+cos(30)*hj==0, %h
    -sin(20)*gh-hi-sin(30)*hj+sin(10)*fh-1000==0, %h
    -cos(15)*gi+cos(45)*ib+cos(5)*ij==0, %i
    -sin(45)*ib-sin(5)*ij+sin(15)*gi+hi==0, %i
    -sin(10)*jb-cos(5)*ij-cos(30)*hj==0, %j
    -cos(10)*jb+sin(5)*ij+sin(30)*hj-1500==0, %j
    -cos(45)*ib+sin(10)*jb==0, %b
    vb+sin(45)*ib+cos(10)*jb==0 %b
];
[ae2, be2] = equationsToMatrix(eqs, vars);

%%

mat = [ae2 be2];
%mat = mat(2:n, 2:n)

[n, ~] = size(mat);

inc = (1:n)';
%[mat2, inc] = permutacionLoca(mat, inc)



%mat2(end, :) = mat2(end, :) + mat2(1, :);
%mat2 = mat2(2:n, 2:end);
[n, ~] = size(mat2);
inc = inc(2:end, 1)

%[mat2, inc] = permutacionLoca(mat2, inc)

% mat2 = gaussGrupoNoSe(mat2)
%am2 = mat2(:, 1:n);
%bm2 = mat2(:, end);
mat = [ae2 be2]
mat = pivot(mat);

x02 = zeros(size(be2));
max = 2^12
norma = 2
factorOmega = 1.5


rGaussE2 = gaussSolve(ae2, be2);
rGaussJE2 = gaussJordanSolve(ae2, be2);
rJacobiE2 = jacobiGrupoNoSe(ae2, be2, x02, 0.01, max, norma);
rGaussSeidelE2 = gaussSeidelGrupoNoSe(ae2, be2, x02, 0.01, max, norma);
rSORE2 = SORGrupoNoSe(ae2, be2, x02, 0.01, max, norma, 1/factorOmega);
