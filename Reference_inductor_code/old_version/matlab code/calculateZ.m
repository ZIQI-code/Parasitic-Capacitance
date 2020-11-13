function Z = calculateZ(Zr_0mA,f_r_0mA,Zi_0mA,f_i_0mA,N)
% this function is used to normalize total impedence at different current
% N -- number of interpolation

%% interpolation
[xr,yr] = interpolation(f_r_0mA,Zr_0mA,N);
[xi,yi] = interpolation(f_i_0mA,Zi_0mA,N);
% plot(xr,yr,'r-');hold on
% set(gca,'XScale','log')
% plot(f_r_0mA,Zr_0mA,'k*')
% plot(xi,yi,'b-')

%% Z total
Z = yr + 1j.*(yi);
% figure
% plot(xr,Z)
% set(gca,'XScale','log')

