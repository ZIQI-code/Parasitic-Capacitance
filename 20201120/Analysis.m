%% 

%% study of total capacitance with the increase of the turns Knitted
freq = csvread('N20_0.32C_04.CSV',3,0,[3,0,802,0]);
simuL = ([0.829,1.16,1.48,1.81,2.13,2.43,2.75]./(0.2*pi)).*1e-6;
simu = [170.0150,137.0315,116.0420,102.0490,91.0545,82.0590,75.0625].*1e+6;
simuC = ((2.*pi.*simu).^(-2))./simuL;
model = ["RC_Circuit_N8_1","RC_Circuit_N10_1","RC_Circuit_N12_1","RC_Circuit_N14_1","RC_Circuit_N16_1","RC_Circuit_N18_1","RC_Circuit_N20_1"];
Fc = [];
x = [8,10,12,14,16,18,20];
data_real = [K_R_N8_31_new_A;K_R_N10_31_new_A;K_R_N12_31_new_A;K_R_N14_31_new_A;K_R_N16_31_new_A;K_R_N18_31_new_A;K_R_N20_31_new_A];
data_imag = [K_I_N8_31_new_A;K_I_N10_31_new_A;K_I_N12_31_new_A;K_I_N14_31_new_A;K_I_N16_31_new_A;K_I_N18_31_new_A;K_I_N20_31_new_A];
Cslist = [5.83e-13,5.08e-13,4.5e-13,4.2e-13,4e-13,3.92e-13,3.78e-13];
Rlist = [9,6.2,5,5,4.5,4,4,4];
%5e-15,2.5e-14,2.5e-14,2.5e-14,2e-14,2e-14
for i = 1
    open(model(i))
    sdo.setValueInModel(model(i), 'Cp', 2e-14);
    sdo.setValueInModel(model(i), 'Cs', Cslist(i));
    sdo.setValueInModel(model(i), 'L', L_C_32_A(i)/x(i));
    sdo.setValueInModel(model(i), 'R', Rlist(i));
    z_data = power_zmeter(model(i), freq'); 
    [M,I] = max(real(z_data.Z));
    Fc = [Fc, freq(I)];
    
    figure(99)
    plot(freq,real(z_data.Z),freq, data_real(i,:))
    legend('simulation', 'experiment')
    grid on
    figure(98)
    plot(freq, imag(z_data.Z), freq, data_imag(i,:))
    legend('simulation', 'experiment')
    grid on
end 
CT = ((2.*pi.*Fc).^(-2))./simuL;
%% Copper smaller Cp
freq = csvread('N20_0.32C_04.CSV',3,0,[3,0,802,0]);
simuL = ([0.829,1.16,1.48,1.81,2.13,2.43,2.75]./(0.2*pi)).*1e-6;
simu = [170.0150,137.0315,116.0420,102.0490,91.0545,82.0590,75.0625].*1e+6;
F_C_32 = [7.6244    6.5741    5.8615    5.2738    4.7237    4.2361    3.9110].*1.0e+07;
C_32_CT = ((2.*pi.*F_C_32).^(-2))./L_C_32_A;
simuC = ((2.*pi.*simu).^(-2))./simuL;
data_real = [C_R_N8_32_A;C_R_N10_32_A;C_R_N12_32_A;C_R_N14_32_A;C_R_N16_32_A;C_R_N18_32_A;C_R_N20_32_A];
data_imag = [C_I_N8_32_A;C_I_N10_32_A;C_I_N12_32_A;C_I_N14_32_A;C_I_N16_32_A;C_I_N18_32_A;C_I_N20_32_A];
model = ["RC_Circuit_N8C_1","RC_Circuit_N10C_1","RC_Circuit_N12C_1","RC_Circuit_N14C_1","RC_Circuit_N16C_1","RC_Circuit_N18C_1","RC_Circuit_N20C_1"];
Fc2 = [];
x = [8,10,12,14,16,18,20];
Cslist = [5.83e-13,5.08e-13,4.5e-13,4.2e-13,4e-13,3.92e-13,3.78e-13];
Rlist = [6.8,4,2,2.5,2.2,1.5,0.7];
for i = 7
    open(model(i))

    sdo.setValueInModel(model(i), 'Cs', Cslist(i));
    sdo.setValueInModel(model(i), 'L', L_C_32_A(i)/x(i));
    sdo.setValueInModel(model(i), 'R', Rlist(i));
    z_data = power_zmeter(model(i), freq'); 
    [M,I] = max(real(z_data.Z));
    Fc2 = [Fc2, freq(I)];
    
    figure(99)
    plot(freq,real(z_data.Z),freq, data_real(i,:))
    legend('simulation', 'experiment')
    grid on
    figure(98)
    plot(freq, imag(z_data.Z), freq, data_imag(i,:))
    legend('simulation', 'experiment')
    grid on
    
end 
CT2 = ((2.*pi.*Fc2).^(-2))./simuL;
%% 
freq = csvread('N20_0.32C_04.CSV',3,0,[3,0,802,0]);
simuL = ([0.829,1.16,1.48,1.81,2.13,2.43,2.75]./(0.2*pi)).*1e-6;
simu = [170.0150,137.0315,116.0420,102.0490,91.0545,82.0590,75.0625].*1e+6;
simuC = ((2.*pi.*simu).^(-2))./simuL;
model = ["RC_Circuit_N8_1","RC_Circuit_N10_1","RC_Circuit_N12_1","RC_Circuit_N14_1","RC_Circuit_N16_1","RC_Circuit_N18_1","RC_Circuit_N20_1"];
data_real = [C_R_N8_32_A;C_R_N10_32_A;C_R_N12_32_A;C_R_N14_32_A;C_R_N16_32_A;C_R_N18_32_A;C_R_N20_32_A];
data_imag = [C_I_N8_32_A;C_I_N10_32_A;C_I_N12_32_A;C_I_N14_32_A;C_I_N16_32_A;C_I_N18_32_A;C_I_N20_32_A];
Fc2 = [];
x = [8,10,12,14,16,18,20];
for i = 1
    open(model(i))
    fcn = @(p) Zmeasure_Objective_A(p, freq, data_real(i,:), data_imag(i,:), model(i));
    p = sdo.getParameterFromModel(model(i), {'Cs','R','L'});
    p(1).Value = 1e-12;
    p(1).Minimum = 1e-15;
    p(1).Maximum = 1e-9;
    p(2).Value = 10;
    p(2).Minimum = 0;
    p(2).Maximum = 100;
    p(3).Value = L_C_32_A(i)/x(i);
    
    opts = sdo.OptimizeOptions('Method','lsqnonlin');
    opt_result = sdo.optimize(fcn, p,opts)
    
    sdo.setValueInModel(model(i), 'Cp', 1e-15);
    sdo.setValueInModel(model(i), 'Cs', opt_result(1).Value);
    sdo.setValueInModel(model(i), 'L', opt_result(3).Value);
    sdo.setValueInModel(model(i), 'R', opt_result(2).Value);
    
    z_data = power_zmeter(model(i), freq'); 
    [M,I] = max(real(z_data.Z));
    Fc2 = [Fc2, freq(I)];
    
    figure(99)
    plot(freq,real(z_data.Z),freq, data_real(i,:))
    legend('simulation', 'experiment')
    grid on
    figure(98)
    plot(freq, imag(z_data.Z), freq, data_imag(i,:))
    legend('simulation', 'experiment')
    grid on
    
end 
CT2 = ((2.*pi.*Fc2).^(-2))./L_C_32_A;
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

Cslist = [5.83e-13,5.08e-13,4.5e-13,4.2e-13,4e-13,3.92e-13,3.78e-13];
Rlist = [6.8,4,2,2.5,2.2,1.5,0.7];

figure(3)
plot(x,Cslist)
title('Turn to turn Capacitance for Copper')

figure(4)
plot(x,Rlist)