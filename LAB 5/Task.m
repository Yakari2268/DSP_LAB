N = 200-1;   % Number of Samples
n = 0:N;
fi = 400;    % Input frequency
fs = 8000;   % Sampling frequency
ts = 1/fs;   % Sampling period

% Discrete Cosine wave with frequency 400Hz
x1n = cos(2*pi*fi*(n * ts));  % Generate the cosine wave using n (sample indices)
figure(1)
subplot(3,2,1)
stem(n, x1n);  % Use sample indices n on the x-axis
xlabel('Samples');
ylabel('Amplitude');
title('Discrete Cosine Wave (400Hz)');

% Adding noise to cosine signal
x2n = x1n + 0.25 * (-1 + 2 * rand(size(x1n)));

% Shifting cosine signal
shiftvalue = 30;
x2s = [zeros(1, shiftvalue), x2n];

R11 = ccorr(x1n, x1n);
R22 = ccorr(x2n, x2n);
R12 = ccorr(x1n, x2n);

% Plotting input signal
n_shifted = 0:N + shiftvalue;
figure(1)
subplot(3,2,2)
stem(n, x2n);  % Use sample indices n on the x-axis
xlabel('Samples');
ylabel('Amplitude');
title('Noisy Cosine Signal');

% Plotting ccorr for x1n, x1n and x2n, x2n
figure(1)
subplot(3,2,3)
stem(n, R11);  % Use sample indices n on the x-axis
xlabel('Samples');
ylabel('Correlation');
title('Autocorrelation of x1n with itself');

figure(1)
subplot(3,2,4)
stem(n, R22);  % Use sample indices n on the x-axis
xlabel('Samples');
ylabel('Correlation');
title('Autocorrelation of x2n with itself');

% Plotting the correlation of x1n and x2n
figure(1)
subplot(3,1,3)
stem(n, R12);  % Use sample indices n on the x-axis
xlabel('Samples');
ylabel('Correlation');
title('Cross-correlation between x1n and x2n');

% Finding the correlation between x1n and x2s
R22s = ccorr(x2s, x2s);
R12s = ccorr(x1n, x2s);

% Plotting the x1n and x2s on figure 2
figure(2)
subplot(2,2,1)
stem(n, x1n);  % Use sample indices n on the x-axis
xlabel('Samples');
ylabel('Amplitude');
title('Original Cosine Signal (x1n)');

figure(2)
subplot(2,2,2)
stem(n_shifted, x2s);  % Use sample indices n_shifted on the x-axis
xlabel('Samples');
ylabel('Amplitude');
title('Shifted and Noisy Cosine Signal (x2s)');

% Plotting the correlation between x1n and x2s
figure(2)
subplot(2,1,2)
stem(n_shifted, R12s);  % Use sample indices n_shifted on the x-axis
xlabel('Samples');
ylabel('Correlation');
title('Cross-correlation between x1n and shifted x2s');
