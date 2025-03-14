hn = [1/5,1/5,1/5,1/5,1/5];
a = [1,1,1,1,1];
b = 5;
[h,w] = freqz(a,b,'whole');

%plotting freq response of the filter
figure(2);
plot((w*fs)/2*pi,20*log10(abs(h)))



freq = [10,100,1000,5000,10000];

fs = 8000;
ts = 1/fs;

t = ts:ts:1;
n = 1:500;

for i = 1:length(freq)

    xn = cos(2*pi*freq(i)*n*ts);
    %adding noise
    xn = xn+0.25*(-1+2*rand(size(xn)));
    
    figure(1)
    subplot(5,2,2*i-1)
    plot(n,xn);
    
    yn = filter(a,b,xn);
    figure(1)
    subplot(5,2,2*i)
    plot(n,yn);

end


