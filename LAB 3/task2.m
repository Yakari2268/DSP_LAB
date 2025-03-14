A = [0.7,2.7];
F = [50,150];
N = [1500,500,500,500,450];
Fs = [500,500,120,60,60];

Yk_all = cell(1,5);

for i=1:5
      yn = cosDescrete(A(1),F(1),Fs(i),N(i)) + cosDescrete(A(2),F(2),Fs(i),N(i));
      if i==5
          break;
      end
      [Yk,fk] = dft(yn,Fs(i),N(i));
            Yk_all{i} = yn;
      figure(1)
      subplot(5,1,i)   
      stem(fk,abs(Yk));
end

[Yk,fk] = dft(yn,Fs(i),500);
figure(1)
subplot(5,1,5)
stem(fk,abs(Yk));