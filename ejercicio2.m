%% EJERCICIO 2
%% Matriz Arco enrejado 
%% Usaremos equationsToMatrix() para no escribir la matriz 20x20 entera
syms ha ac ae va ce cd eg df dg ed gh gi gf fh hj hi ib ij jb vb;
vars = [ha, ac, ae, va, ce, cd, eg, df, dg, ed, gh, gi, gf, fh, hj, hi, ib, ij, jb, vb];
eqs = [
    ha-0.1737*ac+0.7071*ae==0, %a
    va+0.9848*ac+0.7071*ae==0, %a
    0.1737*ac+0.9962*ce+0.8660*cd==0, %c
    -0.9848*ac+0.0872*ce+0.5*cd-1500==0, %c
    -0.9962*ce-0.7071*ae+0.9659*eg==0, %e
    -0.0872*ce-0.7071*ae+0.2588*eg+ed==0, %e
    -0.8660*cd+0.9848*df+0.9397*dg==0, %d
    -0.5*cd-ed-0.3420*dg+0.1737*df-1000==0, %d
    -0.9397*dg-0.9659*eg+0.9397*gh+0.9659*gi==0, %g
    -0.2588*eg-0.2588*gi+0.3420*dg+0.3420*gh+gf==0, %g
    -0.9848*df+0.9848*fh==0, %f
    -gf-0.1737*df-0.1737*fh-1200==0, %f
    -0.9848*fh-0.9397*gh+0.8660*hj==0, %h
    -0.3420*gh-hi-0.5*hj+0.1737*fh-1000==0, %h
    -0.9659*gi+0.7071*ib+0.9962*ij==0, %i
    -0.7071*ib-0.0872*ij+0.2588*gi+hi==0, %i
    -0.1737*jb-0.9962*ij-0.8660*hj==0, %j
    -0.9848*jb+0.0872*ij+0.5*hj-1500==0, %j
    -0.7071*ib+0.1737*jb==0, %b
    vb+0.7071*ib+0.9848*jb==0 %b
];
[ae2, be2] = equationsToMatrix(eqs, vars);

%%

mat = [ae2 be2];


[n, ~] = size(mat);

inc = (1:n)';

mat = [ae2 be2];
mat = pivot_l1_g2(mat);

x02 = zeros(size(be2));
max = 2^10;
norma = 2;
factorOmega = 1.5;

mat = gauss_l1_g2(mat); %% Corremos eliminacion Gauss antes de todo
am2 = mat(:, 1:n);
bm2 = mat(:, end);

rGaussE2 = gauss_solve_l1_g2(am2, bm2);
rGaussJE2 = gauss_jordan_solve_l1_g2(am2, bm2);
rJacobiE2 = jacobi_l1_g2(am2, bm2, x02, 0.01, max, norma);
rGaussSeidelE2 = gauss_seidel_l1_g2(am2, bm2, x02, 0.01, max, norma);
rSORE2 = SOR_l1_g2(am2, bm2, x02, 0.01, 1000, norma, 1.5);

disp("Gauss");
disp(rGaussE2);
disp("Gauss Jordan");
disp(rGaussJE2);
disp("Jacobi");
disp(rJacobiE2);
disp("Gauss Seidel");
disp(rGaussSeidelE2);
disp("SOR")
disp(rSORE2);
