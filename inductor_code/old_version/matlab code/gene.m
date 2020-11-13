clc
clear all
close all

%% to find circuit parameters
load('Z_0mA.mat'); % load measured data
N = 500; % number of interpolation
fl = 7; % frequency lower bound (10^fl Hz)
fu = 9; % frequency upper bound (10^fu Hz)
Z = calculateZ(Zr_0mA,f_r_0mA,Zi_0mA,f_i_0mA,N); % total impedence
ObjectiveFunction = @(a)fitness(a,Z,N,fl,fu); % Objective Function
nvars = 8; % number of variable
% lb = zeros(1,8); % circuit element parameter lower bound
% ub = [inf 1000 10000 inf 0 10000 1000 inf]; % circuit element parameter upper bound
lb = [ 1000    1e-14  1e-6 0   ]; % circuit element parameter lower bound
ub = [ 100000  1e-10   1e-4 1000];
options = optimoptions('ga','ConstraintTolerance',1e-3,'MaxGenerations',10000);
[x, fval] = ga(ObjectiveFunction,nvars,[],[],[],[],lb,ub,[],options)  % using GA algorithm


%% evaluate the finding result
xi = linspace(fl,fu,N);
f = 10.^xi;
figure
plot(f,real(Z),'r','DisplayName','measured (real part)');hold on
plot(f,imag(Z),'g--','DisplayName','measured (imaginary part)')
F = myfun(x, f);
plot(f,real(F),'b','DisplayName','estimate (real part)')
plot(f,imag(F),'m--','DisplayName','estimate (imaginary part)')
set(gca,'XScale','log')
legend ('show')