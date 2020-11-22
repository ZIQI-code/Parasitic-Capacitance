clear

data_real = csvread('L_N10_LE_00_C.CSV',3,1,[3,1,201,1]);
data_imag = csvread('L_N10_LE_00_C.CSV',3,2,[3,2,201,2]);
freq = csvread('L_N10_LE_00_C.CSV', 3, 0, [3, 0, 201, 0]);

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
p(1).Value = 100;
p(1).Minimum = 0;
p(1).Maximum = 190;
p(2).Value = 4.27e-12;
p(2).Minimum = 0;
p(2).Maximum = 6e-12;

opt_result = sdo.optimize(fcn, p)

sdo.setValueInModel('RC_Circuit_2', 'R1', opt_result(1).Value);
sdo.setValueInModel('RC_Circuit_2', 'C1', opt_result(2).Value);
z_data = power_zmeter('RC_Circuit_2', freq');
figure(9)
plot(freq, imag(z_data.Z), freq, data_imag)
legend('simulation', 'experiment')
figure(10)
plot(freq, real(z_data.Z), freq, data_real)
legend('simulation', 'experiment')

