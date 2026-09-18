% Anastasija Michailova, Ef-25/2, 2026-09-11
clc
clearvars
close all

A = [0 1 0 2 3 0 4;
     0 0 0 0 0 0 0;
     0 5 0 6 7 0 8;
     0 9 0 1 2 0 3;
     0 0 0 0 0 0 0;
     0 4 0 5 6 0 7];
eilutes = [1 3 4 6];
stulpeliai = [2 4 5 7];
B = A(eilutes, stulpeliai);
