% function averagePara
fbest = 1000;
t = 0
for i = 1:50
    clear x fval
    load('Z_50mA.mat'); % load measured data
    N = 200; % number of interpolation
    fl = 7; % frequency lower bound (10^fl Hz)
    fu = 9; % frequency upper bound (10^fu Hz)
    Z = calculateZ(Zr_0mA,f_r_0mA,Zi_0mA,f_i_0mA,N); % total impedence
    ObjectiveFunction = @(a)fitness2(a,Z,N,fl,fu); % Objective Function
    nvars = 4; % number of variable
    lb = [5.147296236246621e+03 2.650408893959901e-12 1e-7 0]; % circuit element parameter lower bound
    ub = [5.147296236246621e+03 2.650408893959901e-12 1e-4 100]; % circuit element parameter upper bound
    % options = optimoptions('ga','PlotFcn',@gaplotbestf);
    % options = optimoptions('ga','PlotFcn',@gaplotdistance);
    options = optimoptions('ga');
    options = optimoptions(options,'MutationFcn',{@mutationgaussian,1,.95});
    options = optimoptions(options,'PopulationSize',200);
    %     options = optimoptions(options,'Display','diagnose');
    % options = optimoptions(options,'UseParallel',true);
    
    [x, fval] = ga(ObjectiveFunction,nvars,[],[],[],[],lb,ub,[],options);  % using GA algorithm
    if fval<fbest+50 % 有效值
        fbest = fval;
        R4(i) = x(1);
        C1(i) = x(2);
        L1(i) = x(3);
        R1(i) = x(4);
    end
    t = t+1
end

n = 1:length(R4);

clear x
x = [mean(R4) mean(C1) mean(L1) mean(R1)]
v = [var(R4) var(C1) var(L1) var(R1)]
figure
plot(n,R4,'-o')
figure
plot(n,C1,'-o')
figure
plot(n,L1,'-o')
figure
plot(n,R1,'-o')

save('P_50mA.mat','R4','C1','L1','R1') % 保存计算结果

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
xlabel('Frequency(Hz)');ylabel('Impedence(Ω)')
legend ('show')