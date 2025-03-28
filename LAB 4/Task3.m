hn = [1/5,1/5,1/5,1/5,1/5];

n = 0:199;
f = 400;
fs = 8000;
ts = 1/fs;
t = n*ts;
xn = sin(2*pi*f*t);

figure(1)
subplot(4,1,1)
plot(t, xn);
xlabel('Time (seconds)')
ylabel('Amplitude')
title('Original Sine Wave')

% Adding noise
xn = xn + 0.25 * (-1 + 2 * rand(size(xn)));

subplot(4,1,2)
plot(t, xn);
xlabel('Time (seconds)')
ylabel('Amplitude')
title('Noisy Sine Wave')

% Moving average filter for last 5 sequence in time domain
y = myLinconv(xn, hn);

subplot(4,1,3)
plot(t, y(1:200));
xlabel('Time (seconds)')
ylabel('Amplitude')
title('Filtered Signal (Time Domain)')

% Moving average filter for last 5 sequence in frequency domain
y1 = ifft(fft(xn, 200) .* fft(hn, 200));

subplot(4,1,4)
plot(t, y1);
xlabel('Time (seconds)')
ylabel('Amplitude')
title('Filtered Signal (Frequency Domain)')
