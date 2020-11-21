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

L_N10_LE_F = csvread('L_N10_LE_00.CSV',3,0,[3,0,201,0]);
freq = L_N10_LE_F;
freq = freq';
Zdata1 = power_zmeter('RC_Circuit_2',freq);
Zdata1.Z;
Zdata1.Freq;
figure(1)
plot(freq,real(Zdata1.Z))
figure(2)
plot(freq,imag(Zdata1.Z))