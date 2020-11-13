syms f C1 C2 R1 R2 R3 R4 L1 L2


j = sqrt(-1);

F = 1/(((j*2*pi.*f*C2)./(j*2*pi.*f*C2*R3+1)) + (1./(j*2*pi.*f*L2+R2)) +... 
1/R4 + j*2*pi.*f*C1 + (1./(j*2*pi.*f*L1+R1)));

C1 = 100;
C2 = 50;
R1 = 2000;
R2 = 10;
R3 = 125;
R4 = 10;
L1 = 40;
L2 = 1000;
f = xi;
Y = eval(F);
plot(f,real(Y));hold on
plot(f,imag(Y),'r')
set(gca,'XScale','log')
real(F)