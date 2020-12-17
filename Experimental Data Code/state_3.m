%state3 analysisi of N18_S HF
%% Knitteed and Copper Wire SD N18 HF
K_F_N18_00 = csvread('S_N18_SE_00_HF.CSV',3,0,[3,0,201,0]);
K_R_N18_00 = csvread('S_N18_SE_00_HF.CSV',3,1,[3,1,201,1]);
K_I_N18_00 = csvread('S_N18_SE_00_HF.CSV',3,2,[3,2,201,2]);
K_R_N18_01 = csvread('S_N18_SE_01_HF.CSV',3,1,[3,1,201,1]);
K_I_N18_01 = csvread('S_N18_SE_01_HF.CSV',3,2,[3,2,201,2]);
K_R_N18_02 = csvread('S_N18_SE_02_HF.CSV',3,1,[3,1,201,1]);
K_I_N18_02 = csvread('S_N18_SE_02_HF.CSV',3,2,[3,2,201,2]);

C_F_N18_00 = csvread('S_N18_SE_00_C_HF.CSV',3,0,[3,0,600,0]);
C_R_N18_00 = csvread('S_N18_SE_00_C_HF.CSV',3,1,[3,1,600,1]);
C_I_N18_00 = csvread('S_N18_SE_00_C_HF.CSV',3,2,[3,2,600,2]);
    
C_R_N18_01 = csvread('S_N18_SE_01_C_HF.CSV',3,1,[3,1,600,1]);
C_I_N18_01 = csvread('S_N18_SE_01_C_HF.CSV',3,2,[3,2,600,2]);
C_R_N18_02 = csvread('S_N18_SE_02_C_HF.CSV',3,1,[3,1,600,1]);
C_I_N18_02 = csvread('S_N18_SE_02_C_HF.CSV',3,2,[3,2,600,2]);

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
C_R_N18 = zeros(598,1);
C_I_N18 = zeros(598,1);
for i = 1:598
    C_R_N18(i) = (C_R_N18_00(i)+C_R_N18_01(i)+C_R_N18_02(i))/3;
    C_I_N18(i) = (C_I_N18_00(i)+C_I_N18_01(i)+C_I_N18_02(i))/3;
end
for i = 1:199
    K_R_N18(i) = (K_R_N18_00(i)+K_R_N18_01(i)+K_R_N18_02(i))/3;
    K_I_N18(i) = (K_I_N18_00(i)+K_I_N18_01(i)+K_I_N18_02(i))/3;
