clc
clear
close all

Nvar = 4;  % number of variable
Nfit = 20;
ivec = [0 50 100 150 200 250 300];
mat_name = {'Z_0mA.mat';'Z_50mA.mat';'Z_100mAzeros.mat';'Z_150mA.mat';...
    'Z_200mA.mat';'Z_250mA.mat';'Z_300mA.mat';};
Nfile = size(mat_name,1);

Nf = 200; % number of interpolation
fl_log = 7; % frequency lower bound (10^fl Hz)
fu_log = 9; % frequency upper bound (10^fu Hz)
Zmeas = zeros(Nfile, Nf);
xcir = zeros(Nfile, 4);

for ik = 1:Nfile
    
    fname = mat_name{ik};
    load(fname); % load measured data
    [Zmeas(ik,:), fi] = z_interp(Zr_0mA, f_r_0mA, Zi_0mA, f_i_0mA, Nf); % total impedence
    
    % Objective Function
    ObjFun = @(a) obj_4_element(a, Zmeas(ik,:), Nf, fi);
    if ik == 1
        lb = [ 1000    1e-14  1e-6 0   ]; % circuit element parameter lower bound
        ub = [ 100000  1e-8   1e-4 1000];
%     elseif ik == Nfile
%         lb = [ xcir(1,1) xcir(1,2)           5e-7  xcir(Nfile-1,4)];
%         ub = [ xcir(1,1) xcir(1,2) xcir(Nfile-1,3) 2000 ];
    else
        lb = [ xcir(1,1) xcir(1,2) 1e-6 100    ]; % circuit element parameter lower bound
        ub = [ xcir(1,1) xcir(1,2) 1e-4 1000 ];
    end
%     lb = [ 1000   1e-14  1e-6 0]; % circuit element parameter lower bound
%     ub = [ 100000 1e-10  1e-4 1000];
    
    % options = optimoptions('ga','PlotFcn',@gaplotbestf);
    % options = optimoptions('ga','PlotFcn',@gaplotdistance);
    options = optimoptions('ga');
    options = optimoptions(options,'MutationFcn',{@mutationgaussian,1,.95});
%   options = optimoptions(options,'FunctionTolerance',1e-10);
%   options = optimoptions(options,'MutationFcn',{@mutationuniform, .80});
    options = optimoptions(options,'PopulationSize', 500);
    % options = optimoptions(options,'Display','diagnose');
    % options = optimoptions(options,'UseParallel',true);
    
    % using GA algorithm
    [xcir(ik,1:Nvar), fval] = ga(ObjFun,Nvar,[],[],[],[],lb,ub,[],options);
end

fsave = 'zfit_result';
save(fsave, 'Zmeas','fi','xcir','Nvar','Nf' ); % load measured data


%% evaluate the finding result
figure(22)
for ik = 1:Nfile
    subplot(2,4,ik)
    hold on
    plot(fi, real(Zmeas(ik,:)),'r','DisplayName','measured (real part)');
    plot(fi, imag(Zmeas(ik,:)),'r--','DisplayName','measured (imaginary part)')
    
%     if ik == Nfile
%         xtemp = xcir(ik,:);
%         xtemp(3) = 1*xcir(ik,3);
%         xtemp(4) = 1.*xcir(ik,4);
%         Zcal = z_4_element(xtemp, fi);
%     else
        Zcal = z_4_element(xcir(ik,:), fi);
%     end
    
    plot(fi, real(Zcal),'b','DisplayName','estimate (real part)')
    plot(fi, imag(Zcal),'b--','DisplayName','estimate (imaginary part)')
    
    set(gca,'XScale','log')
    xlabel('Frequency(Hz)');ylabel('Impedence(ï¿½ï¿½)')
end

figure(21)
subplot(2,2,1)
plot(ivec, xcir(:,1),'r','DisplayName','R4');
legend
subplot(2,2,2)
plot(ivec, xcir(:,2)*1e9,'b','DisplayName','C1');
legend
subplot(2,2,3)
plot(ivec, xcir(:,3)*1e6,'g','DisplayName','L1');
legend
subplot(2,2,4)
plot(ivec, xcir(:,4),'b','DisplayName','R1');
legend


%% search changeable resistance 
Nvar1 = 6;

for ik = 1:Nfile
    
    fname = mat_name{ik};
    load(fname); % load measured data
    [Zmeas(ik,:), fi] = z_interp(Zr_0mA, f_r_0mA, Zi_0mA, f_i_0mA, Nf); % total impedence
    
    % Objective Function
    ObjFun1 = @(a) obj_searchR(a, Zmeas(ik,:), Nf, fi);
    lb1 = [ 0    max(xcir(:,3))  xcir(1,2) xcir(1,1) 0   min(xcir(:,3))*0.5]; % circuit element parameter lower bound
    ub1 = [ 200  max(xcir(:,3))  xcir(1,2) xcir(1,1) 200 min(xcir(:,3))*0.5];
    
    % options = optimoptions('ga','PlotFcn',@gaplotbestf);
    % options = optimoptions('ga','PlotFcn',@gaplotdistance);
    options = optimoptions('ga');
    options = optimoptions(options,'MutationFcn',{@mutationgaussian,1,.85});
%   options = optimoptions(options,'FunctionTolerance',1e-10);
%   options = optimoptions(options,'MutationFcn',{@mutationuniform, .80});
    options = optimoptions(options,'PopulationSize', 500);
    % options = optimoptions(options,'Display','diagnose');
    % options = optimoptions(options,'UseParallel',true);
    
    % using GA algorithm
    [xcir1(ik,1:Nvar1), fval] = ga(ObjFun1,Nvar1,[],[],[],[],lb1,ub1,[],options);
end

fsave = 'zfit_result';
save(fsave, 'Zmeas','fi','xcir','Nvar','Nf' ); % load measured data


%% evaluate the finding result
figure(222)
for ik = 1:Nfile
    subplot(2,4,ik)
    hold on
    plot(fi, real(Zmeas(ik,:)),'r','DisplayName','measured (real part)');
    plot(fi, imag(Zmeas(ik,:)),'r--','DisplayName','measured (imaginary part)')
    
%     if ik == Nfile
%         xtemp = xcir(ik,:);
%         xtemp(3) = 1*xcir(ik,3);
%         xtemp(4) = 1.*xcir(ik,4);
%         Zcal = z_4_element(xtemp, fi);
%     else
        Zcal = z_searchR(xcir1(ik,:), fi);
%     end
    
    plot(fi, real(Zcal),'b','DisplayName','estimate (real part)')
    plot(fi, imag(Zcal),'b--','DisplayName','estimate (imaginary part)')
    
    set(gca,'XScale','log')
    xlabel('Frequency(Hz)');ylabel('Impedence(¦¸)')
end

figure(211)
subplot(2,3,1)
plot(ivec, xcir1(:,1),'-ro','DisplayName','R1');
legend
subplot(2,3,2)
plot(ivec, xcir1(:,2)*1e6,'-ro','DisplayName','L1');
legend
subplot(2,3,3)
plot(ivec, xcir1(:,3),'-ro','DisplayName','C');
legend
subplot(2,3,4)
plot(ivec, xcir1(:,4),'-ro','DisplayName','R');
legend
subplot(2,3,5)
plot(ivec, xcir1(:,5),'-ro','DisplayName','R2');
legend
subplot(2,3,6)
plot(ivec, xcir1(:,6)*1e6,'-r*','DisplayName','L2');
legend

