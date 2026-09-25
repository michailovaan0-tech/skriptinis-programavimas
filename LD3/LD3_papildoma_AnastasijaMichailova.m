% Anastasija Michailova, Ef-25/2, 2026-09-25
clc
clearvars
close all

A = 5.5;
f = 8;
sigma = 0.8;
U1 = 3.5;
U2 = 1.5;
t = 0:0.002:1.2;
s_t = A*sin(2*pi*f*t);
n = sigma*randn(size(t));
s = s_t + n;
t1 = t(s>U1);
s1 = s(s>U1);
s2 = s;
s2(abs(s2)<U2) = 0;

figure;
subplot(2, 1, 1);
plot(t, s, 'k');
hold on;
plot(t, s2, 'Color', [0.5, 0, 0.5]);
yline(U1, 'k--');
yline(U2, 'k');
hold off;
grid on;
title('a) Pradinis ir filtruotas signalai');
xlabel('Laikas (s)', 'Color', 'r', 'FontSize', 13, 'FontWeight', 'bold');
ylabel('Įtampa (V)', 'Color', 'r', 'FontSize', 13, 'FontWeight', 'bold');
legend('Pradinis', 'Filtruotas', 'U_1 riba', 'U_2 riba', 'Location', 'southwest');

subplot(2, 1, 2);
stem(t1, s1, 'k'); 
hold on;
[max_val, max_idx] = max(s);
[min_val, min_idx] = min(s);
plot(t(max_idx), max_val, 'r^', 'MarkerFaceColor', 'r', 'MarkerSize', 8);
plot(t(min_idx), min_val, 'ys', 'MarkerFaceColor', 'y', 'MarkerSize', 8);
hold off;
grid on;
title('b) Signalo reikšmės viršijančios U_1');
xlabel('Laikas (s)', 'Color', 'r', 'FontSize', 13, 'FontWeight', 'bold');
ylabel('Įtampa (V)', 'Color', 'r', 'FontSize', 13, 'FontWeight', 'bold');
axis([0 1.2 min_val-1 max(s1)+1]);
legend('Reikšmės > U_1', 'Maksimali reikšmė', 'Minimali reikšmė', 'Location', 'southwest');