function y = obj_8_element(x,Zmeas, N, fi)
% a -- circuit element parameter
% a(1-8) : C1 C2 R1 R2 R3 R4 L1 L2
% Z -- measured inpedence
% N -- number of interpolation
% y -- fitness function
% fl -- frequency lower bound (10^fl Hz)
% fu -- frequency upper bound (10^fu Hz)
% u1 -- unit of conductor (¦ÌF)
% u2 -- unit of inductor (mH)

u1 = 10e-6;
u2 = 10e-3;

% inductor equivalent equation
% FF = ( ((1j*2*pi.*fi*a(2)*u1)./(1j*2*pi.*fi*a(2)*u1*a(5)+1)) ...
%     + (1./(1j*2*pi.*fi*a(8)*u2+a(4))) + 1/a(6) ...
%     + 1j*2*pi.*fi*a(1)*u1 + (1./(1j*2*pi.*fi*a(7)*u2+a(3))));

FF = z_8_element(x, fi);

x = real(Zmeas);
wei = x/max(x);
wei = 1;

y = sum(wei.*(abs(Zmeas-1./FF)))/N;



