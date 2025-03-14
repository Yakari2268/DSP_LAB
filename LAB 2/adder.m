function[Xw] = dtft(xn,n)
    for i = 0:n-1
        Xw = @(w) Xw + xn(i)*exp(-j*w*i);
    end
end