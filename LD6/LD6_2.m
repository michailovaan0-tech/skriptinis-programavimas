clc
close all

global x y

x = 0:0.1:2*pi;
apskaiciuoti_y;

plot(x, y, 'g:s');
grid on;
title('Grafikas y = sin(x) + cos(x)');
xlabel('x');
ylabel('y');

disp('Globalūs kintamieji');
whos global