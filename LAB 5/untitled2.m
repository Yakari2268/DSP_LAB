%Task 4
hn = [1/5,1/5,1/5,1/5,1/5];
N = 100;
[yk,omega] = dtft(hn,N);
%Plot DTFT
figure(1)
subplot(2,1,1);
plot(omega,abs(yk))


y = fft(hn,N);
k = 0:N-1;
omega = (2*pi*k)/N;
figure(1)
subplot(2,1,2)
stem(omega,abs(y));