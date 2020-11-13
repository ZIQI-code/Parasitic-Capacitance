clc
clear

%% to find circuit parameters
fname = 'Z_0mA.mat'; 
load(fname); % load measured data

Npt = 500; % number of interpolation

fl_log = 7; % frequency lower bound (10^fl Hz)
fu_log = 9; % frequency upper bound (10^fu Hz)

[Zmeas, fi] = z_interp(Zr_0mA, f_r_0mA, Zi_0mA, f_i_0mA, Npt); % total impedence

% Objective Function
ObjFun = @(a)obj_8_element(a, Zmeas, Npt, fi); 

nvars = 8; % number of variable

% a(1-8) : C1 C2 R1 R2 R3 R4 L1 L2
lb = [1e-14 1e-14 1   1   1   1   1e-10 1e-10]; % circuit element parameter lower bound
ub = [1e-6  1e-4  1e4 1e4 1e4 1e4 1e-4  1e-4]; % circuit element parameter upper bound

% options = optimoptions('ga','ConstraintTolerance',1e-3,'MaxGenerations',10000);
options = optimoptions('ga');
options = optimoptions(options,'MutationFcn',{@mutationgaussian,1,.95});
options = optimoptions(options,'PopulationSize',500);
[x, fval] = ga(ObjFun,nvars,[],[],[],[],lb,ub,[],options)  % using GA algorithm


%% evaluate the finding result
figure
hold on
plot(fi, real(Zmeas),'r','DisplayName','measured (real part)');
plot(fi, imag(Zmeas),'r--','DisplayName','measured (imaginary part)')
F = z_8_element(x, fi);
plot(fi, real(F),'b','DisplayName','estimate (real part)')
plot(fi, imag(F),'b--','DisplayName','estimate (imaginary part)')

set(gca,'XScale','log')
xlabel('Frequency(Hz)');ylabel('Impedence(¦¸)')
legend ('show')



