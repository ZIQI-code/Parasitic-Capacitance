%% Model
model = ["RC_Circuit_N8C_1", "RC_Circuit_N10C_1", "RC_Circuit_N12C_1", "RC_Circuit_N14C_1", "RC_Circuit_N16C_1", "RC_Circuit_N18C_1", "RC_Circuit_N20C_1"];
x = [8, 10, 12, 14, 16, 18, 20];

% for i = 1:7
%     open(model(i));
% end

%% 0.32c
freq_0_32C = csvread('N20_0.32C_04.CSV', 3, 0, [3, 0, 802, 0]);
Rlist_0_32C = [6.8, 4, 2, 2.5, 2.2, 1.5, 0.7];

F_C_32_exp = [7.5869, 6.5741, 5.8615, 5.2363, 4.7237, 4.2486, 3.9110] .* 1.0e+07;
C_32_CT_exp = ((2 .* pi .* F_C_32_exp) .^ (-2)) ./ L_C_32_A;

Cc_0_32C = 3.3315e-13
Cs_0_32C = 7.5857e-12
F_C_32_result = [0, 0, 0, 0, 0, 0, 0];
for i = 1:7
    sdo.setValueInModel(model(i), 'Cc', Cc_0_32C);
    sdo.setValueInModel(model(i), 'Cs', Cs_0_32C);
    sdo.setValueInModel(model(i), 'L', L_C_32_A(i) / x(i));
    sdo.setValueInModel(model(i), 'R', Rlist_0_32C(i));
    z_data = power_zmeter(model(i), freq_0_32C'); 
    [~,I] = max(real(z_data.Z));
    F_C_32_result(i) = freq_0_32C(I);
end
C_32_CT_result = ((2 .* pi .* F_C_32_result) .^ (-2)) ./ L_C_32_A;

distance_0_32C = 0;
for i = 1:7
    distance_0_32C = distance_0_32C + abs(C_32_CT_result(i) - C_32_CT_exp(i)) ^ 2;
end
distance_0_32C = sqrt(distance_0_32C)

figure(1)
plot(x, C_32_CT_result, 'o--', x, C_32_CT_exp, 'o-')
legend('simulation','experiment')
grid on
title('Total Capacitance at Resonant Frequency, 0.32mm Copper Wire')
xlabel('Turns, n')
ylabel('Capacitance (F)')
savefig('0_32c.fig')

%% 0.5c
freq_0_50C = csvread('N20_0.5C_04.CSV', 3, 0, [3, 0, 802, 0]);
Rlist_0_50C = [9, 3, 2, 2, 1.8, 1.2, 1];

F_C_50_exp = [7.6369, 6.5616, 5.8240, 5.2363, 4.7362, 4.3111, 4.0360] .* 1.0e+07;
C_50_CT_exp = ((2 .* pi .* F_C_50_exp) .^ (-2)) ./ L_C_50_A;

% 5 points
Cc_0_50C = 3.2561e-13
Cs_0_50C = 8.5515e-12
% 7 points
% Cc_0_50C = 3.2608e-13
% Cs_0_50C = 7.9279e-12

F_C_50_result = [0, 0, 0, 0, 0, 0, 0];
for i = 1:7
    sdo.setValueInModel(model(i), 'Cc', Cc_0_50C);
    sdo.setValueInModel(model(i), 'Cs', Cs_0_50C);
    sdo.setValueInModel(model(i), 'L', L_C_50_A(i) / x(i));
    sdo.setValueInModel(model(i), 'R', Rlist_0_50C(i));
    z_data = power_zmeter(model(i), freq_0_50C'); 
    [~,I] = max(real(z_data.Z));
    F_C_50_result(i) = freq_0_50C(I);
end
C_50_CT_result = ((2 .* pi .* F_C_50_result) .^ (-2)) ./ L_C_50_A;

distance_0_50_C = 0;
for i = 1:7
    distance_0_50_C = distance_0_50_C + abs(C_50_CT_result(i) - C_50_CT_exp(i)) ^ 2;
end
distance_0_50_C = sqrt(distance_0_50_C)

figure(2)
plot(x, C_50_CT_result, 'o--', x, C_50_CT_exp, 'o-')
legend('simulation','experiment')
grid on
title('Total Capacitance at Resonant Frequency, 0.50mm Copper Wire')
xlabel('Turns, n')
ylabel('Capacitance (F)')
savefig('0_50c.fig')
