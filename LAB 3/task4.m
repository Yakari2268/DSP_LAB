[xn,fs] = audioread("untitled.wav");
N = length(xn);

if length(xn(1,:))==2
    xn = mean(xn,2);
end

[Xk,fk] = dft(xn,fs,N);

figure(1)
stem(fk,abs(Xk));