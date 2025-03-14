function [xn] = cosDescrete(amp,F1,Fs,N)
    ts = 1/Fs;
    n = 0:N-1;
    xn = cos(2*pi*F1*n*ts);
end