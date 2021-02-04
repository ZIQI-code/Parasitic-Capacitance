%% Study of 0.31 Knitted
freq = csvread('N20_0.31K_10.CSV', 3, 0, [3, 0, 802, 0]);
model = ["RC_Circuit_N8_1","RC_Circuit_N10_1","RC_Circuit_N12_1","RC_Circuit_N14_1","RC_Circuit_N16_1","RC_Circuit_N18_1","RC_Circuit_N20_1"];
x = [8, 10, 12, 14, 16, 18, 20];
Rlist = [7, 6.2, 4.5, 5.5, 4.5, 4, 4, 4];

F_K_31_exp = [7.4869, 6.4241, 5.7051, 5.1051, 4.5298, 4.1610, 3.8384] .* 1.0e+07;
K_31_CT_exp = 1 ./ (4 .* (pi .* F_K_31_exp) .^ 2 .* L_K_31_new_A);

% for i = 1:7
%     open(model(i));
% end

p = sdo.getParameterFromModel(model(1), {'Cp', 'Cc', 'Cs'});

% optimization 1
p(1).Value = 5.0005e-12;
p(2).Value = 5.0005e-12;
p(3).Value = 5.0005e-12;

% optimization 1
% p(1).Value = 5.0005e-13;
% p(2).Value = 5.0005e-13;
% p(3).Value = 5.0005e-12;
% optimization 2
% p(1).Value = 3.7504e-13;
% p(2).Value = -1.6668e-14;
% p(3).Value = 8.5009e-12;

% optimization 1
% p(1).Value = 5.0005e-13;
% p(2).Value = 5.0005e-13;
% p(3).Value = 5.0005e-13;
% optimization 2
% p(1).Value = 3.5849e-13;
% p(2).Value = 8.3159e-14;
% p(3).Value = 8.0388e-13;

% optimization 1
% p(1).Value = 5.0005e-12;
% p(2).Value = 5.0005e-12;
% p(3).Value = 5.0005e-12;
% optimization 2
% p(1).Value = 2.0623e-12;
% p(2).Value = -1.7216e-12;
% p(3).Value = 1.0274e-11;
% optimization 3
% p(1).Value = 2.0208e-12;
% p(2).Value = -1.6379e-12;
% p(3).Value = 6.2811e-12;
% optimization 4
% p(1).Value = 2.0269e-12;
% p(2).Value = -1.6432e-12;
% p(3).Value = 6.2542e-12;


opts = sdo.OptimizeOptions('Method', 'fminsearch');
fcn = @(c) Optimize_Objective_K(c, model, L_K_31_new_A, x, Rlist, freq, K_31_CT_exp);
[pOpt, opt_info] = sdo.optimize(fcn, p, opts);

Cp_result = pOpt(1).Value
Cc_result = pOpt(2).Value
Cs_result = pOpt(3).Value
F_K_31_result = [0, 0, 0, 0, 0, 0, 0];
for i = 1:7
    sdo.setValueInModel(model(i), 'Cp', Cp_result);
    sdo.setValueInModel(model(i), 'Cc', Cc_result);
    sdo.setValueInModel(model(i), 'Cs', Cs_result);
    sdo.setValueInModel(model(i), 'L', L_K_31_new_A(i) / x(i));
    sdo.setValueInModel(model(i), 'R', Rlist(i));
    z_data = power_zmeter(model(i), freq'); 
    [~,I] = max(real(z_data.Z));
    F_K_31_result(i) = freq(I);
end
K_31_CT_result = ((2 .* pi .* F_K_31_result) .^ (-2)) ./ L_K_31_new_A;

distance = 0;
for i = 1:7
    distance = distance + abs(K_31_CT_result(i) - K_31_CT_exp(i)) ^ 2;
end
distance = sqrt(distance)

figure(1)
plot(x, K_31_CT_result, 'o--', x, K_31_CT_exp, 'o-')
legend('simulation','experiment')
grid on
title('Total Capacitance at Resonant Frequency, 0.31mm Conductive Yarn')
xlabel('Turns, n')
ylabel('Capacitance (F)')
