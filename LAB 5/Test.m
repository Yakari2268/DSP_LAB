clc; clear; close all;

% Define two signals
x1n = [1 2 3 4 5 6 7 8 9 10]; % Main signal
x2n = [4 5 6]; % Smaller segment found in x1n

% Compute cross-correlation
[R12] = ccorr(x1n, x2n);

% Plot the original signals
figure;
subplot(3,1,1);
stem(0:length(x1n)-1, x1n, 'filled');
title('Signal x1[n]');
xlabel('Samples');
ylabel('Amplitude');

subplot(3,1,2);
stem(0:length(x2n)-1, x2n, 'filled');
title('Signal x2[n]');
xlabel('Samples');
ylabel('Amplitude');

% Plot cross-correlation
subplot(3,1,3);
stem(0:length(R12)-1, R12, 'filled');
title('Cross-Correlation R_{12}');
ylabel('Correlation Value');
grid on;