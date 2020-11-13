%%Circuit equation of the simple RLC Circuit.
function Zcal = z_4_element_Real(x, f0)
% CIRCUIT:
% |--R---L-----|       1/(L+R)    1./(1j*w0*x(2)*u2+x(1))
% |              |
% |------Cparasitic------|         Cp    1j*w0*x(3)*u1
% |              |
% |-------Cspacing----|             Cs   1j*w0*x(4)*u1
%
% parameter meaning:
% a(1)--->R
% a(2)--->L
% a(3)--->Cp
% a(4)--->Cs
% 
% F = Zeq = 1/((1/R+jwL) + jwCp + jwCs)
w0 = 2*pi*f0;
u1 = 1;
u2 = 1;
Zcal = real(1./( (1./(1j*w0*x(2)*u2+x(1))) + 1j*w0*x(3)*u1 + 1j*w0*x(4)*u1 ));

end



function Zcal = z_4_element_Imag(x, f0)

w0 = 2*pi*f0;
u1 = 1;
u2 = 1;
Zcal = imag(1./( (1./(1j*w0*x(2)*u2+x(1))) + 1j*w0*x(3)*u1 + 1j*w0*x(4)*u1 ));

end