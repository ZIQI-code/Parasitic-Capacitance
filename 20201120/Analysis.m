%% study of total capacitance with the increase of the turns Knitted
freq = csvread('N20_0.32C_04.CSV',3,0,[3,0,802,0]);
simuL = ([0.829,1.16,1.48,1.81,2.13,2.43,2.75]./(0.2*pi)).*1e-6;
simu = [170.0150,137.0315,116.0420,102.0490,91.0545,82.0590,75.0625].*1e+6;
simuC = ((2.*pi.*simu).^(-2))./simuL;
model = ["RC_Circuit_N8_1","RC_Circuit_N10_1","RC_Circuit_N12_1","RC_Circuit_N14_1","RC_Circuit_N16_1","RC_Circuit_N18_1","RC_Circuit_N20_1"];
Fc = [];
x = [8,10,12,14,16,18,20];
for i = 1:length(model)
%     open(model(i))
    sdo.setValueInModel(model(i), 'Cp', 1e-12);
    sdo.setValueInModel(model(i), 'Cs', 1e-12);
    sdo.setValueInModel(model(i), 'L', simuL(i)/x(i));
    sdo.setValueInModel(model(i), 'R', 10);
    z_data = power_zmeter(model(i), freq'); 
    [M,I] = max(real(z_data.Z));
    Fc = [Fc, freq(I)];
    figure(99)
    plot(freq,real(z_data.Z))
    pause;
end 
CT = ((2.*pi.*Fc).^(-2))./simuL;
%% Copper smaller Cp
freq = csvread('N20_0.32C_04.CSV',3,0,[3,0,802,0]);
simuL = ([0.829,1.16,1.48,1.81,2.13,2.43,2.75]./(0.2*pi)).*1e-6;
simu = [170.0150,137.0315,116.0420,102.0490,91.0545,82.0590,75.0625].*1e+6;
simuC = ((2.*pi.*simu).^(-2))./simuL;
model = ["RC_Circuit_N8_1","RC_Circuit_N10_1","RC_Circuit_N12_1","RC_Circuit_N14_1","RC_Circuit_N16_1","RC_Circuit_N18_1","RC_Circuit_N20_1"];
Fc2 = [];
x = [8,10,12,14,16,18,20];
for i = 1:length(model)
%     open(model(i))
    sdo.setValueInModel(model(i), 'Cp', 1e-14);
    sdo.setValueInModel(model(i), 'Cs', 1e-12);
    sdo.setValueInModel(model(i), 'L', simuL(i)/x(i));
    sdo.setValueInModel(model(i), 'R', 10);
    z_data = power_zmeter(model(i), freq'); 
    [M,I] = max(real(z_data.Z));
    Fc2 = [Fc2, freq(I)];
    figure(99)
    plot(freq,real(z_data.Z))
    
end 
CT2 = ((2.*pi.*Fc2).^(-2))./simuL;
%% 

figure(1)
plot(x,Fc,x,Fc2)
title('Resonant Frequency')
legend('Knitted','Copper')
grid on

figure(2)
plot(x,CT,x,CT2)
title('Total Capacitance at Resonant Frequency')
legend('Knitted','Copper')
grid on