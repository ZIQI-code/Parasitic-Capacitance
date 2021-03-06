%% study 0.31 Knitted
freq = csvread('N20_0.31K_10.CSV',3,0,[3,0,802,0]);
model = ["RC_Circuit_N8_1","RC_Circuit_N10_1","RC_Circuit_N12_1","RC_Circuit_N14_1","RC_Circuit_N16_1","RC_Circuit_N18_1","RC_Circuit_N20_1"];
Fk31 = [];
x = [8,10,12,14,16,18,20];
data_real = [K_R_N8_31_new_A;K_R_N10_31_new_A;K_R_N12_31_new_A;K_R_N14_31_new_A;K_R_N16_31_new_A;K_R_N18_31_new_A;K_R_N20_31_new_A];
data_imag = [K_I_N8_31_new_A;K_I_N10_31_new_A;K_I_N12_31_new_A;K_I_N14_31_new_A;K_I_N16_31_new_A;K_I_N18_31_new_A;K_I_N20_31_new_A];
F_K_31_A = [7.4869    6.4241    5.7051    5.1051    4.5298    4.1610    3.8384].*1.0e+07;
K_31_CT = 1./(4.*(pi.*F_K_31_A).^2 .*L_K_31_new_A);
Rlist = [7,6.2,4.5,5.5,4.5,4,4,4];
% Cslist = [5.87e-13,5.1e-13,4.51e-13,4.21e-13,4e-13,3.92e-13,3.78e-13];
Cplist = [0.1e-14,2.4e-14,2.56e-14,2.2e-14, 2.5e-14, 1.7e-14,2e-14];
for i = 1
    open(model(i))
    sdo.setValueInModel(model(i), 'Cp', 2e-14);
    sdo.setValueInModel(model(i), 'Cc', 3.33e-13);
    sdo.setValueInModel(model(i), 'Cs', 7.5e-12);
    sdo.setValueInModel(model(i), 'L', L_C_32_A(i)/x(i));
    sdo.setValueInModel(model(i), 'R', Rlist(i));
    z_data = power_zmeter(model(i), freq'); 
    [M,I] = max(real(z_data.Z));
    Fk31 = [Fk31, freq(I)];
    F_K_31_A;
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
figure(97)
plot(x,CT31,x,K_31_CT)
legend('simulation','experiment','s2')
grid on
title('Total Capacitance at Resonant Frequency')
xlabel('Turn')
ylabel('Capacitance')
%% Study of 0.32 Copper
freq = csvread('N20_0.32C_04.CSV',3,0,[3,0,802,0]);
F_C_32 = [7.5869    6.5741    5.8615    5.2363    4.7237    4.2486    3.9110].*1.0e+07;
C_32_CT = ((2.*pi.*F_C_32).^(-2))./L_C_32_A;
data_real = [C_R_N8_32_A;C_R_N10_32_A;C_R_N12_32_A;C_R_N14_32_A;C_R_N16_32_A;C_R_N18_32_A;C_R_N20_32_A];
data_imag = [C_I_N8_32_A;C_I_N10_32_A;C_I_N12_32_A;C_I_N14_32_A;C_I_N16_32_A;C_I_N18_32_A;C_I_N20_32_A];
model = ["RC_Circuit_N8C_1","RC_Circuit_N10C_1","RC_Circuit_N12C_1","RC_Circuit_N14C_1","RC_Circuit_N16C_1","RC_Circuit_N18C_1","RC_Circuit_N20C_1"];
Fc32 = [];
Fc32_2 = [];
x = [8,10,12,14,16,18,20];
Cslist = [5.87e-13,5.1e-13,4.51e-13,4.21e-13,4e-13,3.92e-13,3.78e-13];
Rlist = [6.8,4,2,2.5,2.2,1.5,0.7];
%3.8e-13,3.9e-13,4e-13,4.2e-13,4.46e-13
%Cc 3.601e-13 Cs(8-20)6.53e-12  6.58e-12  5.795e-12 5.1e-12 4.41e-12 4.4e-12 2.96e-12
%Cc 3.551e-13 Cs      6.58e-12  7.10e-12  6.15e-12  5.572e-12 4.92e-12 
%Cc 3.35e-13  Cs      7.26e-12  7.679e-12 7.38e-12  7.235e-12 7.178e-12
%Cc 3.25e-13  Cs      7.533e-12 8.219e-12 8.058e-12 8.09e-13  8.28e-12
%Cc 3.20e-13  Cs      7.68e-12  8.457e-12 8.38e-12  8.517e-12 8.832e-12 
%Cc 3.19e-13  Cs      7.709e-12 8.478e-12 8.425e-12 8.601e-12 8.942e-12
%Cc 3.18e-13  Cs      7.738e-12 8.521e-12 8.506e-12 8.627e-12 8.956e-12 
%Cc 3.15e-13  Cs      7.83e-12  8.637e-12 8.692e-12 8.869e-12 9.347e-12 1.036e-11
%Cc 2.86e-13  Cs      8.64e-12  9.95e-12  1.053e-11 1.14e-11  1.253e-11 1.43e-11 1.56e-11 
%Cc 2.6e-13   Cs      9.48e-12  1.11e-11  1.22e-11  1.35e-11  1.52e-11  1.84e-11 2.02e-11 

%Cc 3.33e-13  Cs      7.45e-12  7.9e-12   7.5e-12   7.5e-12   7.42e-12  8.2e-12 7.5e-12
% Fc32_1 'Cc', 3.33e-13 'Cs', 7.5e-12
%
for i = 1:7
    open(model(i))
    sdo.setValueInModel(model(i), 'Cc', 3.33e-13);
    sdo.setValueInModel(model(i), 'Cs', 7.5e-12);
    sdo.setValueInModel(model(i), 'L', L_C_32_A(i)/x(i));
    sdo.setValueInModel(model(i), 'R', Rlist(i));
    z_data = power_zmeter(model(i), freq'); 
    [M,I] = max(real(z_data.Z));
    Fc32_2 = [Fc32_2, freq(I)];
    % F_C_32;
    
%     figure(99)
%     plot(freq,real(z_data.Z),freq, data_real(i,:))
%     legend('simulation', 'experiment')
%     grid on
%     figure(98)
%     plot(freq, imag(z_data.Z), freq, data_imag(i,:))
%     legend('simulation', 'experiment')
%     grid on
    
end
% for i = 1:7
% %     open(model(i))
%     sdo.setValueInModel(model(i), 'Cc', 3.33e-13);
%     sdo.setValueInModel(model(i), 'Cs', 8.1e-12);
%     sdo.setValueInModel(model(i), 'L', L_C_32_A(i)/x(i));
%     sdo.setValueInModel(model(i), 'R', Rlist(i));
%     z_data = power_zmeter(model(i), freq'); 
%     [M,I] = max(real(z_data.Z));
%     Fc32 = [Fc32, freq(I)];
%     F_C_32;
% end

CT32_2 = ((2.*pi.*Fc32_2).^(-2))./L_C_32_A;
%CT32 = ((2.*pi.*Fc32).^(-2))./L_C_32_A;
figure(97)
plot(x,CT32_2.*1e12,x,C_32_CT.*1e12)
legend('simulation','experiment','fontweight','bold')
grid on
xlabel('Turns','fontweight','bold','Fontsize',15)
ylabel('Capacitance (pF)','fontweight','bold','Fontsize',15)
%% Study of 0.5 Copper
freq = csvread('N20_0.5C_04.CSV',3,0,[3,0,802,0]);
data_real = [C_R_N8_50_A;C_R_N10_50_A;C_R_N12_50_A;C_R_N14_50_A;C_R_N16_50_A;C_R_N18_50_A;C_R_N20_50_A];
data_imag = [C_I_N8_50_A;C_I_N10_50_A;C_I_N12_50_A;C_I_N14_50_A;C_I_N16_50_A;C_I_N18_50_A;C_I_N20_50_A];
model = ["RC_Circuit_N8C_1","RC_Circuit_N10C_1","RC_Circuit_N12C_1","RC_Circuit_N14C_1","RC_Circuit_N16C_1","RC_Circuit_N18C_1","RC_Circuit_N20C_1"];
Fc50 = [];
Fc50_2 = [];
F_C_50 = [7.6369    6.5616    5.8240    5.2363    4.7362    4.3111    4.0360].*1.0e+07;
C_50_CT = ((2.*pi.*F_C_50).^(-2))./L_C_50_A;
x = [8,10,12,14,16,18,20];
% Cslist = [5.75e-13,5.15e-13,4.64e-13,4.25e-13,4.02e-13,3.86e-13,3.6e-13];
Rlist = [9,3,2,2,1.8,1.2,1];
%Cc xxxx    Cs N8-N20
%Cc 3e-13    Cs 7.912e-12 9.78e-12  1.044e-11 1.075e-11  1.142e-11 1.193e-11 1.078e-11
%Cc 3.2e-13  Cs 7.34e-12  8.87e-12  9.158e-12
%Cc 3.3e-13  Cs 7.04e-12  8.468e-12 8.54e-12 
%Cc 3.35e-13 Cs 6.89e-12  8.203e-12 8.204e-12 7.73e-12  
%Cc 3.4e-13  Cs 6.742e-12 7.985e-12 7.915e-12 7.315e-12 
%Cc 3.5e-13  Cs 6.45e-12  7.53e-12  7.268e-12 6.45e-12  5.902e-12
% for i = 1:7
%     open(model(i))
%     sdo.setValueInModel(model(i), 'Cc', 3.3e-13);
%     sdo.setValueInModel(model(i), 'Cs', 8.09e-12);
%     sdo.setValueInModel(model(i), 'L', L_C_50_A(i)/x(i));
%     sdo.setValueInModel(model(i), 'R', Rlist(i));
%     z_data = power_zmeter(model(i), freq'); 
%     [M,I] = max(real(z_data.Z));
%     Fc50_2 = [Fc50_2, freq(I)];
    %F_C_50;
    
%     figure(99)
%     plot(freq,real(z_data.Z),freq, data_real(i,:))
%     legend('simulation', 'experiment')
%     grid on
%     figure(98)
%     plot(freq, imag(z_data.Z), freq, data_imag(i,:))
%     legend('simulation', 'experiment')
%     grid on
    
%end 

for i = 1:7
    open(model(i))
    sdo.setValueInModel(model(i), 'Cc', 3.28e-13);
    sdo.setValueInModel(model(i), 'Cs', 8.31e-12);
    sdo.setValueInModel(model(i), 'L', L_C_50_A(i)/x(i));
    sdo.setValueInModel(model(i), 'R', Rlist(i));
    z_data = power_zmeter(model(i), freq'); 
    [M,I] = max(real(z_data.Z));
    Fc50 = [Fc50, freq(I)];
    %F_C_50;

%     figure(99)
%     plot(freq,real(z_data.Z),freq, data_real(i,:))
%     legend('simulation', 'experiment')
%     grid on
%     figure(98)
%     plot(freq, imag(z_data.Z), freq, data_imag(i,:))
%     legend('simulation', 'experiment')
%     grid on
    
end 
%%
CT50 = ((2.*pi.*Fc50).^(-2))./L_C_50_A;
% CT50_2 = ((2.*pi.*Fc50_2).^(-2))./L_C_50_A;
figure(97)
plot(x,CT50.*1e12,'*--',x,C_50_CT.*1e12,'s-','LineWidth',1.5)
legend('simulation','experiment','fontweight','bold')
grid on
xlabel('Turns, n','fontweight','bold','Fontsize',15)
ylabel('Capacitance (pF)','fontweight','bold','Fontsize',15)
%% Knitted 0.48
freq = csvread('N20_0.48K_01.CSV',3,0,[3,0,802,0]);
data_real = [K_R_N8_48_A;K_R_N10_48_A;K_R_N12_48_A;K_R_N14_48_A;K_R_N16_48_A;K_R_N18_48_A;K_R_N20_48_A];
data_imag = [K_I_N8_48_A;K_I_N10_48_A;K_I_N12_48_A;K_I_N14_48_A;K_I_N16_48_A;K_I_N18_48_A;K_I_N20_48_A];
model = ["RC_Circuit_N8_1","RC_Circuit_N10_1","RC_Circuit_N12_1","RC_Circuit_N14_1","RC_Circuit_N16_1","RC_Circuit_N18_1","RC_Circuit_N20_1"];
Fk48 = [];
F_K_48 = [7.5994    6.5616    5.8240    5.1988    4.68617    4.2611    3.8860].*1.0e+07;
K_48_CT = 1./(4.*(pi.*F_K_48).^2 .*L_K_48_A);
x = [8,10,12,14,16,18,20];
Cslist = [5.75e-13,5.15e-13,4.64e-13,4.25e-13,4.02e-13,3.86e-13,3.6e-13];
Cplist = [0.6e-14,0.1e-14,0.1e-14,0.6e-14,0.8e-14,0.9e-14,2.8e-14];
Rlist = [8.5,5,4,3,4,3,2.5];
for i = 1:7
    open(model(i))
    sdo.setValueInModel(model(i), 'Cc', 3.29e-13);
    sdo.setValueInModel(model(i), 'Cp', 1.2e-14);
    sdo.setValueInModel(model(i), 'Cs', 8.23e-12);
    sdo.setValueInModel(model(i), 'L', L_K_48_A(i)/x(i));
    sdo.setValueInModel(model(i), 'R', Rlist(i));
    z_data = power_zmeter(model(i), freq'); 
    [M,I] = max(real(z_data.Z));
    Fk48 = [Fk48, freq(I)]
    %F_K_48

    
    figure(99)
    plot(freq,real(z_data.Z),freq, data_real(i,:))
    legend('simulation', 'experiment')
    grid on
    figure(98)
    plot(freq, imag(z_data.Z), freq, data_imag(i,:))
    legend('simulation', 'experiment')
    grid on
    
end
%%
CT48 = ((2.*pi.*Fk48).^(-2))./L_K_48_A;
figure(97)
plot(x,CT48.*1e12,'*--',x,K_48_CT.*1e12,'s-','LineWidth',1.5)
legend('simulation', 'experiment','fontweight','bold')
xlabel('Turns, n','fontweight','bold','Fontsize',15)   
ylabel('Capacitance (pF)','fontweight','bold','Fontsize',15)
grid on
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
%% 
% grid on

Cslist50 = [5.75e-13,5.15e-13,4.64e-13,4.25e-13,4.02e-13,3.86e-13,3.6e-13];
Cplist48 = [0.6e-14,0.1e-14,0.1e-14,0.6e-14,0.8e-14,0.9e-14,2.8e-14];
Cslist32 = [5.87e-13,5.1e-13,4.51e-13,4.21e-13,4e-13,3.92e-13,3.78e-13];
Cplist31 = [1.7e-14,2.4e-14,2.56e-14,2.2e-14, 3.4e-14, 1.7e-14,1.5e-14];
figure(3)
plot(x,Cslist50,x,Cslist32)
title('Turn to turn/core Capacitance for Copper')
legend('0.5mm','0.32mm')

figure(4)
plot(x,Cplist48,x,Cplist31)
title('Cp for each turn')
legend('0.43mm','0.31mm')

    