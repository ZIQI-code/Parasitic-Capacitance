%state2 analysis of N10 short and long model
%% comparison of short and long extension

%short extension
S_N10_SE_F = csvread('S_N10_SE_01.CSV',3,0,[3,0,201,0]);
S_N10_SE_R_1 = csvread('S_N10_SE_01.CSV',3,1,[3,1,201,1]);
S_N10_SE_I_1 = csvread('S_N10_SE_01.CSV',3,2,[3,2,201,2]);
S_N10_SE_R_2 = csvread('S_N10_SE_02.CSV',3,1,[3,1,201,1]);
S_N10_SE_I_2 = csvread('S_N10_SE_02.CSV',3,2,[3,2,201,2]);
S_N10_SE_R_3 = csvread('S_N10_SE_03.CSV',3,1,[3,1,201,1]);
S_N10_SE_I_3 = csvread('S_N10_SE_03.CSV',3,2,[3,2,201,2]);

%long extension
S_N10_LE_F = csvread('S_N10_LE_01.CSV',3,0,[3,0,201,0]);
S_N10_LE_R_1 = csvread('S_N10_LE_01.CSV',3,1,[3,1,201,1]);
S_N10_LE_I_1 = csvread('S_N10_LE_01.CSV',3,2,[3,2,201,2]);
S_N10_LE_R_2 = csvread('S_N10_LE_02.CSV',3,1,[3,1,201,1]);
S_N10_LE_I_2 = csvread('S_N10_LE_02.CSV',3,2,[3,2,201,2]);
S_N10_LE_R_3 = csvread('S_N10_LE_03.CSV',3,1,[3,1,201,1]);
S_N10_LE_I_3 = csvread('S_N10_LE_03.CSV',3,2,[3,2,201,2]);

