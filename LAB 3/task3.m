xn = [1 2 3 4 5 6];
Xk = dft(xn,1/6,6);
yn = idft(Xk,6);
yn = real(yn);
yn = round(yn);

n = 0:127;

xn1 = cos(2*pi*50*n);
Xk1 = dft(xn1,1/128,128);
yn1 = idft(Xk1,128);
yn1 = round(yn1);

if isequal(xn,yn)
    disp("xn and yn are equal");
else
    disp("xn and yn are not equal");
end

if isequal(xn1,yn1)
    disp("xn1 and yn1 are equal");
else
    disp("xn1 and yn1 are not equal");
end