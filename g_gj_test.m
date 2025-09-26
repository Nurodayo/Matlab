%% este archivo esta siendo actualmente utilizado para probar :P
a=[1 ,2, 3; 5, 5, 3; 2, 3, 1]; %% matrices y vectores de prueba
b=[9; 3; 2];
%% c = [matrizPrueba vectorPrueba]
g=gaussGrupoNoSe(a, b)
disp("Gauss")
disp(g)
gj=gaussJordanGrupoNoSe(g)
disp("Gauss Jordan")
disp(gj)