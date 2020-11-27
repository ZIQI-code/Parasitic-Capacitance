%state3 analysisi of N18_S HF
%% Knitteed and Copper Wire SD N18 HF
K_F_N18_00 = csvread('S_N18_SE_00_HF.CSV',3,0,[3,0,201,0]);
K_R_N18_00 = csvread('S_N18_SE_00_HF.CSV',3,1,[3,1,201,1]);
K_I_N18_00 = csvread('S_N18_SE_00_HF.CSV',3,2,[3,2,201,2]);
K_R_N18_01 = csvread('S_N18_SE_01_HF.CSV',3,1,[3,1,201,1]);
K_I_N18_01 = csvread('S_N18_SE_01_HF.CSV',3,2,[3,2,201,2]);
K_R_N18_02 = csvread('S_N18_SE_02_HF.CSV',3,1,[3,1,201,1]);
K_I_N18_02 = csvread('S_N18_SE_02_HF.CSV',3,2,[3,2,201,2]);

C_F_N18_00 = csvread('S_N18_SE_00_C_HF.CSV',3,0,[3,0,201,0]);
C_R_N18_00 = csvread('S_N18_SE_00_C_HF.CSV',3,1,[3,1,201,1]);
C_I_N18_00 = csvread('S_N18_SE_00_C_HF.CSV',3,2,[3,2,201,2]);
C_R_N18_01 = csvread('S_N18_SE_01_C_HF.CSV',3,1,[3,1,201,1]);
C_I_N18_01 = csvread('S_N18_SE_01_C_HF.CSV',3,2,[3,2,201,2]);
C_R_N18_02 = csvread('S_N18_SE_02_C_HF.CSV',3,1,[3,1,201,1]);
C_I_N18_02 = csvread('S_N18_SE_02_C_HF.CSV',3,2,[3,2,201,2]);

figure(1)
plot(K_F_N18_00,K_R_N18_00,K_F_N18_00,K_R_N18_01,K_F_N18_00,K_R_N18_02) 
hold on
plot(C_F_N18_00,C_R_N18_00,C_F_N18_00,C_R_N18_01,C_F_N18_00,C_R_N18_02) 
legend('N18K-0','N18K-1','N18K-2','N18C-0','N18C-1','N18C-2')
title('Knitteed and Copper Wire N18 Real HF')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(2)
plot(K_F_N18_00,K_I_N18_00,K_F_N18_00,K_I_N18_01,K_F_N18_00,K_I_N18_02) 
hold on
plot(C_F_N18_00,C_I_N18_00,C_F_N18_00,C_I_N18_01,C_F_N18_00,C_I_N18_02) 
legend('N18K-0','N18K-1','N18K-2','N18C-0','N18C-1','N18C-2')
title('Knitteed and Copper Wire N18 Imag HF')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off
%% take average of each points
K_R_N18 = zeros(199,1);
K_I_N18 = zeros(199,1);
C_R_N18 = zeros(199,1);
C_I_N18 = zeros(199,1);
for i = 1:199
    K_R_N18(i) = (K_R_N18_00(i)+K_R_N18_01(i)+K_R_N18_02(i))/3;
    K_I_N18(i) = (K_I_N18_00(i)+K_I_N18_01(i)+K_I_N18_02(i))/3;
    C_R_N18(i) = (C_R_N18_00(i)+C_R_N18_01(i)+C_R_N18_02(i))/3;
    C_I_N18(i) = (C_I_N18_00(i)+C_I_N18_01(i)+C_I_N18_02(i))/3;
end
figure(5)
plot(K_F_N18_00,K_R_N18) 
hold on
plot(C_F_N18_00,C_R_N18) 
legend('N18K-0','N18C-0')
title('Knitteed and Copper Wire N18 Real HF')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(6)
plot(K_F_N18_00,K_I_N18) 
hold on
plot(C_F_N18_00,C_I_N18) 
legend('N18K-0','N18C-0')
title('Knitteed and Copper Wire N18 Imag HF')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

%% N10 LD HF
K_F_N10_00 = csvread('L_N10_LE_00_HF.CSV',3,0,[3,0,201,0]);
K_R_N10_00 = csvread('L_N10_LE_00_HF.CSV',3,1,[3,1,201,1]);
K_I_N10_00 = csvread('L_N10_LE_00_HF.CSV',3,2,[3,2,201,2]);

