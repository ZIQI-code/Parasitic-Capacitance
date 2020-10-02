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

figure(3)
plot(L1F_N18C_0_1,L1R_N18C_0_1,L1F_N18C_0_1,L1R_N18C_1_1,L1F_N18C_0_1,L1R_N18C_2_1)
hold on 
plot(L2F_N18K_0_1,L2R_N18K_0_1,L2F_N18K_0_1,L2R_N18K_1_1,L2F_N18K_0_1,L2R_N18K_2_1)
legend('N18C-0','N18C-1','N18C-2','N18K-0','N18K-1','N18K-2')
title('Copper Wire and Knitted Wire N18 Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(4)
plot(L1F_N18C_0_1,L1I_N18C_0_1,L1F_N18C_0_1,L1I_N18C_1_1,L1F_N18C_0_1,L1I_N18C_2_1)
hold on 
plot(L2F_N18K_0_1,L2I_N18K_0_1,L2F_N18K_0_1,L2I_N18K_1_1,L2F_N18K_0_1,L2I_N18K_2_1)
legend('N18C-0','N18C-1','N18C-2','N18K-0','N18K-1','N18K-2')
title('Copper Wire and Knitted Wire N18 Imaginary')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

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
ylabel('Ohms')((pi*0.22*0.22)*(18*18)*4*pi*10^-7)/19.8
grid on
hold off

figure(6)
plot(L1F_N18C_0_1,L1I_N18C_0_1,L1F_N18C_0_1,L1I_N18C_1_1,L1F_N18C_0_1,L1I_N18C_2_1)
hold on
plot(L0F_N18N_0_2,L0I_N18N_0_2,L0F_N18N_0_2,L0I_N18N_1_2,L0F_N18N_0_2,L0I_N18N_2_2)
