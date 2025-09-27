%% este archivo esta siendo actualmente utilizado para probar :P
a=[0 ,2, 3; 5, 0, 3; 2, 3, 0]; %% matrices y vectores de prueba
b=[9; 3; 2];
%% c = [matrizPrueba vectorPrueba]
%% me falta poner la verificacion de los 0s en la diagonal
disp("あずまんが大王")
disp("Gauss");
disp(gaussSolve(a, b));

disp("Gauss-Jordan")
disp(gaussJordanSolve(a, b))