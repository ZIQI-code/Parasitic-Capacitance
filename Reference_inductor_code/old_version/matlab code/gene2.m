clc
clear all
close all

%% to find circuit parameters
load('Z_0mA.mat'); % load measured data
N = 500; % number of interpolation
fl = 7; % frequency lower bound (10^fl Hz)
fu = 9; % frequency upper bound (10^fu Hz)
Z = calculateZ(Zr_0mA,f_r_0mA,Zi_0mA,f_i_0mA,N); % total impedence
ObjectiveFunction = @(a)fitness2(a,Z,N,fl,fu); % Objective Function
nvars = 4; % number of variable
lb = [ 19880 1.81e-12 0.9e-5 0.49]; % circuit element parameter lower bound
ub = [ 20110 1.85e-12 1.1e-5 0.51]; % circuit element parameter upper bound
options = optimoptions('ga','PlotFcn',@gaplotbestf);
% options = optimoptions('ga','PlotFcn',@gaplotdistance);
% options = optimoptions('ga');
options = optimoptions(options,'MutationFcn',{@mutationgaussian,1,.95});
options = optimoptions(options,'PopulationSize',500);
% options = optimoptions(options,'Display','diagnose');
% options = optimoptions(options,'UseParallel',true);

[x, fval] = ga(ObjectiveFunction,nvars,[],[],[],[],lb,ub,[],options)  % using GA algorithm


%% evaluate the finding result
xi = linspace(fl,fu,N);
f = 10.^xi; 
figure
plot(f,real(Z),'r','DisplayName','measured (real part)');hold on
plot(f,imag(Z),'g--','DisplayName','measured (imaginary part)')
F = myfun2(x, f);
plot(f,real(F),'b','DisplayName','estimate (real part)')
plot(f,imag(F),'m--','DisplayName','estimate (imaginary part)')
set(gca,'XScale','log')
xlabel('Frequency(Hz)');ylabel('Impedence(¦¸)')
legend ('show')