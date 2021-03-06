%%state 1
%%Study the copper wire
%% Copper wire extension study
L0F_N18C_0 = csvread('L0N18_00_COPPER_10_1.CSV',3,0,[3,0,201,0]);
L0R_N18C_0 = csvread('L0N18_00_COPPER_10_1.CSV',3,1,[3,1,201,1]);
L0I_N18C_0 = csvread('L0N18_00_COPPER_10_1.CSV',3,2,[3,2,201,2]);
L0R_N18C_1 = csvread('L0N18_01_COPPER_10_1.CSV',3,1,[3,1,201,1]);
L0I_N18C_1 = csvread('L0N18_01_COPPER_10_1.CSV',3,2,[3,2,201,2]);
L0R_N18C_2 = csvread('L0N18_02_COPPER_10_1.CSV',3,1,[3,1,201,1]);
L0I_N18C_2 = csvread('L0N18_02_COPPER_10_1.CSV',3,2,[3,2,201,2]);

L0F_N18C_0_1 = csvread('L0N18_00_COPPER_01_10_1.CSV',3,0,[3,0,201,0]);
L0R_N18C_0_1 = csvread('L0N18_00_COPPER_01_10_1.CSV',3,1,[3,1,201,1]);
L0I_N18C_0_1 = csvread('L0N18_00_COPPER_01_10_1.CSV',3,2,[3,2,201,2]);
L0R_N18C_1_1 = csvread('L0N18_01_COPPER_01_10_1.CSV',3,1,[3,1,201,1]);
L0I_N18C_1_1 = csvread('L0N18_01_COPPER_01_10_1.CSV',3,2,[3,2,201,2]);
L0R_N18C_2_1 = csvread('L0N18_02_COPPER_01_10_1.CSV',3,1,[3,1,201,1]);
L0I_N18C_2_1 = csvread('L0N18_02_COPPER_01_10_1.CSV',3,2,[3,2,201,2]);

figure(1)
plot(L0F_N18C_0,L0R_N18C_0,L0F_N18C_0,L0R_N18C_1,L0F_N18C_0,L0R_N18C_2) 
hold on
plot(L0F_N18C_0_1,L0R_N18C_0_1,L0F_N18C_0_1,L0R_N18C_1_1,L0F_N18C_0_1,L0R_N18C_2_1,'LineWidth',2) 
legend('N18C-0','N18C-1','N18C-2','N18C-0-E','N18C-1-E','N18C-2-E')
title('Copper Wire N18 Real Extension comparison')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(2)
plot(L0F_N18C_0,L0I_N18C_0,L0F_N18C_0,L0I_N18C_1,L0F_N18C_0,L0I_N18C_2) 
hold on
plot(L0F_N18C_0_1,L0I_N18C_0_1,L0F_N18C_0_1,L0I_N18C_1_1,L0F_N18C_0_1,L0I_N18C_2_1,'LineWidth',2) 
legend('N18C-0','N18C-1','N18C-2','N18C-0-E','N18C-1-E','N18C-2-E')
title('Copper Wire N18 Imaginary Extension comparison')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

%Verified that the extension works for copper wire. 
%% Study the exisistance of parasitic capacitance by comparing copper and knitted wires

L1F_N18C_0_1 = csvread('L1N18_00_COPPER_01_10_1.CSV',3,0,[3,0,201,0]);
L1R_N18C_0_1 = csvread('L1N18_00_COPPER_01_10_1.CSV',3,1,[3,1,201,1]);
L1I_N18C_0_1 = csvread('L1N18_00_COPPER_01_10_1.CSV',3,2,[3,2,201,2]);
L1R_N18C_1_1 = csvread('L1N18_01_COPPER_01_10_1.CSV',3,1,[3,1,201,1]);
L1I_N18C_1_1 = csvread('L1N18_01_COPPER_01_10_1.CSV',3,2,[3,2,201,2]);
L1R_N18C_2_1 = csvread('L1N18_02_COPPER_01_10_1.CSV',3,1,[3,1,201,1]);
L1I_N18C_2_1 = csvread('L1N18_02_COPPER_01_10_1.CSV',3,2,[3,2,201,2]);

