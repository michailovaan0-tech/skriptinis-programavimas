% Anastasija Michailova, Ef-25/2, 2026-09-25
clc
clearvars
close all

t = linspace(-pi, pi, 50); 
y_t = sin(t);
figure(1); 
plot(t, y_t, 'r--');
grid on;
xlabel('t');
ylabel('y(t)');
axis([min(t) max(t) min(y_t) max(y_t)]); 
legend('y(t) = sin(t)', 'Location', 'best');

x = linspace(-pi, pi, 50);
y1_x = -x.^2 + 9;
y2_x = x.^3 - 2*x.^2 - 9;
figure(2);
plot(x, y1_x, 'b-', x, y2_x, 'g-');
grid on;
xlabel('x');
ylabel('y(x)');
y_min = min([min(y1_x), min(y2_x)]);
y_max = max([max(y1_x), max(y2_x)]);
axis([min(x) max(x) y_min y_max]);
legend('y(t) = sin(t)', 'Location', 'best');

pazymiai = [
    6 8 5 9;
    4 6 7 6;
    5 7 7 8;
    10 6 7 9;
    8 5 4 9;
    9 8 5 8];
studentai = {'V.A.', 'A.G.', 'D.N.', 'A.T.', 'E.S.', 'J.S.'};
figure;
subplot(2, 1, 1); 
bar(pazymiai'); 
title('a)');
xlabel('l. d.');
ylabel('p');
ylim([0 10]);
legend(studentai, 'Location', 'eastoutside');

subplot(2, 1, 2);
lab_vid = mean(pazymiai, 1);
stem(1:4, lab_vid);
title('b)');
xlabel('lab');
ylabel('p');
ylim([0 10]);