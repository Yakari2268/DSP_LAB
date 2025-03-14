function[xn] = idft(Xk,N)
    if isrow(Xk)
       Xk = Xk'; 
    end
    Xk_length = length(Xk);


    if N>Xk_length
        for m = Xk_length+1:N
            Xk(m) = 0;               %Padding zeros
        end
    end
    if N<Xk_length
        Xk = Xk(1:N);                
    end
    
    n = 0:N-1;
    k = n';
    W = exp(j*(2*pi/N)*k*n);  

    xn = (W*Xk)/N;
    xn = xn';
end