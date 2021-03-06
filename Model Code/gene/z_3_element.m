function Zcal = z_3_element(x, f0)
% CIRCUIT:
% |----R--|--L--|      1/R4    1/x(1) 
% |       |     |
% |---Cp--|     |    C1    1j*w0*x(2)*u1
% |             | 
% |---CS--------|   1/(R1+L1)   1./(1j*w0*x(3)*u2+x(4))
%
% parameter meaning:
% R--->R
% L--->L
% a(1)--->Cp
% a(2)--->Cs
% 
% F = Zeq = 1/((1/R4) + jwC1 + 1/(jwL1+R1))
R = 36.82;
L = 4.96e-6;
u1 = 1e-12;
u2 = 1e-12;

w0 = 2*pi*f0;

%  1/R1  +  w*C2  +  1/ 
% Zcal = 1./(1./(1./(1./R + 1j.*w0.*x(1)) + 1j.*w0.*L)+ 1j.*w0.*x(2));
Zcal = 1./(1./(1./(1./36.82 + 1j.*w0.*x(1).*u1) + 1j.*w0.*4.96e-6)+ 1j.*w0.*x(2).*u2);
% Zcal = 1./(1./(1./(1./x(1) + 1j.*w0.*x(3)) + 1j.*w0.*x(2))+ 1j.*w0.*x(4));

end