data_real = csvread('L_N10_LE_00_C.CSV',3,1,[3,1,201,1]);
data_imag = csvread('L_N10_LE_00_C.CSV',3,2,[3,2,201,2]);
freq = csvread('L_N10_LE_00_C.CSV', 3, 0, [3, 0, 201, 0]);
z_data = power_zmeter('RC_Circuit_3', freq');
figure(9)
plot(freq, imag(z_data.Z), freq, data_imag)
legend('simulation', 'experiment')
figure(10)
plot(freq, real(z_data.Z), freq, data_real)
legend('simulation', 'experiment')
