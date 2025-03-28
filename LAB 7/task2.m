wp = 0.2*pi;
ws = 0.35*pi;
kp = -1;
ks = -15;

[n,wc] = cheb1ord(wp,ws,kp,ks,'s');
[bn,an] = cheby1(n,abs(kp),1,'low','s');
[bs,as] = cheby1(n,abs(kp),wc,"low",'s');

w = 0:0.01:pi;
h = freqs(bs,as,w);
figure(2)
plot(w,mag2db(abs(h)));


[bz,az] = impinvar(bs,as);

f = [0.1 0.2 0.3 0.4 0.5]*pi;
t = 0:0.01:2;
for i = 1:length(f)
    %input sin wave 
    
    x1t = sin(2*pi*f(i)*t);
    
    figure(1)
    subplot(length(f),2,2*i-1)
    stem(t,x1t);
    
    y1t = filter(bz,az,x1t);
    
    figure(1)
    subplot(length(f),2,2*i)
    stem(0:length(y1t)-1,y1t);
end


