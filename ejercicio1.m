%% EJERCICIO 1
%% Matriz Kirchoff 

ae1 =   [71.5, -20, -50, 0, 0, 0;
        -20, 52, -2, -30, 0, 0;
        -50, -2, 112, -60, 0, 0;
        0, 0, -60, 150, -15, -45;
        0, 0, 0, -15, 48, -3;
        0, 0, 0, -45, -3, 113
        ];
be1 =   [220; 0; 0; 0; 0; 0];

tol = 0.001;
max = 2^16;
norma = 2;
relajacion = 0.999;
x01 = zeros(size(be1));

%% Solucion inicial ocupare un vector nulo por motivos de testeo

%% entregar resultados de las corrientes en el vector solucion
rGaussE1 = gaussSolve(ae1, be1);
rGaussJE1 = gaussJordanSolve(ae1, be1);
rJacobiE1 = jacobiGrupoNoSe(ae1, be1, x01, tol, max, norma);
rGaussSeidelE1 = gaussSeidelGrupoNoSe(ae1, be1, x01, tol, max, norma);
rSORE1 = SORGrupoNoSe(ae1, be1, x01, tol, max, norma, relajacion);
