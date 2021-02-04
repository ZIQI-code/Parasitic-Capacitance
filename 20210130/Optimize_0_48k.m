%% Study of 0.48 Knitted
freq = csvread('N20_0.48K_01.CSV', 3, 0, [3, 0, 802, 0]);
model = ["RC_Circuit_N8_1","RC_Circuit_N10_1","RC_Circuit_N12_1","RC_Circuit_N14_1","RC_Circuit_N16_1","RC_Circuit_N18_1","RC_Circuit_N20_1"];
x = [8, 10, 12, 14, 16, 18, 20];
Rlist = [7, 6.2, 4.5, 5.5, 4.5, 4, 4, 4];

F_K_48_exp = [7.5994, 6.5616, 5.8240, 5.1988, 4.68617, 4.2611, 3.8860] .* 1.0e+07;
K_48_CT_exp = 1 ./ (4 .* (pi .* F_K_48_exp) .^ 2 .* L_K_48_A);

% for i = 1:7
%     open(model(i));
% end

p = sdo.getParameterFromModel(model(1), {'Cp', 'Cc', 'Cs'});

% optimization 1
p(1).Value = 5.0005e-12;
p(2).Value = 5.0005e-12;
p(3).Value = 5.0005e-12;
% optimization 2
% p(1).Value = ;
% p(2).Value = ;
% p(3).Value = ;
% optimization 3
% p(1).Value = ;
% p(2).Value = ;
% p(3).Value = ;
% optimization 4
% p(1).Value = ;
% p(2).Value = ;
% p(3).Value = ;

opts = sdo.OptimizeOptions('Method', 'fminsearch');
fcn = @(c) Optimize_Objective_K(c, model, L_K_48_A, x, Rlist, freq, K_48_CT_exp);
[pOpt, opt_info] = sdo.optimize(fcn, p, opts);

Cp_result = pOpt(1).Value
Cc_result = pOpt(2).Value
Cs_result = pOpt(3).Value
F_K_48_result = [0, 0, 0, 0, 0, 0, 0];
for i = 1:7
    sdo.setValueInModel(model(i), 'Cp', Cp_result);
    sdo.setValueInModel(model(i), 'Cc', Cc_result);
    sdo.setValueInModel(model(i), 'Cs', Cs_result);
    sdo.setValueInModel(model(i), 'L', L_K_48_A(i) / x(i));
    sdo.setValueInModel(model(i), 'R', Rlist(i));
    z_data = power_zmeter(model(i), freq'); 
    [~,I] = max(real(z_data.Z));
    F_K_48_result(i) = freq(I);
end
K_48_CT_result = ((2 .* pi .* F_K_48_result) .^ (-2)) ./ L_K_48_A;

distance = 0;
for i = 1:7
    distance = distance + abs(K_48_CT_result(i) - K_48_CT_exp(i)) ^ 2;
end
distance = sqrt(distance)

figure(1)
plot(x, K_48_CT_result, 'o--', x, K_48_CT_exp, 'o-')
legend('simulation','experiment')
grid on
title('Total Capacitance at Resonant Frequency, 0.48mm Conductive Yarn')
xlabel('Turns, n')
ylabel('Capacitance (F)')
