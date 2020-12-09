%% read data
clear 

K_F_N18_00 = csvread('S_N18_SE_00_HF.CSV',3,0,[3,0,201,0]);
K_R_N18_00 = csvread('S_N18_SE_00_HF.CSV',3,1,[3,1,201,1]);
K_I_N18_00 = csvread('S_N18_SE_00_HF.CSV',3,2,[3,2,201,2]);
K_R_N18_01 = csvread('S_N18_SE_01_HF.CSV',3,1,[3,1,201,1]);
K_I_N18_01 = csvread('S_N18_SE_01_HF.CSV',3,2,[3,2,201,2]);
K_R_N18_02 = csvread('S_N18_SE_02_HF.CSV',3,1,[3,1,201,1]);
K_I_N18_02 = csvread('S_N18_SE_02_HF.CSV',3,2,[3,2,201,2]);

C_F_N18_00 = csvread('S_N18_SE_00_C_HF.CSV',3,0,[3,0,600,0]);
C_R_N18_00 = csvread('S_N18_SE_00_C_HF.CSV',3,1,[3,1,600,1]);
C_I_N18_00 = csvread('S_N18_SE_00_C_HF.CSV',3,2,[3,2,600,2]);
C_R_N18_01 = csvread('S_N18_SE_01_C_HF.CSV',3,1,[3,1,600,1]);
C_I_N18_01 = csvread('S_N18_SE_01_C_HF.CSV',3,2,[3,2,600,2]);
C_R_N18_02 = csvread('S_N18_SE_02_C_HF.CSV',3,1,[3,1,600,1]);
C_I_N18_02 = csvread('S_N18_SE_02_C_HF.CSV',3,2,[3,2,600,2]);

K_R_N18 = zeros(199,1);
K_I_N18 = zeros(199,1);
C_R_N18 = zeros(598,1);
C_I_N18 = zeros(598,1);
for i = 1:598
    C_R_N18(i) = (C_R_N18_00(i)+C_R_N18_01(i)+C_R_N18_02(i))/3;
    C_I_N18(i) = (C_I_N18_00(i)+C_I_N18_01(i)+C_I_N18_02(i))/3;
end
for i = 1:199
    K_R_N18(i) = (K_R_N18_00(i)+K_R_N18_01(i)+K_R_N18_02(i))/3;
    K_I_N18(i) = (K_I_N18_00(i)+K_I_N18_01(i)+K_I_N18_02(i))/3;
end 

data_real = K_R_N18;
data_imag = K_I_N18;
freq = K_F_N18_00;

% data_real = C_R_N18;
% data_imag = C_I_N18;
% freq = C_F_N18_00;
%% 



fcn = @(c) Zmeasure_Objective_N18_3(c, freq, data_real, data_imag);

p = sdo.getParameterFromModel('RC_Circuit_N18_3', {'Cp','Cs'})

p(1).Value = 1e-14;
p(1).Minimum = 0;
p(1).Maximum = 1e-3;
p(2).Value = 1e-14;
p(2).Minimum = 0;
p(2).Maximum = 1e-3;
% p(3).Value = 1e-14;
% p(3).Minimum = 0;
% p(3).Value = 10;
% p(3).Minimum = 0;
% p(3).Maximum = 200;

opt_result = sdo.optimize(fcn, p)

sdo.setValueInModel('RC_Circuit_N18_3', 'Cp', opt_result(1).Value);
sdo.setValueInModel('RC_Circuit_N18_3', 'Cs', opt_result(2).Value);
% sdo.setValueInModel('RC_Circuit_3', 'R', opt_result(3).Value);
%% 


z_data = power_zmeter('RC_Circuit_N18_3', freq');
figure(9)
plot(freq, imag(z_data.Z), freq, data_imag)
legend('simulation', 'experiment')
figure(10)
plot(freq, real(z_data.Z), freq, data_real)
legend('simulation', 'experiment')
%% study the sweep of Cp
figure(11)
for i=-14:-7
    sdo.setValueInModel('RC_Circuit_N18_3', 'Cp', 3.7334*10^(i));
    z_data = power_zmeter('RC_Circuit_N18_3', freq');
    plot(freq, imag(z_data.Z))
    hold on
end
plot(freq, data_imag,'--')
grid on
legend('3.7334e-14','e-13','e-12','e-11','e-10','e-9','e-8','e-7','experiment')
axis([0,15e7,-0.3e5,0.3e5])
hold off

figure(12)
for i=-14:-7
    sdo.setValueInModel('RC_Circuit_N18_3', 'Cp', 3.7334*10^(i));
    z_data = power_zmeter('RC_Circuit_N18_3', freq');
    plot(freq, real(z_data.Z))
    hold on
end
plot(freq, data_real,'--')
grid on
legend('3.7334e-14','e-13','e-12','e-11','e-10','e-9','e-8','e-7','experiment')
axis([0,15e7,0,0.3e5])
hold off
%% With Cp and without Cp

z_data = power_zmeter('RC_Circuit_N18_5', freq');
z_data1 = power_zmeter('RC_Circuit_N18_3', freq');
figure(12)
plot(freq, imag(z_data.Z), freq, imag(z_data1.Z))
hold on
plot(freq, K_I_N18, C_F_N18_00, C_I_N18)
legend('knitted_5', 'knitted_3','experimental k', 'experimental c')
hold off

figure(13)
plot(freq, real(z_data.Z), freq, real(z_data1.Z))
hold on
plot(freq, K_R_N18, C_F_N18_00, C_R_N18)
legend('knitted_5', 'knitted_3','experimental k', 'experimental c')
hold off
