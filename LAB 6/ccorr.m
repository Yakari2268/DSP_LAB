function [y] = ccorr(x1,x2)
    if(length(x1)<length(x2))
        x1 = [x1 zeros(1,length(x2)-length(x1))];
    elseif(length(x2)<length(x1))
        x2 = [x2 zeros(1,length(x1)-length(x2))];
    end
    X1 = fft(x1);
    X2 = fft(x2);
    Yk = X1.*conj(X2);
    y = ifft(Yk);
end