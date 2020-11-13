L0F_C_0 = csvread('L0N18_00_0.43KNIT_01_10_1.CSV',3,0,[3,0,201,0]);
L0R_C_0 = csvread('L0N18_00_0.43KNIT_01_10_1.CSV',3,1,[3,1,201,1]);
L0I_C_0 = csvread('L0N18_00_0.43KNIT_01_10_1.CSV',3,2,[3,2,201,2]);


% fl_log = 1; % frequency lower bound (fl*10^6 Hz)
% fu_log = 70; % frequency upper bound (fu*10^6 Hz)

% Objective Function
ObjFun = @(a)obj_3_element(a, L0R_C_0,L0I_C_0,L0F_C_0);

nvars = 2; % number of variable

% a(1-3) : R L Cp Cs
lb = [0,3]; % circuit element parameter lower bound
ub = [0,3]; % circuit element parameter upper bound
options = optimoptions('ga','MutationFcn',{@mutationadaptfeasible,1,0.65},'ConstraintTolerance',1e-6,'MaxGenerations',10000,'PopulationSize',10000,'FunctionTolerance',1e-10);
% opts.InitialPopulationRange=[1e-13,1e-13;1e-9,1e-9];
%options = optimoptions('ga');
%options = optimoptions(options,'MutationFcn',{@mutationgaussian,1,85}) 'MutationFcn',{@mutationadaptfeasible,1,.95};
%options = optimoptions(options,'PopulationSize',1000,'FunctionTolerance',1e-18);
% options = optimoptions(options,'Display','diagnose');
% options = optimoptions(options,'UseParallel',true);
options = optimoptions('ga','PlotFcn',@gaplotbestf);
options = optimoptions('ga','PlotFcn',@gaplotdistance);


[x, fval] = ga(ObjFun,nvars,[],[],[],[],lb,ub,[],options)  % using GA algorithm

%% Draw graph
figure
% y = zeros(size(L0F_C_0));
% for i = 1:length(y)
%     y(i) = z_3_element(x, L0F_C_0(i));
% end
y = z_3_element(x, L0F_C_0);

plot(L0F_C_0,L0R_C_0,L0F_C_0,real(y))
hold on
legend('Experimental','Computational')
grid on
title('Experimental Vs. Computational Data Real (0.43KNIT)')
xlabel('Frequency (Hz)')
ylabel('Ohms')
hold off

figure
plot(L0F_C_0,L0I_C_0,L0F_C_0,imag(y))
hold on
legend('Experimental','Computational')
grid on
title('Experimental Vs. Computational Data (0.43KNIT)')
xlabel('Frequency (Hz)')
ylabel('Reactance')
hold off