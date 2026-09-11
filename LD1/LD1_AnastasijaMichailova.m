% Anastasija Michailova, Ef-25/2, 2026-09-11
clc
clearvars
close all

x = 1:32;
y = x.^2;
plot(x, y, 'o-r', x, y/3, 'xb')
title('Dvi funkcijos')
xlabel('X-ai')
ylabel('F_1 [-o-]    |     F_2 [-x-]')

help sin;
doc plot;
docsearch title;
% help langas (F1)


% 9.

% help linspace
% help size
% help max

% linspace (Tiesiškai išdėstytų taškų vektoriaus generavimas):
% - Sintaksė: y = linspace(x1, x2) (100 taškų) arba y = linspace(x1, x2, n) (n taškų).
% - Argumentai: 2-3 įvesties (intervalas, taškų skaičius); 1 išvesties (vektorius).
% - Susijusios funkcijos: logspace, colon.
%
% size (Masyvo dimensijų dydžių nustatymas):
% - Sintaksė: sz = size(A) (visų dimensijų ilgiai) arba szdim = size(A, dim) 
%   (konkrečios dimensijos ilgis). Išvestis: [sz1, ..., szN] = size(...).
% - Argumentai: 1-N įvesties; 1-N išvesties argumentų.
% - Susijusios funkcijos: length, strlength, ndims, numel, height, width.
%
% max (Maksimalių masyvo elementų radimas):
% - Sintaksė: M = max(A) (didžiausia reikšmė), M = max(A, [], dim) (paieška 
%   dimensijoje), [M, I] = max(...) (grąžina ir indeksą), C = max(A, B).
% - Argumentai: 1-N įvesties (masyvai, nustatymai); 1-2 išvesties (reikšmė ir indeksas).
% - Susijusios funkcijos: maxk, bounds, min, mean, median, sort, islocalmax, clip.

N = 6;
V = (N+1):0.5:(N+4);
A = [N N+1 N+2;
     N+3 N+4 N+5;
     N+6 N+7 N+8];

dalis_a = A(3, 2);
dalis_b = A(2:3, 1:2);
dalis_c = A([1, 3], [1, 3]);

A_1 = [A; V(1:3)];