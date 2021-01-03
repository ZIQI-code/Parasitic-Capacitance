%% 0.32C
freq = csvread('N16_0.32C_SDD11_01.CSV',3,0,[3,0,802,0]);
C_R_N16diff_32_00 = csvread('N16_0.32C_SDD11_01.CSV',3,1,[3,1,802,1]);
C_I_N16diff_32_00 = csvread('N16_0.32C_SDD11_01.CSV',3,2,[3,2,802,2]);
C_R_N16comm_32_00 = csvread('N16_0.32C_SCC11_01.CSV',3,1,[3,1,802,1]);
C_I_N16comm_32_00 = csvread('N16_0.32C_SCC11_01.CSV',3,2,[3,2,802,2]);
C_R_N16S11Real_32_00 = csvread('N16_0.32C_S11REAL_01.CSV',3,1,[3,1,802,1]);
C_R_N16S11Imag_32_00 = csvread('N16_0.32C_S11IMAG_01.CSV',3,1,[3,1,802,1]);
C_R_N16S21Real_32_00 = csvread('N16_0.32C_S21REAL_01.CSV',3,1,[3,1,802,1]);
C_R_N16S21Imag_32_00 = csvread('N16_0.32C_S21IMAG_01.CSV',3,1,[3,1,802,1]);

C_F_N16_32_00 = csvread('N16_0.32C_S11_01.CSV',3,0,[3,0,802,0]);
C_R_N16_32_00 = csvread('N16_0.32C_S11_01.CSV',3,1,[3,1,802,1]);
C_I_N16_32_00 = csvread('N16_0.32C_S11_01.CSV',3,2,[3,2,802,2]);


S11real = C_R_N16S11Real_32_00;
S11Imag = C_R_N16S11Imag_32_00;
S21real = C_R_N16S21Real_32_00;
S21Imag = C_R_N16S21Imag_32_00;
S11 = S11real + j.*S11Imag;
S21 = S21real + j.*S21Imag;
Z = ((1+S11).*(1+S11)-S21.*S21)./(2.*S21);
figure(1)
plot(freq,C_R_N16diff_32_00,freq,C_I_N16diff_32_00,freq,C_R_N16_32_00,freq,C_I_N16_32_00,freq,C_R_N16comm_32_00,freq,C_I_N16comm_32_00)
legend('DR','DI','R','I','CR','CI')

figure(2)
plot(freq,real(Z),freq,imag(Z))
legend('R','I')
