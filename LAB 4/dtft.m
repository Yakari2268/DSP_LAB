function [y,omega] = dtft(xn,N)
    omega = linspace(0,2*pi,N);
    n = 0:length(xn)-1;
    y = zeros(size(omega));
    for k = 1:length(omega)
        y(k) = sum(xn.*exp(-1i*omega(k)*n));
    end
end
