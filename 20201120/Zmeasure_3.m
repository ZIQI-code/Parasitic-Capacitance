%% read data
clear 
K_F_N10_00 = csvread('L_N10_LE_00_HF.CSV',3,0,[3,0,201,0]);
K_R_N10_00 = csvread('L_N10_LE_00_HF.CSV',3,1,[3,1,201,1]);
K_I_N10_00 = csvread('L_N10_LE_00_HF.CSV',3,2,[3,2,201,2]);

C_F_N10_00 = csvread('L_N10_LE_00_C_HF.CSV',3,0,[3,0,201,0]);
C_R_N10_00 = csvread('L_N10_LE_00_C_HF.CSV',3,1,[3,1,201,1]);
C_I_N10_00 = csvread('L_N10_LE_00_C_HF.CSV',3,2,[3,2,201,2]);

data_real = K_R_N18;
data_imag = K_I_N18;
freq = K_F_N18_00;
%% 



fcn = @(c) Zmeasure_Objective_3(c, freq, data_real, data_imag);

p = sdo.getParameterFromModel('RC_Circuit_3', {'Cp'});

% p(1).Value = 1e-15;
% p(1).Minimum = 0;
% p(1).Maximum = 1e-3;
p(1).Value = 1e-15;
p(1).Minimum = 0;
p(1).Maximum = 1e-3;
% p(3).Value = 1e-14;
% p(3).Minimum = 0;
% p(3).Value = 10;
% p(3).Minimum = 0;
% p(3).Maximum = 200;

opt_result = sdo.optimize(fcn, p)

% sdo.setValueInModel('RC_Circuit_3', 'Cs', opt_result(1).Value);
sdo.setValueInModel('RC_Circuit_3', 'Cp', opt_result(1).Value);
% sdo.setValueInModel('RC_Circuit_3', 'R', opt_result(3).Value);
%% 


% data_real = csvread('L_N10_LE_00_HF.CSV',3,1,[3,1,201,1]);
% data_imag = csvread('L_N10_LE_00_HF.CSV',3,2,[3,2,201,2]);
% freq = csvread('L_N10_LE_00_HF.CSV', 3, 0, [3, 0, 201, 0]);
z_data = power_zmeter('RC_Circuit_3', freq');
figure(9)
plot(freq, imag(z_data.Z), freq, data_imag)
legend('simulation', 'experiment')
figure(10)
plot(freq, real(z_data.Z), freq, data_real)
legend('simulation', 'experiment')
