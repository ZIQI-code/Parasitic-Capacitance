function Zcal = z_4_element(x, f0)
% CIRCUIT:
% |------R4------|       1/R4    1/x(1) 
% |              |
% |------C1------|         C1    1j*w0*x(2)*u1
% |              |
% |---L1---R1----|   1/(R1+L1)   1./(1j*w0*x(3)*u2+x(4))
%
% parameter meaning:
% a(1)--->R4
% a(2)--->C1
% a(3)--->L1
% a(4)--->R1
% 
% F = Zeq = 1/((1/R4) + jwC1 + 1/(jwL1+R1))

u1 = 1;
u2 = 1;

w0 = 2*pi*f0;

%  1/R1  +  w*C2  +  1/
Zcal = 1./( 1/x(1) + 1j*w0*x(2)*u1 + (1./(1j*w0*x(3)*u2+x(4))) );


end