%Task 3

hn = [1/5,1/5,1/5,1/5,1/5];

n = 0:199;
f = 400;
fs = 8000;
ts = 1/fs;
t = n*ts;
xn = sin(2*pi*f*t);
figure(1)
subplot(4,1,1)
stem(t,xn);
%adding noise
xn = xn+0.25*(-1+2*rand(size(xn)));
figure(1)
subplot(4,1,2)
stem(t,xn);

%Moving average filter for last 5 sequence in time domain
y = myLinconv(xn,hn);
figure(1)
subplot(4,1,3)
stem(t,y(1:200))

%moving average filter for last 5 sequence in frequency domain
y1 = ifft(fft(xn,200).*fft(hn,200));
figure(1)
subplot(4,1,4)
stem(t,y1)


