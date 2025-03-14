function [y] = myLinconv(x1,x2)
    x1_len = length(x1);
    x2_len = length(x2);
    N = x1_len+x2_len-1;
    y = myCconv(x1,x2,N);
end
