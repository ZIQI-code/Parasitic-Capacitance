%% study 0.31 Knitted
freq = csvread('N20_0.31K_10.CSV',3,0,[3,0,802,0]);
model = ["RC_Circuit_N8_1","RC_Circuit_N10_1","RC_Circuit_N12_1","RC_Circuit_N14_1","RC_Circuit_N16_1","RC_Circuit_N18_1","RC_Circuit_N20_1"];
Fk31 = [0, 0, 0, 0, 0, 0, 0];
x = [8,10,12,14,16,18,20];
data_real = [K_R_N8_31_new_A;K_R_N10_31_new_A;K_R_N12_31_new_A;K_R_N14_31_new_A;K_R_N16_31_new_A;K_R_N18_31_new_A;K_R_N20_31_new_A];
data_imag = [K_I_N8_31_new_A;K_I_N10_31_new_A;K_I_N12_31_new_A;K_I_N14_31_new_A;K_I_N16_31_new_A;K_I_N18_31_new_A;K_I_N20_31_new_A];

F_K_31_A = [7.4869    6.4241    5.7051    5.1051    4.5298    4.1610    3.8384].*1.0e+07;
C_31_exp = ((2 .* pi .* F_K_31_A) .^ (-2)) ./ L_C_32_A;
Rlist = [7,6.2,4.5,5.5,4.5,4,4,4];
% Cslist = [5.87e-13,5.1e-13,4.51e-13,4.21e-13,4e-13,3.92e-13,3.78e-13];
% Cplist = [1.7e-14,2.4e-14,2.56e-14,2.2e-14, 2.5e-14, 1.7e-14,2e-14];

for i = 1:7
    open(model(i))
    sdo.setValueInModel(model(i), 'Cp', 3.3e-13);
    sdo.setValueInModel(model(i), 'Cc', 3.33e-13);
    sdo.setValueInModel(model(i), 'Cs', 8.1e-12);
    sdo.setValueInModel(model(i), 'L', L_C_32_A(i)/x(i));
    sdo.setValueInModel(model(i), 'R', Rlist(i));
    z_data = power_zmeter(model(i), freq'); 
    [M,I] = max(real(z_data.Z));
    Fk31(i) = freq(I);
%     F_K_31_A 
%     figure(99)
%     plot(freq,real(z_data.Z),freq, data_real(i,:))
%     legend('simulation', 'experiment')
%     grid on
%     figure(98)
%     plot(freq, imag(z_data.Z), freq, data_imag(i,:))
%     legend('simulation', 'experiment')
%     grid on
end
C_31_sim = ((2.*pi.*Fk31).^(-2))./L_K_31_A

plot(x,C_31_sim,x,C_31_exp)
legend('simulation','experiment')
grid on
title('Total Capacitance at Resonant Frequency')
xlabel('Turn')
ylabel('Capacitance')
