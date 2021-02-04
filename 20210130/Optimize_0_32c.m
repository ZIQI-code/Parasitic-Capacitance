%% Study of 0.32 Copper
freq = csvread('N20_0.32C_04.CSV', 3, 0, [3, 0, 802, 0]);
model = ["RC_Circuit_N8C_1", "RC_Circuit_N10C_1", "RC_Circuit_N12C_1", "RC_Circuit_N14C_1", "RC_Circuit_N16C_1", "RC_Circuit_N18C_1", "RC_Circuit_N20C_1"];
x = [8, 10, 12, 14, 16, 18, 20];
Rlist = [6.8, 4, 2, 2.5, 2.2, 1.5, 0.7];

F_C_32_exp = [7.5869, 6.5741, 5.8615, 5.2363, 4.7237, 4.2486, 3.9110] .* 1.0e+07;
C_32_CT_exp = ((2 .* pi .* F_C_32_exp) .^ (-2)) ./ L_C_32_A;

% for i = 1:7
%     open(model(i));
% end

p = sdo.getParameterFromModel(model(1), {'Cc', 'Cs'});

% optimization 1
% p(1).Value = 5.0005e-12;
% p(2).Value = 5.0005e-12;
% optimization 2
% p(1).Value = 3.3898e-13;
% p(2).Value = 7.1870e-12;
% optimization 3
% p(1).Value = 3.3315e-13;
% p(2).Value = 7.5857e-12;

opts = sdo.OptimizeOptions('Method', 'fminsearch');
fcn = @(c) Optimize_Objective_C(c, model, L_C_32_A, x, Rlist, freq, C_32_CT_exp);
[pOpt, opt_info] = sdo.optimize(fcn, p, opts);

Cc_result = pOpt(1).Value
Cs_result = pOpt(2).Value
F_C_32_result = [0, 0, 0, 0, 0, 0, 0];
for i = 1:7
    sdo.setValueInModel(model(i), 'Cc', Cc_result);
    sdo.setValueInModel(model(i), 'Cs', Cs_result);
    sdo.setValueInModel(model(i), 'L', L_C_32_A(i) / x(i));
    sdo.setValueInModel(model(i), 'R', Rlist(i));
    z_data = power_zmeter(model(i), freq'); 
    [~,I] = max(real(z_data.Z));
    F_C_32_result(i) = freq(I);
end
C_32_CT_result = ((2 .* pi .* F_C_32_result) .^ (-2)) ./ L_C_32_A;

distance = 0;
for i = 1:7
    distance = distance + abs(C_32_CT_result(i) - C_32_CT_exp(i)) ^ 2;
end
distance = sqrt(distance)

figure(1)
plot(x, C_32_CT_result, 'o--', x, C_32_CT_exp, 'o-')
legend('simulation','experiment')
grid on
title('Total Capacitance at Resonant Frequency, 0.32mm Copper Wire')
xlabel('Turns, n')
ylabel('Capacitance (F)')
