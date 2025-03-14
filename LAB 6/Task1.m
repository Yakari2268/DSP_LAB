N = 200-1;
n = 0:N;
fi = 100;
fs = 8000;
ts = 1/fs; 

t1 = ts*n;

%input signal
x1n = cos(2*pi*fi*t1);
figure(1)
subplot(3,2,1)
stem(t1,x1n);

%adding noise to input signal
x2n = x1n+0.25*(-1+2*rand(size(x1n)));


%shifting input signal
shiftvalue = 30;
x2s = [zeros(1,shiftvalue),x2n];

R11 = ccorr(x1n,x1n);
R22 = ccorr(x2n,x2n);
R12 = ccorr(x1n,x2n);

%plotting input
n = 0:N+shiftvalue;
t2 = ts*n;
figure(1)
subplot(3,2,2)
stem(t1,x2n);

%plotting ccorr for x1,x1 and x2,x2

figure(1)
subplot(3,2,3)
stem(t1,R11);

figure(1)
subplot(3,2,4)
stem(t1,R22);

%plotting the correlation of x1n and x2n

figure(1)
subplot(3,1,3)
stem(t1,R12);

%finding the correlation between x1n and x2s
R22s = ccorr(x2s,x2s);
R12s = ccorr(x1n,x2s);

%ploting the x1n and x2s on figure 2

figure(2)
subplot(2,2,1)
stem(t1,x1n);

figure(2)
subplot(2,2,2)
stem(t2,x2s)

%plotting the correlation between between x1n and x2s
figure(2)
subplot(2,1,2)
stem(t2,R12s);


