function [Xk,fk] = dft(x,Fs,N)
    if isrow(x)
        x = x'; 
    end
    x_len = length(x);


    if N>x_len
        for m = x_len+1:N
            x(m) = 0;               %Padding zeros
        end
    end
    if N<x_len
        x = x(1:N);                
    end
    
    n = 0:N-1;
    k = n';
    W = exp(-j*(2*pi/N)*k*n);  

    fk = 0:Fs/N:(N-1)*Fs/N;
    Xk = W*x;
    Xk = Xk';

end