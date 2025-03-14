function [y] = myCconv(x1,x2,N_in)
    %Consider default N_in if not passed as argument
    if(nargin<3)
        N_in = max(length(x1),length(x2));
    end
    x1_len = length(x1);
    x2_len = length(x2);
    %padding zeros and trancating inputs
    if(x1_len>N_in)
        x1 = x1(1:N_in);
    elseif(x1_len<N_in)
        for i = x1_len+1:N_in
            x1(i) = 0;
        end
    end

    if(x2_len>N_in)
        x2 = x2(1:N_in);
    elseif(x2_len<N_in)
        for i = x2_len+1:N_in
            x2(i) = 0;
        end
    end
    
    %calculate circular convolution
    for n = 0:N_in-1
        y(n+1) = 0;
        for k = 0:N_in-1
            y(n+1) = y(n+1) + x1(k+1)*x2(mod(n-k,N_in)+1);
        end
    end
end