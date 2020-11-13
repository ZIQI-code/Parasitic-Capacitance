function y = obj_4_element(x, Zmeas, N, fi)
% x -- circuit element parameter
% x(1-8) : C1 C2 R1 R2 R3 R4 L1 L2
% Z -- measured inpedence
% N -- number of interpolation
% y -- fitness function
% fi -- frequency 


% inductor equivalent equation

Zcal = z_4_element(x, fi); 

Zreal = real(Zmeas);
wei_real = abs(Zreal/max(Zreal));
wei_real = 1;

Zimag = imag(Zmeas);
wei_imag = abs(Zimag/max(Zimag));
wei_imag = 5;

y = sum( wei_real.*abs(real(Zmeas-Zcal)).^2 + wei_imag.*abs(imag(Zmeas-Zcal)).^2 )/N;


end


