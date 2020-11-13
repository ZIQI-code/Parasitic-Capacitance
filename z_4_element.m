function Zcal = z_4_element(x, f0)
% CIRCUIT:
% |------R--|--L--|      1/R4    1/x(1) 
% |              
% |------Cp-|         C1    1j*w0*x(2)*u1
% |              
% |---CS----------|   1/(R1+L1)   1./(1j*w0*x(3)*u2+x(4))
%
% parameter meaning:
% a(1)--->R
% a(2)--->L
% a(3)--->Cp
% a(4)--->Cs
% 
% F = Zeq = 1/((1/R4) + jwC1 + 1/(jwL1+R1))

u1 = 1;
u2 = 1;

w0 = 2*pi*f0;

%  1/R1  +  w*C2  +  1/
Zcal = 1./(1./(1./(1./x(1) + j.*w0.*x(3)) + j.*w0.*x(2))+j.*w0.*x(4));


end