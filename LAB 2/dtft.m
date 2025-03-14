function[Xw,w] = dtft(xn,n)
    Xw = 0;
    for ind = 1:n
        Xw =Xw + xn(ind)*exp(-1j*w*ind);
        xn(ind)
    end
end