L2F_N18K_0_1 = csvread('L2N18_00_KNITCONNECTION_LENGTHINTERFERENCE_01_9_28.CSV',3,0,[3,0,201,0]);
L2R_N18K_0_1 = csvread('L2N18_00_KNITCONNECTION_LENGTHINTERFERENCE_01_9_28.CSV',3,1,[3,1,201,1]);
L2I_N18K_0_1 = csvread('L2N18_00_KNITCONNECTION_LENGTHINTERFERENCE_01_9_28.CSV',3,2,[3,2,201,2]);
L2R_N18K_1_1 = csvread('L2N18_01_KNITCONNECTION_LENGTHINTERFERENCE_01_9_28.CSV',3,1,[3,1,201,1]);
L2I_N18K_1_1 = csvread('L2N18_01_KNITCONNECTION_LENGTHINTERFERENCE_01_9_28.CSV',3,2,[3,2,201,2]);
L2R_N18K_2_1 = csvread('L2N18_02_KNITCONNECTION_LENGTHINTERFERENCE_01_9_28.CSV',3,1,[3,1,201,1]);
L2I_N18K_2_1 = csvread('L2N18_02_KNITCONNECTION_LENGTHINTERFERENCE_01_9_28.CSV',3,2,[3,2,201,2]);

% figure(3)
% plot(L1F_N18C_0_1,L1R_N18C_0_1,L1F_N18C_0_1,L1R_N18C_1_1,L1F_N18C_0_1,L1R_N18C_2_1)
% hold on 
% plot(L2F_N18K_0_1,L2R_N18K_0_1,L2F_N18K_0_1,L2R_N18K_1_1,L2F_N18K_0_1,L2R_N18K_2_1)
% legend('N18C-0','N18C-1','N18C-2','N18K-0','N18K-1','N18K-2')
% title('Copper Wire and Knitted Wire N18 Real')
% xlabel('Frequency (Hz)')
% ylabel('Ohms')
% grid on
% hold off
% 
% figure(4)
% plot(L1F_N18C_0_1,L1I_N18C_0_1,L1F_N18C_0_1,L1I_N18C_1_1,L1F_N18C_0_1,L1I_N18C_2_1)
% hold on 
% plot(L2F_N18K_0_1,L2I_N18K_0_1,L2F_N18K_0_1,L2I_N18K_1_1,L2F_N18K_0_1,L2I_N18K_2_1)
% legend('N18C-0','N18C-1','N18C-2','N18K-0','N18K-1','N18K-2')
% title('Copper Wire and Knitted Wire N18 Imaginary')
% xlabel('Frequency (Hz)')
% ylabel('Reactance')
% grid on
% hold off

%% Study of N18 knitted wire and copper wire with the same diameter
L0F_N18N_0_2 = csvread('L0N18_00_0.43KNIT_01_10_1.CSV',3,0,[3,0,201,0]);
L0R_N18N_0_2 = csvread('L0N18_00_0.43KNIT_01_10_1.CSV',3,1,[3,1,201,1]);
L0I_N18N_0_2 = csvread('L0N18_00_0.43KNIT_01_10_1.CSV',3,2,[3,2,201,2]);
L0R_N18N_1_2 = csvread('L0N18_01_0.43KNIT_01_10_1.CSV',3,1,[3,1,201,1]);
L0I_N18N_1_2 = csvread('L0N18_01_0.43KNIT_01_10_1.CSV',3,2,[3,2,201,2]);
L0R_N18N_2_2 = csvread('L0N18_02_0.43KNIT_01_10_1.CSV',3,1,[3,1,201,1]);
L0I_N18N_2_2 = csvread('L0N18_02_0.43KNIT_01_10_1.CSV',3,2,[3,2,201,2]);

