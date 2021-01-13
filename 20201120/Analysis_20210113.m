%% Study of 0.32 Copper
freq = csvread('N20_0.32C_04.CSV', 3, 0, [3, 0, 802, 0]);
F_C_32_exp = [7.5869, 6.5741, 5.8615, 5.2363, 4.7237, 4.2486, 3.9110] .* 1.0e+07;
C_32_CT_exp = ((2 .* pi .* F_C_32_exp) .^ (-2)) ./ L_C_32_A;
% data_real = [C_R_N8_32_A;C_R_N10_32_A;C_R_N12_32_A;C_R_N14_32_A;C_R_N16_32_A;C_R_N18_32_A;C_R_N20_32_A];
% data_imag = [C_I_N8_32_A;C_I_N10_32_A;C_I_N12_32_A;C_I_N14_32_A;C_I_N16_32_A;C_I_N18_32_A;C_I_N20_32_A];
model = ["RC_Circuit_N8C_1", "RC_Circuit_N10C_1", "RC_Circuit_N12C_1", "RC_Circuit_N14C_1", "RC_Circuit_N16C_1", "RC_Circuit_N18C_1", "RC_Circuit_N20C_1"];
% Fc32_1 = [];
% Fc32_2 = [];
x = [8, 10, 12, 14, 16, 18, 20];
Cslist = [5.87e-13, 5.1e-13, 4.51e-13, 4.21e-13, 4e-13, 3.92e-13, 3.78e-13];
Rlist = [6.8, 4, 2, 2.5, 2.2, 1.5, 0.7];

% Cc_result = 0;
% Cs_result = 0;
% min_error = Inf;
% for Cc = 1e-13:1e-13:1e-11
%     for Cs = 1e-13:1e-13:1e-11
%         F_C_32_sim = [0, 0, 0, 0, 0, 0, 0];
%         for i = 1:7
%             sdo.setValueInModel(model(i), 'Cc', Cc);
%             sdo.setValueInModel(model(i), 'Cs', Cs);
%             sdo.setValueInModel(model(i), 'L', L_C_32_A(i) / x(i));
%             sdo.setValueInModel(model(i), 'R', Rlist(i));
%             z_data = power_zmeter(model(i), freq'); 
%             [~,I] = max(real(z_data.Z));
%             F_C_32_sim(i) = freq(I);
%         end
%         C_32_CT_sim = ((2 .* pi .* F_C_32_sim) .^ (-2)) ./ L_C_32_A;
% 
%         error = 0;
%         for i = 1:7
%             error = error + abs(C_32_CT_sim(i) - C_32_CT_exp(i)) ^ 2;
%         end
%         
%         if error < min_error
%             Cc_result = Cc;
%             Cs_result = Cs;
%         end
%     end
% end

p = sdo.getParameterFromModel(model(1), {'Cc', 'Cs'});
p(1).Value = 5e-12;
p(1).Minimum = 1e-13;
p(1).Maximum = 1e-11;
p(2).Value = 5e-12;
p(2).Minimum = 1e-13;
p(2).Maximum = 1e-11;

fcn = @(c) Zmeasure_Objective_20210113(c, model, L_C_32_A, x, Rlist, freq, C_32_CT_exp);
opt_result = sdo.optimize(fcn, p);

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
% Fc32_2        3.25e-13      8.1e-12
% for i = 1:7
% %     open(model(i))
%     sdo.setValueInModel(model(i), 'Cc', 3.33e-13);
%     sdo.setValueInModel(model(i), 'Cs', 8.1e-12);
%     sdo.setValueInModel(model(i), 'L', L_C_32_A(i)/x(i));
%     sdo.setValueInModel(model(i), 'R', Rlist(i));
%     z_data = power_zmeter(model(i), freq'); 
%     [M,I] = max(real(z_data.Z));
%     Fc32_2 = [Fc32_2, freq(I)]
%     F_C_32
    
%     figure(99)
%     plot(freq,real(z_data.Z),freq, data_real(i,:))
%     legend('simulation', 'experiment')
%     grid on
%     figure(98)
%     plot(freq, imag(z_data.Z), freq, data_imag(i,:))
%     legend('simulation', 'experiment')
%     grid on
    
% end

Cc_result = opt_result(1).Value;
Cs_result = opt_result(2).Value;
F_C_32_result = [0, 0, 0, 0, 0, 0, 0];
for i = 1:7
%     open(model(i))
    sdo.setValueInModel(model(i), 'Cc', Cc_result);
    sdo.setValueInModel(model(i), 'Cs', Cs_result);
    sdo.setValueInModel(model(i), 'L', L_C_32_A(i) / x(i));
    sdo.setValueInModel(model(i), 'R', Rlist(i));
    z_data = power_zmeter(model(i), freq'); 
    [~,I] = max(real(z_data.Z));
    F_C_32_result(i) = freq(I);
end
C_32_CT_result = ((2 .* pi .* F_C_32_result) .^ (-2)) ./ L_C_32_A;

figure(97)
plot(x,C_32_CT_result,x,C_32_CT_exp)
legend('simulation','experiment')
grid on
title('Total Capacitance at Resonant Frequency')
xlabel('Turn')
ylabel('Capacitance')
