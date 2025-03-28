[x1n, fs1] = audioread('audio1.wav');
[x2n, fs2] = audioread('audio2.wav');

% Convert to mono (average across channels if stereo)
x1n = mean(x1n, 2);
x2n = mean(x2n, 2);

% Transpose the signals to row vectors
x1n = x1n';
x2n = x2n';

% Create sample indices for plotting
n1 = 0:length(x1n)-1;
n2 = 0:length(x2n)-1;

% Cross-correlation
R12 = ccorr(x1n, x2n);

n3 = 0:length(R12)-1;

% Plot the signals and their cross-correlation

figure(1)

% Plot the first audio signal (x1n)
subplot(2,2,1)
plot(n1, x1n);
xlabel('Samples');
ylabel('Amplitude');
title('Audio Signal 1 (x1n)');

% Plot the second audio signal (x2n)
subplot(2,2,2)
plot(n2, x2n);
xlabel('Samples');
ylabel('Amplitude');
title('Audio Signal 2 (x2n)');

% Plot the cross-correlation between the two signals (R12)
figure(1)
subplot(2,1,2)
plot(n3, R12);
xlabel('Samples');
ylabel('Correlation');
title('Cross-correlation between x1n and x2n');
