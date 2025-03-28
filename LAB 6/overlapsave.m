function [y] = overlapsave(x, h, N)
    % block length must be power of 2
    N=2^(ceil(log10(N)/log10(2)));
    lengthX=length(x);
    M=length(h);
    M1=M-1;
    L=N-M1;
    h=fft(h, N);
    x=[zeros(1, M), x, zeros(1, N-1)];
    K=floor((lengthX+M1-1)/L);
    Y=zeros(K+1, N);
    for k = 0:K
    xk = fft(x(k*L+1:k*L+N));
    Y(k+1,: ) = real(ifft(xk.*h));
    end
    Y=Y(:,M:N)';
    y=(Y(:))';
end