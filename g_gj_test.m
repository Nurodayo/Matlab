%% este archivo esta siendo actualmente utilizado para probar :P
a=[4, -1, 0; -1, 4, -1; 0, -1, 3]; %% matrices y vectores de prueba
b=[15; 10; 10];
%% c = [matrizPrueba vectorPrueba]
%% me falta poner la verificacion de los 0s en la diagonal
disp("あずまんが大王");
disp("Gauss");
disp(gaussSolve(a, b));

disp("Gauss-Jordan");
disp(gaussJordanSolve(a, b));

disp("Jacobi");
s = jacobiGrupoNoSe(a, b, [0; 0; 0], 0, 5, 2);
disp(s);