end 
figure(5)
plot(K_F_N18_00,K_R_N18) 
hold on
plot(C_F_N18_00,C_R_N18) 
legend('Knitted Wire','Copper Wire')
title('Knitteed and Copper Wire N18 Real HF')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(6)
plot(K_F_N18_00,K_I_N18) 
hold on
plot(C_F_N18_00,C_I_N18) 
legend('Knitted Wire','Copper Wire')
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
figure(7)
plot(K_F_N18_00_P,K_R_N18_01) 
hold on
plot(C_F_N18_00_P,C_R_N18_01) 
legend('N18K-0','N18C-0')
title('Knitteed and Copper Wire N18 Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(8)
plot(K_F_N18_00_P,K_I_N18_01) 
hold on
plot(C_F_N18_00_P,C_I_N18_01) 
legend('N18K-0','N18C-0')
title('Knitteed and Copper Wire N18 Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off
%% N14 small diameter copper and large diameter copper comparison
Cs_F_N14_00 = csvread('N14_sCOPPER-01.CSV',3,0,[3,0,600,0]);
Cs_R_N14_00 = csvread('N14_sCOPPER-01.CSV',3,1,[3,1,600,1]);
Cs_I_N14_00 = csvread('N14_sCOPPER-01.CSV',3,2,[3,2,600,2]);
C_R_N14_27_01 = csvread('N14_sCOPPER-02.CSV',3,1,[3,1,600,1]);
C_I_N14_27_01 = csvread('N14_sCOPPER-02.CSV',3,2,[3,2,600,2]);
C_R_N14_27_02 = csvread('N14_sCOPPER-03.CSV',3,1,[3,1,600,1]);
C_I_N14_27_02 = csvread('N14_sCOPPER-03.CSV',3,2,[3,2,600,2]);

CL_F_N14_00 = csvread('N14_LCOPPER-01.CSV',3,0,[3,0,600,0]);
CL_R_N14_00 = csvread('N14_LCOPPER-01.CSV',3,1,[3,1,600,1]);
CL_I_N14_00 = csvread('N14_LCOPPER-01.CSV',3,2,[3,2,600,2]);
CL_R_N14_01 = csvread('N14_LCOPPER-02.CSV',3,1,[3,1,600,1]);
CL_I_N14_01 = csvread('N14_LCOPPER-02.CSV',3,2,[3,2,600,2]);
CL_R_N14_02 = csvread('N14_LCOPPER-03.CSV',3,1,[3,1,600,1]);
CL_I_N14_02 = csvread('N14_LCOPPER-03.CSV',3,2,[3,2,600,2]);

figure(11)
plot(Cs_F_N14_00,Cs_R_N14_00,Cs_F_N14_00,C_R_N14_27_01,Cs_F_N14_00,C_R_N14_27_02) 
hold on
plot(CL_F_N14_00,CL_R_N14_00,CL_F_N14_00,CL_R_N14_01,CL_F_N14_00,CL_R_N14_02) 
legend('N14-Sd-0','S2','S3','L1','L2','L3')
title('Knitteed and Copper Wire N18 Real HF')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(12)
plot(Cs_F_N14_00,Cs_I_N14_00,Cs_F_N14_00,C_I_N14_27_01,Cs_F_N14_00,C_I_N14_27_02) 
hold on
plot(CL_F_N14_00,CL_I_N14_00,CL_F_N14_00,CL_I_N14_01,CL_F_N14_00,CL_I_N14_02) 
legend('N14-Sd-0','2','3','L1','L2','L3')
title('Knitteed and Copper Wire N18 Imag HF')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off
%% N14 study of different diameter knitted wire
K_F_N14_43_00 = csvread('N14_0.43K_SE_01.CSV',3,0,[3,0,602,0]);
K_R_N14_43_00 = csvread('N14_0.43K_SE_01.CSV',3,1,[3,1,602,1]);
K_I_N14_43_00 = csvread('N14_0.43K_SE_01.CSV',3,2,[3,2,602,2]);
K_R_N14_43_01 = csvread('N14_0.43K_SE_02.CSV',3,1,[3,1,602,1]);
K_I_N14_43_01 = csvread('N14_0.43K_SE_02.CSV',3,2,[3,2,602,2]);
K_R_N14_43_02 = csvread('N14_0.43K_SE_03.CSV',3,1,[3,1,602,1]);
K_I_N14_43_02 = csvread('N14_0.43K_SE_03.CSV',3,2,[3,2,602,2]);

K_F_N14_23_00 = csvread('N14_0.23KNIT_SE_01.CSV',3,0,[3,0,602,0]);
K_R_N14_23_00 = csvread('N14_0.23KNIT_SE_01.CSV',3,1,[3,1,602,1]);
K_I_N14_23_00 = csvread('N14_0.23KNIT_SE_01.CSV',3,2,[3,2,602,2]);
K_R_N14_23_01 = csvread('N14_0.23KNIT_SE_02.CSV',3,1,[3,1,602,1]);
K_I_N14_23_01 = csvread('N14_0.23KNIT_SE_02.CSV',3,2,[3,2,602,2]);
K_R_N14_23_02 = csvread('N14_0.23KNIT_SE_03.CSV',3,1,[3,1,602,1]);
K_I_N14_23_02 = csvread('N14_0.23KNIT_SE_03.CSV',3,2,[3,2,602,2]);

C_F_N14_27_00 = csvread('N14_sCOPPER-01.CSV',3,0,[3,0,602,0]);
C_R_N14_27_00 = csvread('N14_sCOPPER-01.CSV',3,1,[3,1,602,1]);
C_I_N14_27_00 = csvread('N14_sCOPPER-01.CSV',3,2,[3,2,602,2]);
C_R_N14_27_01 = csvread('N14_sCOPPER-02.CSV',3,1,[3,1,602,1]);
C_I_N14_27_01 = csvread('N14_sCOPPER-02.CSV',3,2,[3,2,602,2]);
C_R_N14_27_02 = csvread('N14_sCOPPER-03.CSV',3,1,[3,1,602,1]);
C_I_N14_27_02 = csvread('N14_sCOPPER-03.CSV',3,2,[3,2,602,2]);

K_F_N14_80_00 = csvread('N14_0.8KNIT_SE_01.CSV',3,0,[3,0,602,0]);
K_R_N14_80_00 = csvread('N14_0.8KNIT_SE_01.CSV',3,1,[3,1,602,1]);
K_I_N14_80_00 = csvread('N14_0.8KNIT_SE_01.CSV',3,2,[3,2,602,2]);
K_R_N14_80_01 = csvread('N14_0.8KNIT_SE_02.CSV',3,1,[3,1,602,1]);
K_I_N14_80_01 = csvread('N14_0.8KNIT_SE_02.CSV',3,2,[3,2,602,2]);
K_R_N14_80_02 = csvread('N14_0.8KNIT_SE_03.CSV',3,1,[3,1,602,1]);
K_I_N14_80_02 = csvread('N14_0.8KNIT_SE_03.CSV',3,2,[3,2,602,2]);

C_F_N14_43_00 = csvread('N14_0.43C_SE_01.CSV',3,0,[3,0,602,0]);
C_R_N14_43_00 = csvread('N14_0.43C_SE_01.CSV',3,1,[3,1,602,1]);
C_I_N14_43_00 = csvread('N14_0.43C_SE_01.CSV',3,2,[3,2,602,2]);
C_R_N14_43_01 = csvread('N14_0.43C_SE_02.CSV',3,1,[3,1,602,1]);
C_I_N14_43_01 = csvread('N14_0.43C_SE_02.CSV',3,2,[3,2,602,2]);
C_R_N14_43_02 = csvread('N14_0.43C_SE_03.CSV',3,1,[3,1,602,1]);
C_I_N14_43_02 = csvread('N14_0.43C_SE_03.CSV',3,2,[3,2,602,2]);

K_R_N14_43 = zeros(600,1);
K_I_N14_43 = zeros(600,1);
K_R_N14_23 = zeros(600,1);
K_I_N14_23 = zeros(600,1);
C_R_N14_27 = zeros(600,1);
C_I_N14_27 = zeros(600,1);
K_R_N14_80 = zeros(600,1);
K_I_N14_80 = zeros(600,1);
C_R_N14_43 = zeros(600,1);
C_I_N14_43 = zeros(600,1);
for i = 1:600
    
    K_R_N14_43(i) = (K_R_N14_43_00(i)+K_R_N14_43_01(i)+K_R_N14_43_02(i))/3;
    K_I_N14_43(i) = (K_I_N14_43_00(i)+K_I_N14_43_01(i)+K_I_N14_43_02(i))/3;
    K_R_N14_23(i) = (K_R_N14_23_00(i)+K_R_N14_23_01(i)+K_R_N14_23_02(i))/3;
    K_I_N14_23(i) = (K_I_N14_23_00(i)+K_I_N14_23_01(i)+K_I_N14_23_02(i))/3;
    C_R_N14_27(i) = (C_R_N14_27_00(i)+C_R_N14_27_01(i)+C_R_N14_27_02(i))/3;
    C_I_N14_27(i) = (C_I_N14_27_00(i)+C_I_N14_27_01(i)+C_I_N14_27_02(i))/3;
    K_R_N14_80(i) = (K_R_N14_80_00(i)+K_R_N14_80_01(i)+K_R_N14_80_02(i))/3;
    K_I_N14_80(i) = (K_I_N14_80_00(i)+K_I_N14_80_01(i)+K_I_N14_80_02(i))/3;
    C_R_N14_43(i) = (C_R_N14_43_00(i)+C_R_N14_43_01(i)+C_R_N14_43_02(i))/3;
    C_I_N14_43(i) = (C_I_N14_43_00(i)+C_I_N14_43_01(i)+C_I_N14_43_02(i))/3;
end

figure(13)
plot(K_F_N14_43_00, K_R_N14_43, K_F_N14_43_00, K_R_N14_23, K_F_N14_43_00, C_R_N14_27)
hold on
legend('K_0.43','K_0.23','C_0.27')
title('N14 study of different diameter Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(14)
plot(K_F_N14_43_00, K_I_N14_43, K_F_N14_43_00, K_I_N14_23, K_F_N14_43_00, C_I_N14_27)
hold on
legend('K_0.43','K_0.23','C_0.27')
title('N14 study of different diameter Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

figure(15)
plot(K_F_N14_23_00, K_R_N14_23)
hold on 
plot(K_F_N14_80_00, K_R_N14_80)
plot(C_F_N14_27_00, C_R_N14_27)
plot(C_F_N14_43_00, C_R_N14_43)
plot(K_F_N14_43_00, K_R_N14_43)
legend('K_0.23','K_0.80','C_0.27','C_0.43','K_0.43')
title('N14 study of different diameter Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(16)
plot(K_F_N14_23_00, K_I_N14_23)
hold on 
plot(K_F_N14_80_00, K_I_N14_80)
plot(C_F_N14_27_00, C_I_N14_27)
plot(C_F_N14_43_00, C_I_N14_43)
plot(K_F_N14_43_00, K_I_N14_43)
legend('K_0.23','K_0.80','C_0.27','C_0.43','K_0.43')
title('N14 study of different diameter Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off


%% 

%N10 different diameter
K_F_N10_43_00 = csvread('N10_0.43KNIT_SE_01.CSV',3,0,[3,0,600,0]);
K_R_N10_43_00 = csvread('N10_0.43KNIT_SE_01.CSV',3,1,[3,1,600,1]);
K_I_N10_43_00 = csvread('N10_0.43KNIT_SE_01.CSV',3,2,[3,2,600,2]);
K_R_N10_43_01 = csvread('N10_0.43KNIT_SE_02.CSV',3,1,[3,1,600,1]);
K_I_N10_43_01 = csvread('N10_0.43KNIT_SE_02.CSV',3,2,[3,2,600,2]);
K_R_N10_43_02 = csvread('N10_0.43KNIT_SE_03.CSV',3,1,[3,1,600,1]);
K_I_N10_43_02 = csvread('N10_0.43KNIT_SE_03.CSV',3,2,[3,2,600,2]);

K_F_N10_23_00 = csvread('N10_0.23KNIT_SE_01.CSV',3,0,[3,0,600,0]);
K_R_N10_23_00 = csvread('N10_0.23KNIT_SE_01.CSV',3,1,[3,1,600,1]);
K_I_N10_23_00 = csvread('N10_0.23KNIT_SE_01.CSV',3,2,[3,2,600,2]);
K_R_N10_23_01 = csvread('N10_0.23KNIT_SE_02.CSV',3,1,[3,1,600,1]);
K_I_N10_23_01 = csvread('N10_0.23KNIT_SE_02.CSV',3,2,[3,2,600,2]);
K_R_N10_23_02 = csvread('N10_0.23KNIT_SE_03.CSV',3,1,[3,1,600,1]);
K_I_N10_23_02 = csvread('N10_0.23KNIT_SE_03.CSV',3,2,[3,2,600,2]);

K_F_N10_43_00P = csvread('S_N10_SE_01.CSV',3,0,[3,0,201,0]);
K_R_N10_43_00P = csvread('S_N10_SE_01.CSV',3,1,[3,1,201,1]);
K_I_N10_43_00P = csvread('S_N10_SE_01.CSV',3,2,[3,2,201,2]);
K_R_N10_43_01P = csvread('S_N10_SE_02.CSV',3,1,[3,1,201,1]);
K_I_N10_43_01P = csvread('S_N10_SE_02.CSV',3,2,[3,2,201,2]);
K_R_N10_43_02P = csvread('S_N10_SE_03.CSV',3,1,[3,1,201,1]);
K_I_N10_43_02P = csvread('S_N10_SE_03.CSV',3,2,[3,2,201,2]);

K_R_N10_43 = zeros(598,1);
K_I_N10_43 = zeros(598,1);
K_R_N10_23 = zeros(598,1);
K_I_N10_23 = zeros(598,1);
K_R_N10_43_P = zeros(199,1);
K_I_N10_43_P = zeros(199,1);
for i = 1:598
    
    K_R_N10_43(i) = (K_R_N10_43_00(i)+K_R_N10_43_01(i)+K_R_N10_43_02(i))/3;
    K_I_N10_43(i) = (K_I_N10_43_00(i)+K_I_N10_43_01(i)+K_I_N10_43_02(i))/3;
    K_R_N10_23(i) = (K_R_N10_23_00(i)+K_R_N10_23_01(i)+K_R_N10_23_02(i))/3;
    K_I_N10_23(i) = (K_I_N10_23_00(i)+K_I_N10_23_01(i)+K_I_N10_23_02(i))/3;

end

for i = 1:199
    K_R_N10_43_P(i) = (K_R_N10_43_00P(i)+K_R_N10_43_01P(i)+K_R_N10_43_02P(i))/3;
    K_I_N10_43_P(i) = (K_I_N10_43_00P(i)+K_I_N10_43_01P(i)+K_I_N10_43_02P(i))/3;
end

figure(18)
plot(K_F_N10_43_00, K_R_N10_43, K_F_N10_43_00, K_R_N10_23)
hold on
plot(K_F_N10_43_00P,K_R_N10_43_P)
legend('K_0.43','K_0.23','K_0.43P')
title('N10 study of different diameter Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(19)
plot(K_F_N10_43_00, K_I_N10_43, K_F_N10_43_00, K_I_N10_23)
hold on
plot(K_F_N10_43_00P,K_I_N10_43_P)
legend('K_0.43','K_0.23','K_0.43P')
title('N10 study of different diameter Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

%% N18 of previous study parameters
% solve copper
L = 4.6231e-6;
syms k b
[k,b] = solve(3921.77==k*47600000+b, -7671.6==k*47900000+b,k,b);
Fc = abs(b/k);
%Fc = 4.7701e+07
syms Cs
Cs = solve(Fc == 1/(2*pi*sqrt(L*Cs)),Cs);
%Cs = 2.4079e-12

% solve knitted wire
syms k b
[k,b] = solve(2478.94==k*43090000+b, -7579.46==k*44470000+b,k,b);
Fk = abs(b/k);
%Fk = 4.3430e+07
syms Ct
Ct = solve(Fk == 1/(2*pi*sqrt(L*Ct)),Ct);
%Ct = 2.9049e-12

%Solve parasitic
Cp = Ct-Cs;
%Cp = 4.9693e-13

%error
%error of Cs
Ecs=abs((Cs-2.351e-12)/Cs);
eval(Ecs)
%Ecs = 0.0236

%error of Cp
Ecp = abs((Cp-(2.878e-12 - 2.351e-12))/Cp);
eval(Ecp)
%Ecp = 0.0605

%R=109.27
%% N18 study of HF 
L = (29.019113564366666e-6/(2*pi));
%L = 4.6185e-6

syms k b
[k,b] = solve(1250.15==k*47515900+b, -4661.88==k*47764600+b,k,b);
Fc = abs(b/k);
%Fc = 4.7568e+07
syms Cs
Cs = solve(Fc == 1/(2*pi*sqrt(L*Cs)),Cs);
    %Cs = 2.4238e-12

% solve knitted wire
syms k b
[k,b] = solve(628.913==k*2.4238e-1244210000+b, -6032.29==k*44955000+b,k,b);
Fk = abs(b/k);
%Fk = 4.4280e+07
syms Ct
Ct = solve(Fk == 1/(2*pi*sqrt(L*Ct)),Ct);
%Ct = 2.7971e-12

%Solve parasitic
Cp = Ct-Cs;
%Cp = 3.7334e-13

%error
%error of Cs
% simulated Cs = 2.383e-12
Ecs=abs((Cs-2.383e-12)/Cs);
eval(Ecs)
%Ecs = 0.0168

%error of Cp
%Simulated Ct = 2.7513e-12
Ecp = abs((Cp-(2.7513e-12 - 2.383e-12))/Cp);
eval(Ecp)
%Ecp = 0.0135

%Rc = 68.8966
%Rk=98.9016