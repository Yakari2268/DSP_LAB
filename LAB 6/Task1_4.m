[x1n,fs1] = audioread('audio1.wav');
[x2n,fs2] = audioread('audio2.wav');

x1n = mean(x1n,2);
x2n = mean(x2n,2);

x1n = x1n';
x2n = x2n';

n1 = 0:length(x1n)-1;
n2 = 0:length(x2n)-1;

R12 = ccorr(x1n,x2n);

n3 = 0:length(R12)-1;

figure(1)
subplot(2,2,1)
stem(n1,x1n);

figure(1)
subplot(2,2,2)
stem(n2,x2n);

figure(1)
subplot(2,1,2)
stem(n3,R12);