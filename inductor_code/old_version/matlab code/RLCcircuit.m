clear 
clc
close all

R = 20000;
R1 = 0.5;
L = 1e-5;
C = 1.83e-12;
fl = 7;
fu = 9;
x = linspace(fl,fu,1000); 
f = 10.^x;
w = 2*pi*f;
Y = 1/R + 1j.*w.*C + 1./(1j.*w.*L + R1);
plot(f,real(1./Y))
hold on
plot(f,imag(1./Y))
set(gca,'XScale','log')