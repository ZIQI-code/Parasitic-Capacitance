function y = obj_3_element(x,Zmeas_r,Zmeas_i,fi)
% a -- circuit element parameter
% a(1-4) : R L Cp Cs
% Zmeas -- measured inpedence
% N -- number of interpolation
% y -- fitness function
% fl -- frequency lower bound (10^fl Hz)
% fu -- frequency upper bound (10^fu Hz)
% u1 -- unit of conductor (¦ÌF)
% u2 -- unit of inductor (mH)

% inductor equivalent equation
% FF_i = imag(1./( (1./(1j*w0*x(2)*u2+x(1))) + 1j*w0*x(3)*u1));
% FF_r = real(1./( (1./(1j*w0*x(2)*u2+x(1))) + 1j*w0*x(3)*u1 ));   

FF = z_3_element(x, fi);


y = sum( abs(Zmeas_r-real(FF)).^2 + abs(Zmeas_i-imag(FF)).^2 )/500;
end