%% Study of 0.5 Copper
freq = csvread('N20_0.5C_04.CSV', 3, 0, [3, 0, 802, 0]);
model = ["RC_Circuit_N8C_1", "RC_Circuit_N10C_1", "RC_Circuit_N12C_1", "RC_Circuit_N14C_1", "RC_Circuit_N16C_1", "RC_Circuit_N18C_1", "RC_Circuit_N20C_1"];
x = [8, 10, 12, 14, 16, 18, 20];
Rlist = [9, 3, 2, 2, 1.8, 1.2, 1];

F_C_50_exp = [7.6369, 6.5616, 5.8240, 5.2363, 4.7362, 4.3111, 4.0360] .* 1.0e+07;
C_50_CT_exp = ((2 .* pi .* F_C_50_exp) .^ (-2)) ./ L_C_50_A;

% for i = 1:7
%     open(model(i));
% end

p = sdo.getParameterFromModel(model(1), {'Cc', 'Cs'});

% optimization 1
% p(1).Value = 5.0005e-12;
% p(2).Value = 5.0005e-12;
% optimization 2
% p(1).Value = 3.4065e-13;
% p(2).Value = 7.1236e-12;
% optimization 3
% p(1).Value = 3.2422e-13;
% p(2).Value = 8.6478e-12;
% optimization 4
% p(1).Value = 3.2561e-13;
% p(2).Value = 8.5515e-12;

% optimization 1
% p(1).Value = 5.0005e-12;
% p(2).Value = 5.0005e-12;
% optimization 2
% p(1).Value = 3.3516e-13;
% p(2).Value = 7.1353e-12;
% optimization 3
% p(1).Value = 3.2783e-13;
% p(2).Value = 7.9715e-12;
% optimization 4
% p(1).Value = 3.2540e-13;
% p(2).Value = 7.9980e-12;
% optimization 5
% p(1).Value = 3.2608e-13;
% p(2).Value = 7.9279e-12;

opts = sdo.OptimizeOptions('Method', 'fminsearch');
% fcn = @(c) Optimize_Objective_C(c, model, L_C_50_A, x, Rlist, freq, C_50_CT_exp);
fcn = @(c) Optimize_Objective_0_50C(c, model, L_C_50_A, x, Rlist, freq, C_50_CT_exp);
[pOpt, opt_info] = sdo.optimize(fcn, p, opts);

Cc_result = pOpt(1).Value
Cs_result = pOpt(2).Value
F_C_50_result = [0, 0, 0, 0, 0, 0, 0];
for i = 1:7
    sdo.setValueInModel(model(i), 'Cc', Cc_result);
    sdo.setValueInModel(model(i), 'Cs', Cs_result);
    sdo.setValueInModel(model(i), 'L', L_C_50_A(i) / x(i));
    sdo.setValueInModel(model(i), 'R', Rlist(i));
    z_data = power_zmeter(model(i), freq'); 
    [~,I] = max(real(z_data.Z));
    F_C_50_result(i) = freq(I);
end
C_50_CT_result = ((2 .* pi .* F_C_50_result) .^ (-2)) ./ L_C_50_A;

distance = 0;
for i = 1:7
    distance = distance + abs(C_50_CT_result(i) - C_50_CT_exp(i)) ^ 2;
end
distance = sqrt(distance)

figure(1)
plot(x, C_50_CT_result, 'o--', x, C_50_CT_exp, 'o-')
legend('simulation','experiment')
grid on
title('Total Capacitance at Resonant Frequency, 0.50mm Copper Wire')
xlabel('Turns, n')
ylabel('Capacitance (F)')