C_F_N10_00 = csvread('L_N10_LE_00_C_HF.CSV',3,0,[3,0,201,0]);
C_R_N10_00 = csvread('L_N10_LE_00_C_HF.CSV',3,1,[3,1,201,1]);
C_I_N10_00 = csvread('L_N10_LE_00_C_HF.CSV',3,2,[3,2,201,2]);

figure(3)
plot(K_F_N10_00,K_R_N10_00) 
hold on
plot(C_F_N10_00,C_R_N10_00) 
legend('N10K-0','N10C-0')
title('Knitteed and Copper Wire N10 Real HF')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(4)
plot(K_F_N10_00,K_I_N10_00) 
hold on
plot(C_F_N10_00,C_I_N10_00) 
legend('N10K-0','N10C-0')
title('Knitteed and Copper Wire N10 Imag HF')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off
%% Preivous Study of N18 SD
K_F_N18_00_P = csvread('L0N18_00_0.43KNIT_01_10_1.CSV',3,0,[3,0,201,0]);
K_R_N18_00_P = csvread('L0N18_00_0.43KNIT_01_10_1.CSV',3,1,[3,1,201,1]);
K_I_N18_00_P = csvread('L0N18_00_0.43KNIT_01_10_1.CSV',3,2,[3,2,201,2]);
K_R_N18_01_P = csvread('L0N18_01_0.43KNIT_01_10_1.CSV',3,1,[3,1,201,1]);
K_I_N18_01_P = csvread('L0N18_01_0.43KNIT_01_10_1.CSV',3,2,[3,2,201,2]);
K_R_N18_02_P = csvread('L0N18_02_0.43KNIT_01_10_1.CSV',3,1,[3,1,201,1]);
K_I_N18_02_P = csvread('L0N18_02_0.43KNIT_01_10_1.CSV',3,2,[3,2,201,2]);

C_F_N18_00_P = csvread('L1N18_00_COPPER_01_10_1.CSV',3,0,[3,0,201,0]);
C_R_N18_00_P = csvread('L1N18_00_COPPER_01_10_1.CSV',3,1,[3,1,201,1]);
C_I_N18_00_P = csvread('L1N18_00_COPPER_01_10_1.CSV',3,2,[3,2,201,2]);
C_R_N18_01_P = csvread('L1N18_01_COPPER_01_10_1.CSV',3,1,[3,1,201,1]);
C_I_N18_01_P = csvread('L1N18_01_COPPER_01_10_1.CSV',3,2,[3,2,201,2]);
C_R_N18_02_P = csvread('L1N18_02_COPPER_01_10_1.CSV',3,1,[3,1,201,1]);
C_I_N18_02_P = csvread('L1N18_02_COPPER_01_10_1.CSV',3,2,[3,2,201,2]);

K_R_N18_01 = zeros(199,1);
K_I_N18_01 = zeros(199,1);
C_R_N18_01 = zeros(199,1);
C_I_N18_01 = zeros(199,1);
for i = 1:199
    K_R_N18_01(i) = (K_R_N18_00_P(i)+K_R_N18_01_P(i)+K_R_N18_02_P(i))/3;
    K_I_N18_01(i) = (K_I_N18_00_P(i)+K_I_N18_01_P(i)+K_I_N18_02_P(i))/3;
    C_R_N18_01(i) = (C_R_N18_00_P(i)+C_R_N18_01_P(i)+C_R_N18_02_P(i))/3;
    C_I_N18_01(i) = (C_I_N18_00_P(i)+C_I_N18_01_P(i)+C_I_N18_02_P(i))/3;
end
figure(5)
plot(K_F_N18_00_P,K_R_N18_01) 
hold on
plot(C_F_N18_00_P,C_R_N18_01) 
legend('N18K-0','N18C-0')
title('Knitteed and Copper Wire N18 Real HF')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(6)
plot(K_F_N18_00_P,K_I_N18_01) 
hold on
plot(C_F_N18_00_P,C_I_N18_01) 
legend('N18K-0','N18C-0')
title('Knitteed and Copper Wire N18 Imag HF')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off
