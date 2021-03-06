clc
clear

Nvar = 6;  % number of variable
Nfit = 20;
ivec = [0 50 100 150 200 250 300];
mat_name = {'Z_0mA.mat';'Z_50mA.mat';'Z_100mA.mat';'Z_150mA.mat';...
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
    ObjFun = @(a) obj_searchR(a, Zmeas(ik,:), Nf, fi);
%     if ik == 1
%         lb = [ 1000    1e-14  1e-6 0   ]; % circuit element parameter lower bound
%         ub = [ 100000  1e-8   1e-4 1000];
% %     elseif ik == Nfile
% %         lb = [ xcir(1,1) xcir(1,2)           5e-7  xcir(Nfile-1,4)];
% %         ub = [ xcir(1,1) xcir(1,2) xcir(Nfile-1,3) 2000 ];
%     else
%         lb = [ xcir(1,1) xcir(1,2) 1e-6 100    ]; % circuit element parameter lower bound
%         ub = [ xcir(1,1) xcir(1,2) 1e-4 1000 ];
%     end
    lb = [ 0   1.38004101609644e-05  1.578364501263681e-12 2.377828436160187e+04 0 4.268451423310474e-6]; % circuit element parameter lower bound
    ub = [ 100000 1.38004101609644e-05  1.578364501263681e-12 2.377828436160187e+04 100000 4.268451423310474e-6];
    
    % options = optimoptions('ga','PlotFcn',@gaplotbestf);
    % options = optimoptions('ga','PlotFcn',@gaplotdistance);
    options = optimoptions('ga');
    options = optimoptions(options,'MutationFcn',{@mutationgaussian,1,.95});
%   options = optimoptions(options,'FunctionTolerance',1e-10);
%   options = optimoptions(options,'MutationFcn',{@mutationuniform, .80});
    options = optimoptions(options,'PopulationSize', 1000);
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
        Zcal = z_searchR(xcir(ik,:), fi);
%     end
    
    plot(fi, real(Zcal),'b','DisplayName','estimate (real part)')
    plot(fi, imag(Zcal),'b--','DisplayName','estimate (imaginary part)')
    
    set(gca,'XScale','log')
    xlabel('Frequency(Hz)');ylabel('Impedence(��)')
end

figure(21)
subplot(2,1,1)
plot(ivec, xcir(:,1),'r','DisplayName','R1');
legend
subplot(2,1,2)
plot(ivec, xcir(:,5)*1e9,'b','DisplayName','R2');
legend
