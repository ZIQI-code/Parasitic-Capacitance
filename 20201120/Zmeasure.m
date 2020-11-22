clear

% % Analyze electric circuit.
% % Obtain the matrices (A,B,C,D) of the state-space model of the circuit.
% [A, B, C, D] = power_analyze('RC_Circuit_2');
% 
% % Generate logarithmically spaced vector of frequency values.
% % 500 points between decades 10^1 and 10^4.
% L_N10_LE_F = csvread('L_N10_LE_00.CSV',3,0,[3,0,201,0]);
% freq = L_N10_LE_F;
% 
% % Vector of angular frequency values.
% w = 2*pi*freq;
% 
% % Magnitude and phase of frequency response.
% % Ymag: Admittance magnitude.
% % Yphase: Admittance phase.
% [Ymag, Yphase] = bode(A, B, C, D, 1, w);
% [G,B] = pol2cart(Yphase,Ymag);
% 
% Z = 1./(G+j.*B);
% R = real(Z);
% X = imag(Z);
% 
% % Plot Admittance magnitude.
% subplot(2, 1, 1);
% plot(freq, R);
% grid on;
% title('RLC Circuit');
% xlabel('Frequency [Hz]');
% ylabel('Ohms');
% 
% % Plot Admittance phase.
% subplot(2, 1, 2);
% plot(freq, X);
% xlabel('Frequency [Hz]');
% ylabel('jX');
% grid on;

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

