
n= 0:19;

fs_list = [0.5,1/4,1/6];

for i= 1:3
    ts = 1/fs_list(i);
    xn = 2*cos(2*pi*n*ts)+3*cos(3*pi*n*ts);
    figure(1)
    subplot(3,1,i);
    stem(n,xn);
    hold on

end




