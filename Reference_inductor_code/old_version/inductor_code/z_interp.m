function [Zint, fi] = z_interp(Zr_meas, f_r, Zi_meas,f_i, Nint)
% this function is used to normalize total impedence at different current
% N -- number of interpolation

%% interpolation
xi = linspace(7, 9, Nint);

fi = 10.^xi;

Zr_int = interp1(f_r, Zr_meas, fi,'cubic');
Zi_int = interp1(f_i, Zi_meas, fi,'cubic');


% plot(xr,yr,'r-');hold on
% set(gca,'XScale','log')
% plot(f_r_0mA,Zr_0mA,'k*')
% plot(xi,yi,'b-')

%% Z total
Zint = Zr_int + 1j.*(Zi_int);
% figure
% plot(xr,Z)
% set(gca,'XScale','log')

