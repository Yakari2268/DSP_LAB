omega = 0:pi/4:3*pi;
n = 1:30;
r = 1;
for i = omega
    ct(r,:) = 2*cos(n*i);
    r = r+1;
end