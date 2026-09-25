% Anastasija Michailova, Ef-25/2, 2026-09-11
clc
clearvars
close all

a = 10:-1:-15;
b = log2(a);
c = a./b;
atsakymas = c';

C1 = pi/2:pi/2:3*pi/2;
C2 = -1:1;
C3 = -3:-1:-5;
C = [C1; C2; C3];
sum(C, 2);

A = 5.5;
f = 8;
sigma = 0.8;
U1 = 3.5;
U2 = 1.5;
t = 0:0.002:1.2;
s_t = A*sin(2*pi*f*t);
n = sigma*randn(size(t));
s = s_t + n;
s1 = s(s>U1);
s2 = s;
s2(abs(s2)<U2) = 0;
size(s);
size(s1);
max(s2);
min(s2);
