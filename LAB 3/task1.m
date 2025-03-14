

fs =1000;
N = 1500;
xn1 = cosDescrete(0.7,50,fs,N);
xn2 = cosDescrete(2.7,120,fs,N);

[Xk1,fk1] = dft(xn1,fs,N);
[Xk2,fk2] = dft(xn2,fs,N);

Yk = Xk1+Xk2;

figure(1)
subplot(3,1,1)
stem(fk1,abs(Xk1));
subplot(3,1,2)
stem(fk2,abs(Xk2));
subplot(3,1,3)
stem(fk1,abs(Yk));

