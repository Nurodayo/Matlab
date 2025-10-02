%% EJERCICIO 2
%% Matriz Arco enrejado 
%% Usaremos equationsToMatrix() para no escribir la matriz 20x20 entera
syms ha ac ae va ce cd eg df dg ed gh gi gf fh hj hi ib ij jb vb;
vars = [ha, ac, ae, va, ce, cd, eg, df, dg, ed, gh, gi, gf, fh, hj, hi, ib, ij jb vb]
varsTras = vars';
eqs = [
    ha-0.1737*ac+0.7071*ae==0,
    va+0.9848*ac+0.7071*ae==0,
    0.1737*ac+0.9962*ce+0.8660*cd==0,
    -0.9848*ac+0.0872*ce+0.5*cd-1500==0,
    -0.9962*ce-0.7071*ae+0.9659*eg==0,
    -0.0872*ce-0.7071*ae+0.9659*eg==0,
    -0.8660*cd+0.9848*df+0.9397*dg==0,
    -0.5*cd-ed-0.3420*dg+0.1737*df==0,
    -0.9397*dg-0.9659*eg+0.9397*gh+0.9659*gi==0,
    -0.2588*eg-0.2588*gi+0.3420*dg+0.3420*gh+gf==0,
    -0.9848*df+0.9848*fh==0,
    -gf-0.1737*df-0.1737*fh-1200==0,
    -0.9848*fh-0.9397*gh+0.8660*hj==0,
    -0.3420*gh-hi-0.5*hj+0.1737*fh-1000==0,
    -0.9659*gi+0.7071*ib+0.9962*ij==0,
    -0.7071*ib-0.0872*ij+0.2588*gi+hi==0,
    -0.1737*jb-0.9962*ij-0.8660*hj==0,
    -0.9848*jb+0.0872*ij+0.5*hj==0,
    -0.7071*ib+0.1737*jb==0,
    vb+0.7071*ib+0.9848*jb==0
];
[ae2, be2] = equationsToMatrix(eqs, vars);

%%

tol = 0.0001;
max = 2^16;
norma = 2;
relajacion = 0.999;
x02 = zeros(size(be1));

%% Solucion inicial ocupare un vector nulo por motivos de testeo

%% entregar resultados de las corrientes en el vector solucion
[a, ~, inc] = permutacionNeko(ae2, be2, varsTras);
ab = permutacion([ae2 be2])
disp("pene")
disp(a)
disp(inc)

