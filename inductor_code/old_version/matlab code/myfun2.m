function F = myfun2(a, f)
u1 = 1;
u2 = 1;

% CIRCUIT:
% |------R4------|
% |              |
% |------C1------|
% |              |
% |---L1---R1----|
%
% parameter meaning:
% a(1)--->R4
% a(2)--->C1
% a(3)--->L1
% a(4)--->R1
% 
% F = Zeq = 1/((1/R4) + jwC1 + 1/(jwL1+R1))

F = 1./((((1/a(1) + 1j*2*pi.*f*a(2)*u1 + (1./(1j*2*pi.*f*a(3)*u2+a(4)))))));