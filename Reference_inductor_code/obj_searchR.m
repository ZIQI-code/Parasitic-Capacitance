function y = obj_searchR(x, Zmeas, N, fi)
% x -- circuit element parameter
%
% x(1-6) :
% x(1)--->R1
% x(2)--->L1
% x(3)--->C
% x(4)--->R
% x(5)--->R2
% x(6)--->L2
%
% Z -- measured inpedence
% N -- number of interpolation
% y -- fitness function
% fi -- frequency 


% inductor equivalent equation

Zcal = z_searchR(x, fi); 

Zreal = real(Zmeas);
wei_real = abs(Zreal/max(Zreal));
wei_real = 1;

Zimag = imag(Zmeas);
wei_imag = abs(Zimag/max(Zimag));
wei_imag = 5;

y = sum( wei_real.*abs(real(Zmeas-Zcal)).^2 + wei_imag.*abs(imag(Zmeas-Zcal)).^2 )/N;


end


