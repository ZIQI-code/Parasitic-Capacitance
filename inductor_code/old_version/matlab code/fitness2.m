function y = fitness2(a,Z,N,fl,fu)
% a -- circuit element parameter
% a(1-8) : C1 C2 R1 R2 R3 R4 L1 L2
% Z -- measured inpedence
% N -- number of interpolation
% y -- fitness function
% fl -- frequency lower bound (10^fl Hz)
% fu -- frequency upper bound (10^fu Hz) 
% u1 -- unit of conductor (¦ÌF)
% u2 -- unit of inductor (mH)

u1 = 1;
u2 = 1;
xi = linspace(fl,fu,N); 
f = 10.^xi; 
FF = ((( 1/a(1) + 1j*2*pi.*f*a(2)*u1 + (1./(1j*2*pi.*f*a(3)*u2+a(4))) + (1./(1j*2*pi.*f*a(3)*u2+a(4))) ))); % inductor equivalent equation

c = real(Z);
% w = c/max(c);
w =1;

y = sum(w.*((abs(real(Z-1./FF))+abs(imag(Z-1./FF)))))/N;

end
