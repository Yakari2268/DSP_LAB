function [Xk,fk] = dft(x,fs,N)
     fk = [0:fs/N:(N-1)*(fs/N)];
     for n= 0:N-1
         fk = fk+x(i+1)*exp((2*pi/N)*n*k))
     end   
end