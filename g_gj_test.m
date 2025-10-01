%% este archivo esta siendo actualmente utilizado para probar :P
a=[3, -1, 1; 3, 4, -1; 2, 3, 6]; %% matrices y vectores de prueba
b=[1; 0; 4];
%% c = [matrizPrueba vectorPrueba]
%% me falta poner la verificacion de los 0s en la diagonal
disp("あずまんが大王");

disp("Jacobi");
z = SORGrupoNoSe(a, b, [0; 0; 0], 0, 100, 1, 999/1000)
gaussSolve(a, b)
disp(s);