%draw graph
figure(1)
plot(S_N10_SE_F,S_N10_SE_R_1,S_N10_SE_F,S_N10_SE_R_2,S_N10_SE_F,S_N10_SE_R_3)
hold on
plot(S_N10_LE_F,S_N10_LE_R_1,S_N10_LE_F,S_N10_LE_R_2,S_N10_LE_F,S_N10_LE_R_3)
legend('N10-SE-0','N10-SE-1','N10-SE-2','N10-LE-0','N10-LE-1','N10-LE-2')
title('Comparison of Knitted N10 Long and Short Entension Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(2)
plot(S_N10_SE_F,S_N10_SE_I_1,S_N10_SE_F,S_N10_SE_I_2,S_N10_SE_F,S_N10_SE_I_3)
hold on
plot(S_N10_LE_F,S_N10_LE_I_1,S_N10_LE_F,S_N10_LE_I_2,S_N10_LE_F,S_N10_LE_I_3)
legend('N10-SE-0','N10-SE-1','N10-SE-2','N10-LE-0','N10-LE-1','N10-LE-2')
title('Comparison of Knitted N10 Long and Short Entension Imaginary')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

%% Short Diameter Copper and Knitted Wire comparison
%Copper
S_N10_LE_C_F = csvread('S_N10_LE_00_C.CSV',3,0,[3,0,201,0]);
S_N10_LE_C_R_1 = csvread('S_N10_LE_00_C.CSV',3,1,[3,1,201,1]);
S_N10_LE_C_I_1 = csvread('S_N10_LE_00_C.CSV',3,2,[3,2,201,2]);
S_N10_LE_C_R_2 = csvread('S_N10_LE_01_C.CSV',3,1,[3,1,201,1]);
S_N10_LE_C_I_2 = csvread('S_N10_LE_01_C.CSV',3,2,[3,2,201,2]);
S_N10_LE_C_R_3 = csvread('S_N10_LE_02_C.CSV',3,1,[3,1,201,1]);
S_N10_LE_C_I_3 = csvread('S_N10_LE_02_C.CSV',3,2,[3,2,201,2]);

%Knitted
S_N10_LE_F = csvread('S_N10_LE_01.CSV',3,0,[3,0,201,0]);
S_N10_LE_R_1 = csvread('S_N10_LE_01.CSV',3,1,[3,1,201,1]);
S_N10_LE_I_1 = csvread('S_N10_LE_01.CSV',3,2,[3,2,201,2]);
S_N10_LE_R_2 = csvread('S_N10_LE_02.CSV',3,1,[3,1,201,1]);
S_N10_LE_I_2 = csvread('S_N10_LE_02.CSV',3,2,[3,2,201,2]);
S_N10_LE_R_3 = csvread('S_N10_LE_03.CSV',3,1,[3,1,201,1]);
S_N10_LE_I_3 = csvread('S_N10_LE_03.CSV',3,2,[3,2,201,2]);

%draw graph
figure(3)
plot(S_N10_LE_C_F,S_N10_LE_C_R_1,S_N10_LE_C_F ,S_N10_LE_C_R_2,S_N10_LE_C_F ,S_N10_LE_C_R_3)
hold on
plot(S_N10_LE_F,S_N10_LE_R_1,S_N10_LE_F,S_N10_LE_R_2,S_N10_LE_F,S_N10_LE_R_3)
legend('N10-C-0','N10-C-1','N10-C-2','N10-K-0','N10-K-1','N10-K-2')
title('Comparison of Short Diameter Copper and Knitted Wire Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(4)
plot(S_N10_LE_C_F,S_N10_LE_C_I_1,S_N10_LE_C_F ,S_N10_LE_C_I_2,S_N10_LE_C_F ,S_N10_LE_C_I_3)
hold on
plot(S_N10_LE_F,S_N10_LE_I_1,S_N10_LE_F,S_N10_LE_I_2,S_N10_LE_F,S_N10_LE_I_3)
legend('N10-C-0','N10-C-1','N10-C-2','N10-K-0','N10-K-1','N10-K-2')
title('Comparison of Short Diameter Copper and Knitted Wire Imaginary')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

%% Long Diameter Copper and Knitted Wire comparison
%Copper
L_N10_LE_C_F = csvread('L_N10_LE_00_C.CSV',3,0,[3,0,201,0]);
L_N10_LE_C_R_1 = csvread('L_N10_LE_00_C.CSV',3,1,[3,1,201,1]);
L_N10_LE_C_I_1 = csvread('L_N10_LE_00_C.CSV',3,2,[3,2,201,2]);
L_N10_LE_C_R_2 = csvread('L_N10_LE_01_C.CSV',3,1,[3,1,201,1]);
L_N10_LE_C_I_2 = csvread('L_N10_LE_01_C.CSV',3,2,[3,2,201,2]);
L_N10_LE_C_R_3 = csvread('L_N10_LE_02_C.CSV',3,1,[3,1,201,1]);
L_N10_LE_C_I_3 = csvread('L_N10_LE_02_C.CSV',3,2,[3,2,201,2]);

%Knitted
L_N10_LE_F = csvread('L_N10_LE_00.CSV',3,0,[3,0,201,0]);
L_N10_LE_R_1 = csvread('L_N10_LE_00.CSV',3,1,[3,1,201,1]);
L_N10_LE_I_1 = csvread('L_N10_LE_00.CSV',3,2,[3,2,201,2]);
L_N10_LE_R_2 = csvread('L_N10_LE_01.CSV',3,1,[3,1,201,1]);
L_N10_LE_I_2 = csvread('L_N10_LE_01.CSV',3,2,[3,2,201,2]);
L_N10_LE_R_3 = csvread('L_N10_LE_02.CSV',3,1,[3,1,201,1]);
L_N10_LE_I_3 = csvread('L_N10_LE_02.CSV',3,2,[3,2,201,2]);

%draw graph
figure(5)
plot(L_N10_LE_C_F,L_N10_LE_C_R_1,L_N10_LE_C_F ,L_N10_LE_C_R_2,L_N10_LE_C_F ,L_N10_LE_C_R_3)
hold on
plot(L_N10_LE_F,L_N10_LE_R_1,L_N10_LE_F,L_N10_LE_R_2,L_N10_LE_F,L_N10_LE_R_3)
legend('N10-C-0','N10-C-1','N10-C-2','N10-K-0','N10-K-1','N10-K-2')
title('Comparison of Long Diameter Copper and Knitted Wire Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(6)
plot(L_N10_LE_C_F,L_N10_LE_C_I_1,L_N10_LE_C_F,L_N10_LE_C_I_2,L_N10_LE_C_F,L_N10_LE_C_I_3)
hold on
plot(L_N10_LE_F,L_N10_LE_I_1,L_N10_LE_F,L_N10_LE_I_2,L_N10_LE_F,L_N10_LE_I_3)
legend('N10-C-0','N10-C-1','N10-C-2','N10-K-0','N10-K-1','N10-K-2')
title('Comparison of Long Diameter Copper and Knitted Wire Imaginary')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

%% Comparison of Long and Short Diameter Copper
figure(7)
plot(L_N10_LE_C_F,L_N10_LE_C_R_1,L_N10_LE_C_F ,L_N10_LE_C_R_2,L_N10_LE_C_F ,L_N10_LE_C_R_3)
hold on
plot(S_N10_LE_C_F,S_N10_LE_C_R_1,S_N10_LE_C_F ,S_N10_LE_C_R_2,S_N10_LE_C_F ,S_N10_LE_C_R_3)
legend('N10-L-0','N10-L-1','N10-L-2','N10-S-0','N10-S-1','N10-S-2')
title('Comparison of Long and Short Diameter Copper Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(8)
plot(L_N10_LE_C_F,L_N10_LE_C_I_1,L_N10_LE_C_F,L_N10_LE_C_I_2,L_N10_LE_C_F,L_N10_LE_C_I_3)
hold on
plot(S_N10_LE_C_F,S_N10_LE_C_I_1,S_N10_LE_C_F ,S_N10_LE_C_I_2,S_N10_LE_C_F ,S_N10_LE_C_I_3)
legend('N10-L-0','N10-L-1','N10-L-2','N10-S-0','N10-S-1','N10-S-2')
title('Comparison of Long and Short Diameter Copper Imaginary')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off
%% Comparison of Long and Short Diameter Knitted
figure(9)
plot(L_N10_LE_F,L_N10_LE_R_1,L_N10_LE_F ,L_N10_LE_R_2,L_N10_LE_F ,L_N10_LE_R_3)
hold on
plot(S_N10_LE_F,S_N10_LE_R_1,S_N10_LE_F ,S_N10_LE_R_2,S_N10_LE_F ,S_N10_LE_R_3)
legend('N10-L-0','N10-L-1','N10-L-2','N10-S-0','N10-S-1','N10-S-2')
title('Comparison of Long and Short Diameter Knitted Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(10)
plot(L_N10_LE_F,L_N10_LE_I_1,L_N10_LE_F,L_N10_LE_I_2,L_N10_LE_F,L_N10_LE_I_3)
hold on
plot(S_N10_LE_F,S_N10_LE_I_1,S_N10_LE_F,S_N10_LE_I_2,S_N10_LE_F,S_N10_LE_I_3)
legend('N10-L-0','N10-L-1','N10-L-2','N10-S-0','N10-S-1','N10-S-2')
title('Comparison of Long and Short Diameter Knitted Imaginary')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

