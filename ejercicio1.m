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

tol = 0.01;
max = 2^10;
norma = 2;
x01 = zeros(size(be1));

%% Solucion inicial ocupare un vector nulo por motivos de testeo

%% entregar resultados de las corrientes en el vector solucion
rGaussE1 = gauss_solve_l1_g2(ae1, be1);
rGaussJE1 = gauss_jordan_solve_l1_g2(ae1, be1);
rJacobiE1 = jacobi_l1_g2(ae1, be1, x01, tol, max, norma);
rGaussSeidelE1 = gauss_seidel_l1_g2(ae1, be1, x01, tol, max, norma);
rSORE1 = SOR_l1_g2(ae1, be1, x01, tol, max, norma, 0.9);

disp("Gauss");
disp(rGaussE1);
disp("Gauss Jordan");
disp(rGaussJE1);
disp("Jacobi");
disp(rJacobiE1);
disp("Gauss Seidel");
disp(rGaussSeidelE1);
disp("SOR");
disp(rSORE1);