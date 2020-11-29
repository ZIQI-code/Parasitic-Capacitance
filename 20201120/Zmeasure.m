clear
%% copper

data_real = C_R_N18;
data_imag = C_I_N18;
freq = C_F_N18_00;

% z_data = power_zmeter('RC_Circuit_2', freq');
% figure(1)
% plot(freq, real(z_data.Z), 'bo', freq, data_real, 'ro')
% figure(2)
% plot(freq, imag(z_data.Z), 'bo', freq, data_imag, 'ro')

% for i=1e-12:1e-12:9e-12
%     sdo.setValueInModel('RC_Circuit_2', 'C1', i);
%     sdo.getParameterFromModel('RC_Circuit_2', 'C1')
%     
%     z_data = power_zmeter('RC_Circuit_2', freq');
%    
%     figure(9)
%     plot(freq, imag(z_data.Z))
%     hold on
% end

fcn = @(c) Zmeasure_Objective(c, freq, data_real, data_imag);

p = sdo.getParameterFromModel('RC_Circuit_2', {'R1', 'C1'});
% p = sdo.getParameterFromModel('RC_Circuit_2', {'C1'});
p(1).Value = 10;
p(1).Minimum = 0;
p(1).Maximum = 200;
p(2).Value = 4e-12;
p(2).Minimum = 0;
p(2).Maximum = 9e-12;
% p(3).Value = 4.33e-6;
% p(3).Minimum = 0;
% p(1).Value = 4e-12;
% p(1).Minimum = 0;
% p(1).Maximum = 6e-12;
opt_result = sdo.optimize(fcn, p)

sdo.setValueInModel('RC_Circuit_2', 'R1', opt_result(1).Value);
sdo.setValueInModel('RC_Circuit_2', 'C1', opt_result(2).Value);
% sdo.setValueInModel('RC_Circuit_2', 'L1', opt_result(3).Value);
% sdo.setValueInModel('RC_Circuit_2', 'C1', opt_result(1).Value);

z_data = power_zmeter('RC_Circuit_2', freq');
figure(9)
plot(freq, imag(z_data.Z), freq, data_imag)
legend('simulation', 'experiment')
figure(10)
plot(freq, real(z_data.Z), freq, data_real)
legend('simulation', 'experiment')

%% L_N10_LE_00.CSV
clear

data_real = csvread('L_N10_LE_00.CSV',3,1,[3,1,201,1]);
data_imag = csvread('L_N10_LE_00.CSV',3,2,[3,2,201,2]);
freq = csvread('L_N10_LE_00.CSV', 3, 0, [3, 0, 201, 0]);

fcn = @(c) Zmeasure_Objective(c, freq, data_real, data_imag);
p = sdo.getParameterFromModel('RC_Circuit_2', {'C1','R1'});

p(1).Value = 1e-12;
p(1).Minimum = 0;
p(1).Maximum = 1e-12;
p(2).Value = 10;
p(2).Maximum = 200;
opt_result = sdo.optimize(fcn, p)

sdo.setValueInModel('RC_Circuit_2', 'C1', opt_result(1).Value);
sdo.setValueInModel('RC_Circuit_2', 'R1', opt_result(2).Value);

z_data = power_zmeter('RC_Circuit_2', freq');
figure(9)

plot(freq, imag(z_data.Z), freq, data_imag)
legend('simulation', 'experiment')
figure(10)
plot(freq, real(z_data.Z), freq, data_real)
legend('simulation', 'experiment')