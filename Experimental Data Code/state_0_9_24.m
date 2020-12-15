%Discuss the influence of the length of the extended wire
%% Figure drawing
% % M = csvread(filename,R1,C1,[R1 C1 R2 C2])
% % R1 — Starting row offset  C1 — Starting column offset  
% % R2 — Ending rowoffset C2 — Ending column offset
% 
% L0N14F = csvread('L0N14_LENGTHINTERFERENCE_9_24.CSV',3,0,[3,0,201,0]); 
% L0N14R = csvread('L0N14_LENGTHINTERFERENCE_9_24.CSV',3,1,[3,1,201,1]);
% L0N14I = csvread('L0N14_LENGTHINTERFERENCE_9_24.CSV',3,2,[3,2,201,2]);
% L1N14F = csvread('L1N14_ENTANGLEDCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,0,[3,0,201,0]); 
% L1N14R = csvread('L1N14_ENTANGLEDCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,1,[3,1,201,1]);
% L1N14I = csvread('L1N14_ENTANGLEDCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,2,[3,2,201,2]);
% figure(1)
% plot(L0N14F,L0N14R,L0N14F,L1N14R)
% 
% 
% legend('L0','L1')
% figure(2)
% plot(L0N14F,L0N14I,L0N14F,L1N14I)
% legend('L0','L1')

%% Copper wire discuss the impact of extended wire
L0F_C_0 = csvread('L0N14_00_COPPERCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,0,[3,0,201,0]);
L0R_C_0 = csvread('L0N14_00_COPPERCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,1,[3,1,201,1]);
L0I_C_0 = csvread('L0N14_00_COPPERCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,2,[3,2,201,2]);
L0R_C_1 = csvread('L0N14_01_COPPERCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,1,[3,1,201,1]);
L0I_C_1 = csvread('L0N14_01_COPPERCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,2,[3,2,201,2]);
L0R_C_2 = csvread('L0N14_02_COPPERCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,1,[3,1,201,1]);
L0I_C_2 = csvread('L0N14_02_COPPERCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,2,[3,2,201,2]);

L1F_C_0 = csvread('L1N14_00_COPPERCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,0,[3,0,201,0]);
L1R_C_0 = csvread('L1N14_00_COPPERCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,1,[3,1,201,1]);
L1I_C_0 = csvread('L1N14_00_COPPERCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,2,[3,2,201,2]);
L1R_C_1 = csvread('L1N14_01_COPPERCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,1,[3,1,201,1]);
L1I_C_1 = csvread('L1N14_01_COPPERCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,2,[3,2,201,2]);
L1R_C_2 = csvread('L1N14_02_COPPERCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,1,[3,1,201,1]);
L1I_C_2 = csvread('L1N14_02_COPPERCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,2,[3,2,201,2]);

figure(1)
plot(L0F_C_0,L0R_C_0,L0F_C_0,L0R_C_1,L0F_C_0,L0R_C_2,L0F_C_0,L1R_C_0,L0F_C_0,L1R_C_1,L0F_C_0,L1R_C_2) 
hold on
legend('L0_0','L0_1','L0_2','L1_0','L1_1','L1_2')
title('Copper Wire N14 Real Extended Wirelength Interference')
xlabel('Frequency (Hz)')
ylabel('Ohms')
hold off

figure(2)
plot(L0F_C_0,L0I_C_0,L0F_C_0,L0I_C_1,L0F_C_0,L0I_C_2,L0F_C_0,L1I_C_0,L0F_C_0,L1I_C_1,L0F_C_0,L1I_C_2)
hold on
legend('L0_0','L0_1','L0_2','L1_0','L1_1','L1_2')
title('Copper Wire N14 Imaginary Extended Wirelength Interference')
xlabel('Frequency (Hz)')
ylabel('Reactance')
hold off

%% Knited Wire discuss the impact of extended wire

L0F_N_0 = csvread('L0N18_00_KNITCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,0,[3,0,201,0]);
L0R_N_0 = csvread('L0N18_00_KNITCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,1,[3,1,201,1]);
L0I_N_0 = csvread('L0N18_00_KNITCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,2,[3,2,201,2]);
L0R_N_1 = csvread('L0N18_01_KNITCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,1,[3,1,201,1]);
L0I_N_1 = csvread('L0N18_01_KNITCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,2,[3,2,201,2]);
L0R_N_2 = csvread('L0N18_02_KNITCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,1,[3,1,201,1]);
L0I_N_2 = csvread('L0N18_02_KNITCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,2,[3,2,201,2]);

L1F_N_0 = csvread('L1N18_00_KNITCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,0,[3,0,201,0]);
L1R_N_0 = csvread('L1N18_00_KNITCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,1,[3,1,201,1]);
L1I_N_0 = csvread('L1N18_00_KNITCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,2,[3,2,201,2]);
L1R_N_1 = csvread('L1N18_01_KNITCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,1,[3,1,201,1]);
L1I_N_1 = csvread('L1N18_01_KNITCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,2,[3,2,201,2]);
L1R_N_2 = csvread('L1N18_02_KNITCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,1,[3,1,201,1]);
L1I_N_2 = csvread('L1N18_02_KNITCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,2,[3,2,201,2]);

figure(3)
plot(L0F_N_0,L0R_N_0,L0F_N_0,L0R_N_1,L0F_N_0,L0R_N_2,L0F_N_0,L1R_N_0,L0F_N_0,L1R_N_1,L0F_N_0,L1R_N_2) 
hold on
legend('L0_0','L0_1','L0_2','L1_0','L1_1','L1_2')
title('Knitted Wire N18 Real Extended Wirelength Interference')
xlabel('Frequency (Hz)')
ylabel('Ohms')
hold off

figure(4)
plot(L0F_N_0,L0I_N_0,L0F_N_0,L0I_N_1,L0F_N_0,L0I_N_2,L0F_N_0,L1I_N_0,L0F_N_0,L1I_N_1,L0F_N_0,L1I_N_2)
hold on
legend('L0_0','L0_1','L0_2','L1_0','L1_1','L1_2')
title('Knitted Wire N18 Imaginary Extended Wirelength Interference')
xlabel('Frequency (Hz)')
ylabel('Reactance')
hold off

%% Knit wire new extension N18
L1F_N_0_1 = csvread('L1N18_00_KNITCONNECTION_LENGTHINTERFERENCE_01_9_24.CSV',3,0,[3,0,201,0]);
L1R_N_0_1 = csvread('L1N18_00_KNITCONNECTION_LENGTHINTERFERENCE_01_9_24.CSV',3,1,[3,1,201,1]);
L1I_N_0_1 = csvread('L1N18_00_KNITCONNECTION_LENGTHINTERFERENCE_01_9_24.CSV',3,2,[3,2,201,2]);
L1R_N_1_1 = csvread('L1N18_01_KNITCONNECTION_LENGTHINTERFERENCE_01_9_24.CSV',3,1,[3,1,201,1]);
L1I_N_1_1 = csvread('L1N18_01_KNITCONNECTION_LENGTHINTERFERENCE_01_9_24.CSV',3,2,[3,2,201,2]);
L1R_N_2_1 = csvread('L1N18_02_KNITCONNECTION_LENGTHINTERFERENCE_01_9_24.CSV',3,1,[3,1,201,1]);
L1I_N_2_1 = csvread('L1N18_02_KNITCONNECTION_LENGTHINTERFERENCE_01_9_24.CSV',3,2,[3,2,201,2]);

%Measured with Smith Real/Imaginary not R+jx
% figure(5)
% plot(L1F_N_0_1,L1R_N_0_1,L1F_N_0_1,L1R_N_1_1,L1F_N_0_1,L1R_N_2_1)
% hold on
% legend('L1-0-New','L1-1-New','L1-2-New')
% title('Knited Wire Real New extension')
% xlabel('Frequency (Hz)')
% ylabel('Ohms')
% hold off
% 
% figure(6)
% plot(L1F_N_0_1,L1I_N_0_1,L1F_N_0_1,L1I_N_1_1,L1F_N_0_1,L1I_N_2_1)
% hold on
% legend('L1-0-New','L1-1-New','L1-2-New')
% title('Knited Wire Imaginary New extension')
% xlabel('Frequency (Hz)')
% ylabel('Reactance')
% hold off

%Previous L1 data without the new extension 
% figure(7)
% plot(L1F_N_0,L1R_N_0,L1F_N_0,L1R_N_1,L1F_N_0,L1R_N_2) 
% legend('L1-0','L1-1','L1-2')
% title('Knited Wire Real')
% xlabel('Frequency (Hz)')
% ylabel('Ohms')
% 
% figure(8)
% plot(L1F_N_0,L1I_N_0,L1F_N_0,L1I_N_1,L1F_N_0,L1I_N_2)
% legend('L1-0','L1-1','L1-2')
% title('Knited Wire Imaginary')
% xlabel('Frequency (Hz)')
% ylabel('Reactanc')

%If extension works, this is the data of N18 (Verified)
L2F_N_0_1 = csvread('L2N18_00_KNITCONNECTION_LENGTHINTERFERENCE_01_9_28.CSV',3,0,[3,0,201,0]);
L2R_N_0_1 = csvread('L2N18_00_KNITCONNECTION_LENGTHINTERFERENCE_01_9_28.CSV',3,1,[3,1,201,1]);
L2I_N_0_1 = csvread('L2N18_00_KNITCONNECTION_LENGTHINTERFERENCE_01_9_28.CSV',3,2,[3,2,201,2]);
L2R_N_1_1 = csvread('L2N18_01_KNITCONNECTION_LENGTHINTERFERENCE_01_9_28.CSV',3,1,[3,1,201,1]);
L2I_N_1_1 = csvread('L2N18_01_KNITCONNECTION_LENGTHINTERFERENCE_01_9_28.CSV',3,2,[3,2,201,2]);
L2R_N_2_1 = csvread('L2N18_02_KNITCONNECTION_LENGTHINTERFERENCE_01_9_28.CSV',3,1,[3,1,201,1]);
L2I_N_2_1 = csvread('L2N18_02_KNITCONNECTION_LENGTHINTERFERENCE_01_9_28.CSV',3,2,[3,2,201,2]);

figure(9)
plot(L2F_N_0_1,L2R_N_0_1,L2F_N_0_1,L2R_N_1_1,L2F_N_0_1,L2R_N_2_1)
hold on
legend('L2-0-New','L2-1-New','L2-2-New')
title('Knitted Wire N18 Real Final')
xlabel('Frequency (Hz)')
ylabel('Ohms')
hold off

figure(10)
plot(L2F_N_0_1,L2I_N_0_1,L2F_N_0_1,L2I_N_1_1,L2F_N_0_1,L2I_N_2_1)
hold on
legend('L2-0-New','L2-1-New','L2-2-New')
title('Knitted Wire N18 Imaginary Final')
xlabel('Frequency (Hz)')
ylabel('Reactance')
hold off

%% N14 Knitted wire new extension 

%N14 with new extension

L2F_N14K_0_1 = csvread('L2N14_00_KNITCONNECTION_01_9_28.CSV',3,0,[3,0,201,0]);
L2R_N14K_0_1 = csvread('L2N14_00_KNITCONNECTION_01_9_28.CSV',3,1,[3,1,201,1]);
L2I_N14K_0_1 = csvread('L2N14_00_KNITCONNECTION_01_9_28.CSV',3,2,[3,2,201,2]);
L2R_N14K_1_1 = csvread('L2N14_01_KNITCONNECTION_01_9_28.CSV',3,1,[3,1,201,1]);
L2I_N14K_1_1 = csvread('L2N14_01_KNITCONNECTION_01_9_28.CSV',3,2,[3,2,201,2]);
L2R_N14K_2_1 = csvread('L2N14_02_KNITCONNECTION_01_9_28.CSV',3,1,[3,1,201,1]);
L2I_N14K_2_1 = csvread('L2N14_02_KNITCONNECTION_01_9_28.CSV',3,2,[3,2,201,2]);

% figure(11)
% plot(L2F_N14K_0_1,L2R_N14K_0_1,L2F_N14K_0_1,L2R_N14K_1_1,L2F_N14K_0_1,L2R_N14K_2_1)
% hold on
% legend('L2-0-New','L2-1-New','L2-2-New')
% title('Knited Wire N14 Real New extension')
% xlabel('Frequency (Hz)')
% ylabel('Ohms')
% hold off

% figure(12)
% plot(L2F_N14K_0_1,L2I_N14K_0_1,L2F_N14K_0_1,L2I_N14K_1_1,L2F_N14K_0_1,L2I_N14K_2_1)
% hold on
% legend('L2-0-New','L2-1-New','L2-2-New')
% title('Knited Wire N14 Imaginary New extension')
% xlabel('Frequency (Hz)')
% ylabel('Reactance')
% hold off

%Comparison N14 without extension to verify if the new extension works
L2F_N14K_0 = csvread('L2N14_00_KNITCONNECTION_9_28.CSV',3,0,[3,0,201,0]);
L2R_N14K_0 = csvread('L2N14_00_KNITCONNECTION_9_28.CSV',3,1,[3,1,201,1]);
L2I_N14K_0 = csvread('L2N14_00_KNITCONNECTION_9_28.CSV',3,2,[3,2,201,2]);
L2R_N14K_1 = csvread('L2N14_01_KNITCONNECTION_9_28.CSV',3,1,[3,1,201,1]);
L2I_N14K_1 = csvread('L2N14_01_KNITCONNECTION_9_28.CSV',3,2,[3,2,201,2]);
L2R_N14K_2 = csvread('L2N14_02_KNITCONNECTION_9_28.CSV',3,1,[3,1,201,1]);
L2I_N14K_2 = csvread('L2N14_02_KNITCONNECTION_9_28.CSV',3,2,[3,2,201,2]);
L2R_N14K_3 = csvread('L2N14_03_KNITCONNECTION_9_28.CSV',3,1,[3,1,201,1]);
L2I_N14K_3 = csvread('L2N14_03_KNITCONNECTION_9_28.CSV',3,2,[3,2,201,2]);

figure(13)
plot(L2F_N14K_0_1,L2R_N14K_0_1,L2F_N14K_0_1,L2R_N14K_1_1,L2F_N14K_0_1,L2R_N14K_2_1,L2F_N14K_0,L2R_N14K_0,L2F_N14K_0,L2R_N14K_1,L2F_N14K_0,L2R_N14K_2,L2F_N14K_0,L2R_N14K_3)
hold on
legend('L2-0-New','L2-1-New','L2-2-New','L2-0','L2-1','L2-2','L2-3')
title('Knitted Wire N14 Real Comparison L2')
xlabel('Frequency (Hz)')
ylabel('Ohms')
hold off

figure(14)
plot(L2F_N14K_0_1,L2I_N14K_0_1,L2F_N14K_0_1,L2I_N14K_1_1,L2F_N14K_0_1,L2I_N14K_2_1,L2F_N14K_0,L2I_N14K_0,L2F_N14K_0,L2I_N14K_1,L2F_N14K_0,L2I_N14K_2,L2F_N14K_0,L2I_N14K_3)
hold on
legend('L2-0-New','L2-1-New','L2-2-New','L2-0','L2-1','L2-2','L2-3')
title('Knitted Wire N14 Imaginary Comparison L2')
xlabel('Frequency (Hz)')
ylabel('Reactance')
hold off

%N14 second verification shorter length
%without extension
L3F_N14K_0 = csvread('L3N14_00_KNITCONNECTION_9_28.CSV',3,0,[3,0,201,0]);
L3R_N14K_0 = csvread('L3N14_00_KNITCONNECTION_9_28.CSV',3,1,[3,1,201,1]);
L3I_N14K_0 = csvread('L3N14_00_KNITCONNECTION_9_28.CSV',3,2,[3,2,201,2]);
L3R_N14K_1 = csvread('L3N14_01_KNITCONNECTION_9_28.CSV',3,1,[3,1,201,1]);
L3I_N14K_1 = csvread('L3N14_01_KNITCONNECTION_9_28.CSV',3,2,[3,2,201,2]);
L3R_N14K_2 = csvread('L3N14_02_KNITCONNECTION_9_28.CSV',3,1,[3,1,201,1]);
L3I_N14K_2 = csvread('L3N14_02_KNITCONNECTION_9_28.CSV',3,2,[3,2,201,2]);


%with extension
L3F_N14K_0_1 = csvread('L3N14_00_KNITCONNECTION_01_9_28.CSV',3,0,[3,0,201,0]);
L3R_N14K_0_1 = csvread('L3N14_00_KNITCONNECTION_01_9_28.CSV',3,1,[3,1,201,1]);
L3I_N14K_0_1 = csvread('L3N14_00_KNITCONNECTION_01_9_28.CSV',3,2,[3,2,201,2]);
L3R_N14K_1_1 = csvread('L3N14_01_KNITCONNECTION_01_9_28.CSV',3,1,[3,1,201,1]);
L3I_N14K_1_1 = csvread('L3N14_01_KNITCONNECTION_01_9_28.CSV',3,2,[3,2,201,2]);
L3R_N14K_2_1 = csvread('L3N14_02_KNITCONNECTION_01_9_28.CSV',3,1,[3,1,201,1]);
L3I_N14K_2_1 = csvread('L3N14_02_KNITCONNECTION_01_9_28.CSV',3,2,[3,2,201,2]);

figure(15)
plot(L3F_N14K_0_1,L3R_N14K_0_1,L3F_N14K_0_1,L3R_N14K_1_1,L3F_N14K_0_1,L3R_N14K_2_1,L3F_N14K_0,L3R_N14K_0,L3F_N14K_0,L3R_N14K_1,L3F_N14K_0,L3R_N14K_2)
hold on
legend('L3-0-New','L3-1-New','L3-2-New','L3-0','L3-1','L3-2')
title('Knitted Wire N14 Real Comparison L3')
xlabel('Frequency (Hz)')
ylabel('Ohms')
hold off

figure(16)
plot(L3F_N14K_0_1,L3I_N14K_0_1,L3F_N14K_0_1,L3I_N14K_1_1,L3F_N14K_0_1,L3I_N14K_2_1,L3F_N14K_0,L3I_N14K_0,L3F_N14K_0,L3I_N14K_1,L3F_N14K_0,L3I_N14K_2)
hold on
legend('L3-0-New','L3-1-New','L3-2-New','L3-0','L3-1','L3-2')
title('Knitted Wire N14 Imaginary Comparison L3')
xlabel('Frequency (Hz)')
ylabel('Reactance')
hold off

%% Comparison of Knitted N14 and N18 Real Data
L4F_N14K_0_1 = csvread('L4N14_00_KNITCONNECTION_01_9_28.CSV',3,0,[3,0,201,0]);
L4R_N14K_0_1 = csvread('L4N14_00_KNITCONNECTION_01_9_28.CSV',3,1,[3,1,201,1]);
L4I_N14K_0_1 = csvread('L4N14_00_KNITCONNECTION_01_9_28.CSV',3,2,[3,2,201,2]);
L4R_N14K_1_1 = csvread('L4N14_01_KNITCONNECTION_01_9_28.CSV',3,1,[3,1,201,1]);
L4I_N14K_1_1 = csvread('L4N14_01_KNITCONNECTION_01_9_28.CSV',3,2,[3,2,201,2]);
L4R_N14K_2_1 = csvread('L4N14_02_KNITCONNECTION_01_9_28.CSV',3,1,[3,1,201,1]);
L4I_N14K_2_1 = csvread('L4N14_02_KNITCONNECTION_01_9_28.CSV',3,2,[3,2,201,2]);

figure(17)
plot(L2F_N_0_1,L2R_N_0_1,L2F_N_0_1,L2R_N_1_1,L2F_N_0_1,L2R_N_2_1,L4F_N14K_0_1,L4R_N14K_0_1,L4F_N14K_0_1,L4R_N14K_1_1,L4F_N14K_0_1,L4R_N14K_2_1)
hold on
legend('N18-0','N18-1','N18-2','N14-0','N14-1','N14-2')
title('Comparison of Knitted N14 and N18 Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
hold off

figure(18)
plot(L2F_N_0_1,L2I_N_0_1,L2F_N_0_1,L2I_N_1_1,L2F_N_0_1,L2I_N_2_1,L4F_N14K_0_1,L4I_N14K_0_1,L4F_N14K_0_1,L4I_N14K_1_1,L4F_N14K_0_1,L4I_N14K_2_1)
hold on
legend('N18-0','N18-1','N18-2','N14-0','N14-1','N14-2')
title('Comparison of Knitted N14 and N18 Imaginary')
xlabel('Frequency (Hz)')
ylabel('Reactance')
hold off