%% 

%% study 0.31 Knitted
freq = csvread('N20_0.31K_10.CSV',3,0,[3,0,802,0]);
model = ["RC_Circuit_N8_1","RC_Circuit_N10_1","RC_Circuit_N12_1","RC_Circuit_N14_1","RC_Circuit_N16_1","RC_Circuit_N18_1","RC_Circuit_N20_1"];
Fk31 = [];
x = [8,10,12,14,16,18,20];
data_real = [K_R_N8_31_new_A;K_R_N10_31_new_A;K_R_N12_31_new_A;K_R_N14_31_new_A;K_R_N16_31_new_A;K_R_N18_31_new_A;K_R_N20_31_new_A];
data_imag = [K_I_N8_31_new_A;K_I_N10_31_new_A;K_I_N12_31_new_A;K_I_N14_31_new_A;K_I_N16_31_new_A;K_I_N18_31_new_A;K_I_N20_31_new_A];

F_K_31_A = [7.4869    6.4241    5.7051    5.1051    4.5298    4.1610    3.8384].*1.0e+07;
Rlist = [7,6.2,4.5,5.5,4.5,4,4,4];
Cslist = [5.87e-13,5.1e-13,4.51e-13,4.21e-13,4e-13,3.92e-13,3.78e-13];
Cplist = [1.7e-14,2.4e-14,2.56e-14,2.2e-14, 2.5e-14, 1.7e-14,2e-14];
for i = 1
    open(model(i))
    sdo.setValueInModel(model(i), 'Cp', Cplist(i));
    sdo.setValueInModel(model(i), 'Cs', Cslist(i));
    sdo.setValueInModel(model(i), 'L', L_C_32_A(i)/x(i));
    sdo.setValueInModel(model(i), 'R', Rlist(i));
    z_data = power_zmeter(model(i), freq'); 
    [M,I] = max(real(z_data.Z));
    Fk31 = [Fk31, freq(I)]
    F_K_31_A 
    figure(99)
    plot(freq,real(z_data.Z),freq, data_real(i,:))
    legend('simulation', 'experiment')
    grid on
    figure(98)
    plot(freq, imag(z_data.Z), freq, data_imag(i,:))
    legend('simulation', 'experiment')
    grid on
end 
CT31 = ((2.*pi.*Fk31).^(-2))./L_K_31_A;
%% Study of 0.32 Copper
freq = csvread('N20_0.32C_04.CSV',3,0,[3,0,802,0]);
F_C_32 = [7.5869    6.5741    5.8615    5.2363    4.7237    4.2486    3.9110].*1.0e+07;
C_32_CT = ((2.*pi.*F_C_32).^(-2))./L_C_32_A;
data_real = [C_R_N8_32_A;C_R_N10_32_A;C_R_N12_32_A;C_R_N14_32_A;C_R_N16_32_A;C_R_N18_32_A;C_R_N20_32_A];
data_imag = [C_I_N8_32_A;C_I_N10_32_A;C_I_N12_32_A;C_I_N14_32_A;C_I_N16_32_A;C_I_N18_32_A;C_I_N20_32_A];
model = ["RC_Circuit_N8C_1","RC_Circuit_N10C_1","RC_Circuit_N12C_1","RC_Circuit_N14C_1","RC_Circuit_N16C_1","RC_Circuit_N18C_1","RC_Circuit_N20C_1"];
Fc32 = [];
x = [8,10,12,14,16,18,20];
Cslist = [5.87e-13,5.1e-13,4.51e-13,4.21e-13,4e-13,3.92e-13,3.78e-13];
Rlist = [6.8,4,2,2.5,2.2,1.5,0.7];
Cc = [3.8e-13,3.9e-13,4e-13,4.2e-13,4.46e-13,5e-13,5.7e-13];
Cclist = [5.7e-13,5e-13,4.46e-13,4.2e-13,4e-13,3.9e-13,3.8e-13];
for i = 1
    open(model(i))
    sdo.setValueInModel(model(i), 'Cc', 1e-12);
    sdo.setValueInModel(model(i), 'Cs', 1e-12);
    sdo.setValueInModel(model(i), 'L', L_C_32_A(i)/x(i));   
    sdo.setValueInModel(model(i), 'R', 5);
    z_data = power_zmeter(model(i), freq'); 
    [M,I] = max(real(z_data.Z));
    Fc32 = [Fc32, freq(I)]; 
    F_C_32;
    
    figure(99)
    plot(freq,real(z_data.Z),freq, data_real(i,:))
    legend('simulation', 'experiment')
    grid on
    figure(98)
    plot(freq, imag(z_data.Z), freq, data_imag(i,:))
    legend('simulation', 'experiment')
    grid on
    
end 
CT32 = ((2.*pi.*Fc32).^(-2))./L_C_32_A;
%% Study of 0.5 Copper
freq = csvread('N20_0.5C_04.CSV',3,0,[3,0,802,0]);
C_32_CT = ((2.*pi.*F_C_32).^(-2))./L_C_32_A;
data_real = [C_R_N8_50_A;C_R_N10_50_A;C_R_N12_50_A;C_R_N14_50_A;C_R_N16_50_A;C_R_N18_50_A;C_R_N20_50_A];
data_imag = [C_I_N8_50_A;C_I_N10_50_A;C_I_N12_50_A;C_I_N14_50_A;C_I_N16_50_A;C_I_N18_50_A;C_I_N20_50_A];
model = ["RC_Circuit_N8C_1","RC_Circuit_N10C_1","RC_Circuit_N12C_1","RC_Circuit_N14C_1","RC_Circuit_N16C_1","RC_Circuit_N18C_1","RC_Circuit_N20C_1"];
Fc50 = [];
F_C_50 = [7.6369    6.5616    5.8240    5.2363    4.7362    4.3111    4.0360].*1.0e+07;
x = [8,10,12,14,16,18,20];
Cslist = [5.75e-13,5.15e-13,4.64e-13,4.25e-13,4.02e-13,3.86e-13,3.6e-13];
Rlist = [9,3,2,2,1.8,1.2,1];
for i = 7
    open(model(i))
    sdo.setValueInModel(model(i), 'Cc', 5e-13);
    sdo.setValueInModel(model(i), 'Cs', Cslist(i));
    sdo.setValueInModel(model(i), 'L', L_C_50_A(i)/x(i));
    sdo.setValueInModel(model(i), 'R', Rlist(i));
    z_data = power_zmeter(model(i), freq'); 
    [M,I] = max(real(z_data.Z));
    Fc50 = [Fc50, freq(I)]
    F_C_50
    
    figure(99)
    plot(freq,real(z_data.Z),freq, data_real(i,:))
    legend('simulation', 'experiment')
    grid on
    figure(98)
    plot(freq, imag(z_data.Z), freq, data_imag(i,:))
    legend('simulation', 'experiment')
    grid on
    
end 
CT50 = ((2.*pi.*Fc50).^(-2))./L_C_50_A;
%% Knitted 0.48
freq = csvread('N20_0.48K_01.CSV',3,0,[3,0,802,0]);
data_real = [K_R_N8_48_A;K_R_N10_48_A;K_R_N12_48_A;K_R_N14_48_A;K_R_N16_48_A;K_R_N18_48_A;K_R_N20_48_A];
data_imag = [K_I_N8_48_A;K_I_N10_48_A;K_I_N12_48_A;K_I_N14_48_A;K_I_N16_48_A;K_I_N18_48_A;K_I_N20_48_A];
model = ["RC_Circuit_N8_1","RC_Circuit_N10_1","RC_Circuit_N12_1","RC_Circuit_N14_1","RC_Circuit_N16_1","RC_Circuit_N18_1","RC_Circuit_N20_1"];
Fk48 = [];
F_K_48 = [7.5994    6.5616    5.8240    5.1988    4.68617    4.2611    3.8860].*1.0e+07;
x = [8,10,12,14,16,18,20];
Cslist = [5.75e-13,5.15e-13,4.64e-13,4.25e-13,4.02e-13,3.86e-13,3.6e-13];
Cplist = [0.6e-14,0.1e-14,0.1e-14,0.6e-14,0.8e-14,0.9e-14,2.8e-14];
Rlist = [8.5,5,4,3,4,3,2.5];
for i = 1:7
    open(model(i))
    sdo.setValueInModel(model(i), 'Cp', Cplist(i));
    sdo.setValueInModel(model(i), 'Cs', Cslist(i));
    sdo.setValueInModel(model(i), 'L', L_C_50_A(i)/x(i));
    sdo.setValueInModel(model(i), 'R', Rlist(i));
    z_data = power_zmeter(model(i), freq'); 
    [M,I] = max(real(z_data.Z));
    Fk48 = [Fk48, freq(I)]
    F_K_48
    
    figure(99)
    plot(freq,real(z_data.Z),freq, data_real(i,:))
    legend('simulation', 'experiment')
    grid on
    figure(98)
    plot(freq, imag(z_data.Z), freq, data_imag(i,:))
    legend('simulation', 'experiment')
    grid on
    
end 
CT48 = ((2.*pi.*Fk48).^(-2))./L_K_48_A;
%% Optimization of 0.32C
freq = csvread('N20_0.32C_04.CSV',3,0,[3,0,802,0]);
model = ["RC_Circuit_N8C_1","RC_Circuit_N10C_1","RC_Circuit_N12C_1","RC_Circuit_N14C_1","RC_Circuit_N16C_1","RC_Circuit_N18C_1","RC_Circuit_N20C_1"];
data_real = [C_R_N8_32_A;C_R_N10_32_A;C_R_N12_32_A;C_R_N14_32_A;C_R_N16_32_A;C_R_N18_32_A;C_R_N20_32_A];
data_imag = [C_I_N8_32_A;C_I_N10_32_A;C_I_N12_32_A;C_I_N14_32_A;C_I_N16_32_A;C_I_N18_32_A;C_I_N20_32_A];
Fc32 = [];
x = [8,10,12,14,16,18,20];
F_C_32 = [7.5869    6.5741    5.8615    5.2363    4.7237    4.2486    3.9110].*1.0e+07;
C_32_CT = ((2.*pi.*F_C_32).^(-2))./L_C_32_A;
C = []; D = [];
for i = 1:7
    open(model(i))
    [M,I] = max(data_real(i));
    C = [C,M]; D = [D,I];
end

    fcn = @(p) Zmeasure_Objective_A(p, freq,C,D);
    p = sdo.getParameterFromModel(model(1), {'Cs','Cc','R'});
    p(1).Value = 5e-12;
    p(1).Minimum = 1e-13;
    p(1).Maximum = 1e-11;
    p(2).Value = 3.6e-13;
    p(2).Minimum = 3.5e-13;
    p(2).Maximum = 3.7e-13;
    p(3).Value = 10;
    p(3).Minimum = 0;
    p(3).Maximum = 20;
    
    opts = sdo.OptimizeOptions('Method','lsqnonlin');
%     options = optimoptions('lsqnonlin','OptimalityTolerance',10)
%     options = optimoptions('lsqnonlin','ConstraintTolerance',1e-9)
%     options = optimoptions('lsqnonlin','StepTolerance',1e-14)
    options = optimoptions('lsqnonlin','FunctionTolerance',1e-20)
    opt_result = sdo.optimize(fcn, p, opts)
    %% 
Fc32 = [];
for i = 1:7
    sdo.setValueInModel(model(i), 'Cs', opt_result(1).Value);
    sdo.setValueInModel(model(i), 'Cc', opt_result(2).Value);
    sdo.setValueInModel(model(i), 'L', L_C_32_A(i)/x(i));
    sdo.setValueInModel(model(i), 'R', opt_result(3).Value);
    z_data = power_zmeter(model(i), freq'); 
    [M,I] = max(real(z_data.Z));
    Fc32 = [Fc32, freq(I)]; 
%     F_C_32;
    
    figure(99)
    plot(freq,real(z_data.Z),freq, data_real(i,:))
    legend('simulation', 'experiment')
    grid on
    figure(98)
    plot(freq, imag(z_data.Z), freq, data_imag(i,:))
    legend('simulation', 'experiment')
    grid on
    
end 
CT32 = ((2.*pi.*Fc32).^(-2))./L_C_32_A;
figure(97)
plot(x,CT32,x,C_32_CT)
legend('simulation','experiment')
grid on
%% 

% figure(1)
% plot(x,Fc,x,Fc2)
% title('Resonant Frequency')
% legend('Knitted','Copper')
% grid on
% 
% figure(2)
% plot(x,CT,x,CT2)
% title('Total Capacitance at Resonant Frequency')
% legend('Knitted','Copper')
% grid on

% Cslist50 = [5.75e-13,5.15e-13,4.64e-13,4.25e-13,4.02e-13,3.86e-13,3.6e-13];
% Cplist48 = [0.6e-14,0.1e-14,0.1e-14,0.6e-14,0.8e-14,0.9e-14,2.8e-14];
% Cslist32 = [5.87e-13,5.1e-13,4.51e-13,4.21e-13,4e-13,3.92e-13,3.78e-13];
% Cplist31 = [1.7e-14,2.4e-14,2.56e-14,2.2e-14, 3.4e-14, 1.7e-14,1.5e-14];
% figure(3)
% plot(x,Cslist50,x,Cslist32)
% title('Turn to turn/core Capacitance for Copper')
% legend('0.5mm','0.32mm')
% 
% figure(4)
% plot(x,Cplist48,x,Cplist31)
% title('Cp for each turn')
% legend('0.43mm','0.31mm')