figure(5)
plot(L1F_N18C_0_1,L1R_N18C_0_1,L1F_N18C_0_1,L1R_N18C_1_1,L1F_N18C_0_1,L1R_N18C_2_1)
hold on
plot(L0F_N18N_0_2,L0R_N18N_0_2,L0F_N18N_0_2,L0R_N18N_1_2,L0F_N18N_0_2,L0R_N18N_2_2)
legend('N18C-0','N18C-1','N18C-2','N18K-0','N18K-1','N18K-2')
title('Copper Wire and Knitted Wire N18 Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(6)
plot(L1F_N18C_0_1,L1I_N18C_0_1,L1F_N18C_0_1,L1I_N18C_1_1,L1F_N18C_0_1,L1I_N18C_2_1)
hold on
plot(L0F_N18N_0_2,L0I_N18N_0_2,L0F_N18N_0_2,L0I_N18N_1_2,L0F_N18N_0_2,L0I_N18N_2_2)
legend('N18C-0','N18C-1','N18C-2','N18K-0','N18K-1','N18K-2')
title('Copper Wire and Knitted Wire N18 Imaginary')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off
%% Study of golden Knitted Wire
L0F_N18GN_0 = csvread('L0N18_00_GKNIT_01_10_8.CSV',3,0,[3,0,201,0]);
L0R_N18GN_0 = csvread('L0N18_00_GKNIT_01_10_8.CSV',3,1,[3,1,201,1]);
L0I_N18GN_0 = csvread('L0N18_00_GKNIT_01_10_8.CSV',3,2,[3,2,201,2]);
L0R_N18GN_1 = csvread('L0N18_01_GKNIT_01_10_8.CSV',3,1,[3,1,201,1]);
L0I_N18GN_1 = csvread('L0N18_01_GKNIT_01_10_8.CSV',3,2,[3,2,201,2]);
L0R_N18GN_2 = csvread('L0N18_02_GKNIT_01_10_8.CSV',3,1,[3,1,201,1]);
L0I_N18GN_2 = csvread('L0N18_02_GKNIT_01_10_8.CSV',3,2,[3,2,201,2]);

figure(7)
plot(L0F_N18GN_0,L0R_N18GN_0,L0F_N18GN_0,L0R_N18GN_1,L0F_N18GN_0,L0R_N18GN_2)
hold on
legend('N18GN_0','N18GN_1','N18GN_2')
title('Golden Knitted Wire N18 Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(8)
plot(L0F_N18GN_0,L0I_N18GN_0,L0F_N18GN_0,L0I_N18GN_1,L0F_N18GN_0,L0I_N18GN_2)
hold on
legend('N18GN_0','N18GN_1','N18GN_2')
title('Golden Knitted Wire Imaginary')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off
% 
%% 
R = 36.82;
L = 4.96e-6;
S = 2.415e-12;
w = 4.32e7 * 2* pi;
solve((L^2 *S*w^2 * (x^2 * R^2 * w^2 + 1))-L*(x^2 * R^2 * w^2 + 2*x*R^2 *S*w^2 + 1)+R^2 *(x+S)==0,x)
x

%% 
L1F_C_0 = csvread('L1N14_00_COPPERCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,0,[3,0,201,0]);
L1R_C_0 = csvread('L1N14_00_COPPERCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,1,[3,1,201,1]);
L1I_C_0 = csvread('L1N14_00_COPPERCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,2,[3,2,201,2]);
L1R_C_1 = csvread('L1N14_01_COPPERCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,1,[3,1,201,1]);
L1I_C_1 = csvread('L1N14_01_COPPERCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,2,[3,2,201,2]);
L1R_C_2 = csvread('L1N14_02_COPPERCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,1,[3,1,201,1]);
L1I_C_2 = csvread('L1N14_02_COPPERCONNECTION_LENGTHINTERFERENCE_9_24.CSV',3,2,[3,2,201,2]);

L0F_N18C_0_1 = csvread('L0N18_00_COPPER_01_10_1.CSV',3,0,[3,0,201,0]);
L0R_N18C_0_1 = csvread('L0N18_00_COPPER_01_10_1.CSV',3,1,[3,1,201,1]);
L0I_N18C_0_1 = csvread('L0N18_00_COPPER_01_10_1.CSV',3,2,[3,2,201,2]);
L0R_N18C_1_1 = csvread('L0N18_01_COPPER_01_10_1.CSV',3,1,[3,1,201,1]);
L0I_N18C_1_1 = csvread('L0N18_01_COPPER_01_10_1.CSV',3,2,[3,2,201,2]);
L0R_N18C_2_1 = csvread('L0N18_02_COPPER_01_10_1.CSV',3,1,[3,1,201,1]);
L0I_N18C_2_1 = csvread('L0N18_02_COPPER_01_10_1.CSV',3,2,[3,2,201,2]);

figure(1)
plot(L1F_C_0,L1R_C_0,L1F_C_0,L1R_C_1,L1F_C_0,L1R_C_2) 
hold on
plot(L0F_N18C_0_1,L0R_N18C_0_1,L0F_N18C_0_1,L0R_N18C_1_1,L0F_N18C_0_1,L0R_N18C_2_1,'LineWidth',2) 
legend('N14C-0','N14C-1','N14C-2','N18C-0','N18C-1','N18C-2')
title('Copper Wire N14 N18 Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(2)
plot(L1F_C_0,L1I_C_0,L1F_C_0,L1I_C_1,L1F_C_0,L1I_C_2)
hold on
plot(L0F_N18C_0_1,L0I_N18C_0_1,L0F_N18C_0_1,L0I_N18C_1_1,L0F_N18C_0_1,L0I_N18C_2_1,'LineWidth',2) 
legend('N14C-0','N14C-1','N14C-2','N18C-0','N18C-1','N18C-2')
title('Copper Wire N14 N18 Imaginary ')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off
