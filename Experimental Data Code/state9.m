%% 
C_F_N20_32_00 = csvread('N20_0.32C_04.CSV',3,0,[3,0,802,0]);
C_R_N20_32_00 = csvread('N20_0.32C_04.CSV',3,1,[3,1,802,1]);
C_I_N20_32_00 = csvread('N20_0.32C_04.CSV',3,2,[3,2,802,2]);
C_R_N20_32_01 = csvread('N20_0.32C_05.CSV',3,1,[3,1,802,1]);
C_I_N20_32_01 = csvread('N20_0.32C_05.CSV',3,2,[3,2,802,2]);
C_R_N20_32_02 = csvread('N20_0.32C_06.CSV',3,1,[3,1,802,1]);
C_I_N20_32_02 = csvread('N20_0.32C_06.CSV',3,2,[3,2,802,2]);

C_R_N20_32_A=zeros(800:1);
C_I_N20_32_A=zeros(800:1);
for i=1:800
    C_R_N20_32_A(i)= (C_R_N20_32_00(i)+C_R_N20_32_01(i)+C_R_N20_32_02(i))./3;
    C_I_N20_32_A(i)= (C_I_N20_32_00(i)+C_I_N20_32_01(i)+C_I_N20_32_02(i))./3;
end

C_F_N18_32_00 = csvread('N18_0.32C_04.CSV',3,0,[3,0,802,0]);
C_R_N18_32_00 = csvread('N18_0.32C_04.CSV',3,1,[3,1,802,1]);
C_I_N18_32_00 = csvread('N18_0.32C_04.CSV',3,2,[3,2,802,2]);
C_R_N18_32_01 = csvread('N18_0.32C_05.CSV',3,1,[3,1,802,1]);
C_I_N18_32_01 = csvread('N18_0.32C_05.CSV',3,2,[3,2,802,2]);
C_R_N18_32_02 = csvread('N18_0.32C_06.CSV',3,1,[3,1,802,1]);
C_I_N18_32_02 = csvread('N18_0.32C_06.CSV',3,2,[3,2,802,2]);

C_R_N18_32_A=zeros(800:1);
C_I_N18_32_A=zeros(800:1);
for i=1:800
    C_R_N18_32_A(i)= (C_R_N18_32_00(i)+C_R_N18_32_01(i)+C_R_N18_32_02(i))./3;
    C_I_N18_32_A(i)= (C_I_N18_32_00(i)+C_I_N18_32_01(i)+C_I_N18_32_02(i))./3;
end

C_F_N16_32_00 = csvread('N16_0.32C_04.CSV',3,0,[3,0,802,0]);
C_R_N16_32_00 = csvread('N16_0.32C_04.CSV',3,1,[3,1,802,1]);
C_I_N16_32_00 = csvread('N16_0.32C_04.CSV',3,2,[3,2,802,2]);
C_R_N16_32_01 = csvread('N16_0.32C_05.CSV',3,1,[3,1,802,1]);
C_I_N16_32_01 = csvread('N16_0.32C_05.CSV',3,2,[3,2,802,2]);
C_R_N16_32_02 = csvread('N16_0.32C_06.CSV',3,1,[3,1,802,1]);
C_I_N16_32_02 = csvread('N16_0.32C_06.CSV',3,2,[3,2,802,2]);

C_R_N16_32_A=zeros(800:1);
C_I_N16_32_A=zeros(800:1);
for i=1:800
    C_R_N16_32_A(i)= (C_R_N16_32_00(i)+C_R_N16_32_01(i)+C_R_N16_32_02(i))./3;
    C_I_N16_32_A(i)= (C_I_N16_32_00(i)+C_I_N16_32_01(i)+C_I_N16_32_02(i))./3;
end


C_F_N14_32_00 = csvread('N14_0.32C_04.CSV',3,0,[3,0,802,0]);
C_R_N14_32_00 = csvread('N14_0.32C_04.CSV',3,1,[3,1,802,1]);
C_I_N14_32_00 = csvread('N14_0.32C_04.CSV',3,2,[3,2,802,2]);
C_R_N14_32_01 = csvread('N14_0.32C_05.CSV',3,1,[3,1,802,1]);
C_I_N14_32_01 = csvread('N14_0.32C_05.CSV',3,2,[3,2,802,2]);
C_R_N14_32_02 = csvread('N14_0.32C_06.CSV',3,1,[3,1,802,1]);
C_I_N14_32_02 = csvread('N14_0.32C_06.CSV',3,2,[3,2,802,2]);

C_R_N14_32_A=zeros(800:1);
C_I_N14_32_A=zeros(800:1);
for i=1:800
    C_R_N14_32_A(i)= (C_R_N14_32_00(i)+C_R_N14_32_01(i)+C_R_N14_32_02(i))./3;
    C_I_N14_32_A(i)= (C_I_N14_32_00(i)+C_I_N14_32_01(i)+C_I_N14_32_02(i))./3;
end

C_F_N12_32_00 = csvread('N12_0.32C_04.CSV',3,0,[3,0,802,0]);
C_R_N12_32_00 = csvread('N12_0.32C_04.CSV',3,1,[3,1,802,1]);
C_I_N12_32_00 = csvread('N12_0.32C_04.CSV',3,2,[3,2,802,2]);
C_R_N12_32_01 = csvread('N12_0.32C_05.CSV',3,1,[3,1,802,1]);
C_I_N12_32_01 = csvread('N12_0.32C_05.CSV',3,2,[3,2,802,2]);
C_R_N12_32_02 = csvread('N12_0.32C_06.CSV',3,1,[3,1,802,1]);
C_I_N12_32_02 = csvread('N12_0.32C_06.CSV',3,2,[3,2,802,2]);

C_R_N12_32_A=zeros(800:1);
C_I_N12_32_A=zeros(800:1);
for i=1:800
    C_R_N12_32_A(i)= (C_R_N12_32_00(i)+C_R_N12_32_01(i)+C_R_N12_32_02(i))./3;
    C_I_N12_32_A(i)= (C_I_N12_32_00(i)+C_I_N12_32_01(i)+C_I_N12_32_02(i))./3;
end

C_F_N10_32_00 = csvread('N10_0.32C_04.CSV',3,0,[3,0,802,0]);
C_R_N10_32_00 = csvread('N10_0.32C_04.CSV',3,1,[3,1,802,1]);
C_I_N10_32_00 = csvread('N10_0.32C_04.CSV',3,2,[3,2,802,2]);
C_R_N10_32_01 = csvread('N10_0.32C_05.CSV',3,1,[3,1,802,1]);
C_I_N10_32_01 = csvread('N10_0.32C_05.CSV',3,2,[3,2,802,2]);
C_R_N10_32_02 = csvread('N10_0.32C_06.CSV',3,1,[3,1,802,1]);
C_I_N10_32_02 = csvread('N10_0.32C_06.CSV',3,2,[3,2,802,2]);

C_R_N10_32_A=zeros(800:1);
C_I_N10_32_A=zeros(800:1);
for i=1:800
    C_R_N10_32_A(i)= (C_R_N10_32_00(i)+C_R_N10_32_01(i)+C_R_N10_32_02(i))./3;
    C_I_N10_32_A(i)= (C_I_N10_32_00(i)+C_I_N10_32_01(i)+C_I_N10_32_02(i))./3;
end

C_F_N8_32_00 = csvread('N8_0.32C_04.CSV',3,0,[3,0,802,0]);
C_R_N8_32_00 = csvread('N8_0.32C_04.CSV',3,1,[3,1,802,1]);
C_I_N8_32_00 = csvread('N8_0.32C_04.CSV',3,2,[3,2,802,2]);
C_R_N8_32_01 = csvread('N8_0.32C_05.CSV',3,1,[3,1,802,1]);
C_I_N8_32_01 = csvread('N8_0.32C_05.CSV',3,2,[3,2,802,2]);
C_R_N8_32_02 = csvread('N8_0.32C_06.CSV',3,1,[3,1,802,1]);
C_I_N8_32_02 = csvread('N8_0.32C_06.CSV',3,2,[3,2,802,2]);
 
C_R_N8_32_A=zeros(800:1);
C_I_N8_32_A=zeros(800:1);
for i=1:800
     C_R_N8_32_A(i)= (C_R_N8_32_00(i)+C_R_N8_32_01(i)+C_R_N8_32_02(i))./3;
     C_I_N8_32_A(i)= (C_I_N8_32_00(i)+C_I_N8_32_01(i)+C_I_N8_32_02(i))./3;
end

x = [8,10,12,14,16,18,20];
L_C_32_0 = flip([C_I_N20_32_00(1),C_I_N18_32_00(1),C_I_N16_32_00(1),C_I_N14_32_00(1),C_I_N12_32_00(1),C_I_N10_32_00(1),C_I_N8_32_00(1)]./(1e5*(2*pi)));
L_C_32_1 = flip([C_I_N20_32_01(1),C_I_N18_32_01(1),C_I_N16_32_01(1),C_I_N14_32_01(1),C_I_N12_32_01(1),C_I_N10_32_01(1),C_I_N8_32_01(1)]./(1e5*(2*pi)));
L_C_32_2 = flip([C_I_N20_32_02(1),C_I_N18_32_02(1),C_I_N16_32_02(1),C_I_N14_32_02(1),C_I_N12_32_02(1),C_I_N10_32_02(1),C_I_N8_32_02(1)]./(1e5*(2*pi)));
L_C_32_A = flip([C_I_N20_32_A(1),C_I_N18_32_A(1),C_I_N16_32_A(1),C_I_N14_32_A(1),C_I_N12_32_A(1),C_I_N10_32_A(1),C_I_N8_32_A(1)]./(1e5*(2*pi)));
figure(1)
plot(x,L_C_32_0,x,L_C_32_1,x,L_C_32_2)
grid on
title('Inductance C_32')
legend('1','2','3')

figure(2)
plot(x,L_C_32_A)
grid on
title('Average Inductance C_32')

figure(3)
plot(C_F_N20_32_00,C_R_N20_32_00,C_F_N20_32_00,C_R_N20_32_01,C_F_N20_32_00,C_R_N20_32_02)
hold on
plot(C_F_N18_32_00,C_R_N18_32_00,C_F_N18_32_00,C_R_N18_32_01,C_F_N18_32_00,C_R_N18_32_02)
plot(C_F_N16_32_00,C_R_N16_32_00,C_F_N16_32_00,C_R_N16_32_01,C_F_N16_32_00,C_R_N16_32_02)
plot(C_F_N14_32_00,C_R_N14_32_00,C_F_N14_32_00,C_R_N14_32_01,C_F_N14_32_00,C_R_N14_32_02)
plot(C_F_N12_32_00,C_R_N12_32_00,C_F_N12_32_00,C_R_N12_32_01,C_F_N12_32_00,C_R_N12_32_02)
plot(C_F_N10_32_00,C_R_N10_32_00,C_F_N10_32_00,C_R_N10_32_01,C_F_N10_32_00,C_R_N10_32_02)
plot(C_F_N8_32_00,C_R_N8_32_00,C_F_N8_32_00,C_R_N8_32_01,C_F_N8_32_00,C_R_N8_32_02)
legend('N20-1','N20-2','N20-3','N18-1','N18-2','N18-3','N16-1','N16-2','N16-3','N14-1','N14-2','N14-3','N12-1','N12-2','N12-3','N10-1','N10-2','N10-3','N8-1','N8-2','N8-3')
title('Copper 0.32mm Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(4)
plot(C_F_N20_32_00,C_I_N20_32_00,C_F_N20_32_00,C_I_N20_32_01,C_F_N20_32_00,C_I_N20_32_02)
hold on
plot(C_F_N18_32_00,C_I_N18_32_00,C_F_N18_32_00,C_I_N18_32_01,C_F_N18_32_00,C_I_N18_32_02)
plot(C_F_N16_32_00,C_I_N16_32_00,C_F_N16_32_00,C_I_N16_32_01,C_F_N16_32_00,C_I_N16_32_02)
plot(C_F_N14_32_00,C_I_N14_32_00,C_F_N14_32_00,C_I_N14_32_01,C_F_N14_32_00,C_I_N14_32_02)
plot(C_F_N12_32_00,C_I_N12_32_00,C_F_N12_32_00,C_I_N12_32_01,C_F_N12_32_00,C_I_N12_32_02)
plot(C_F_N10_32_00,C_I_N10_32_00,C_F_N10_32_00,C_I_N10_32_01,C_F_N10_32_00,C_I_N10_32_02)
plot(C_F_N8_32_00,C_I_N8_32_00,C_F_N8_32_00,C_I_N8_32_01,C_F_N8_32_00,C_I_N8_32_02)
legend('N20-1','N20-2','N20-3','N18-1','N18-2','N18-3','N16-1','N16-2','N16-3','N14-1','N14-2','N14-3','N12-1','N12-2','N12-3','N10-1','N10-2','N10-3','N8-1','N8-2','N8-3')
title('Copper 0.32mm Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

figure(5)
plot(C_F_N20_32_00,C_R_N20_32_A)
hold on
plot(C_F_N18_32_00,C_R_N18_32_A)
plot(C_F_N16_32_00,C_R_N16_32_A)
plot(C_F_N14_32_00,C_R_N14_32_A)
plot(C_F_N12_32_00,C_R_N12_32_A)
plot(C_F_N10_32_00,C_R_N10_32_A)
plot(C_F_N8_32_00,C_R_N8_32_A)
legend('N20,A','N18,A','N16,A','N14,A','N12,A','N10,A','N8,A')
title('Copper 0.32mm Real Average')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

figure(6)
plot(C_F_N20_32_00,C_I_N20_32_A)
hold on
plot(C_F_N18_32_00,C_I_N18_32_A)
plot(C_F_N16_32_00,C_I_N16_32_A)
plot(C_F_N14_32_00,C_I_N14_32_A)
plot(C_F_N12_32_00,C_I_N12_32_A)
plot(C_F_N10_32_00,C_I_N10_32_A)
plot(C_F_N8_32_00,C_I_N8_32_A)
legend('N20,A','N18,A','N16,A','N14,A','N12,A','N10,A','N8,A')
title('Copper 0.32mm Imag Average')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off
%% 
K_F_N20_31_03 = csvread('N20_0.31K_04.CSV',3,0,[3,0,802,0]);
K_R_N20_31_03 = csvread('N20_0.31K_04.CSV',3,1,[3,1,802,1]);
K_I_N20_31_03 = csvread('N20_0.31K_04.CSV',3,2,[3,2,802,2]);
K_R_N20_31_04 = csvread('N20_0.31K_05.CSV',3,1,[3,1,802,1]);
K_I_N20_31_04 = csvread('N20_0.31K_05.CSV',3,2,[3,2,802,2]);
K_R_N20_31_05 = csvread('N20_0.31K_06.CSV',3,1,[3,1,802,1]);
K_I_N20_31_05 = csvread('N20_0.31K_06.CSV',3,2,[3,2,802,2]);

K_R_N20_31_A=zeros(800:1);
K_I_N20_31_A=zeros(800:1);
for i=1:800
    K_R_N20_31_A(i)= (K_R_N20_31_03(i)+K_R_N20_31_04(i)+K_R_N20_31_05(i))./3;
    K_I_N20_31_A(i)= (K_I_N20_31_03(i)+K_I_N20_31_04(i)+K_I_N20_31_05(i))./3;
end

K_F_N18_31_03 = csvread('N18_0.31K_04.CSV',3,0,[3,0,802,0]);
K_R_N18_31_03 = csvread('N18_0.31K_04.CSV',3,1,[3,1,802,1]);
K_I_N18_31_03 = csvread('N18_0.31K_04.CSV',3,2,[3,2,802,2]);
K_R_N18_31_04 = csvread('N18_0.31K_05.CSV',3,1,[3,1,802,1]);
K_I_N18_31_04 = csvread('N18_0.31K_05.CSV',3,2,[3,2,802,2]);
K_R_N18_31_05 = csvread('N18_0.31K_06.CSV',3,1,[3,1,802,1]);
K_I_N18_31_05 = csvread('N18_0.31K_06.CSV',3,2,[3,2,802,2]);

K_R_N18_31_A=zeros(800:1);
K_I_N18_31_A=zeros(800:1);
for i=1:800
    K_R_N18_31_A(i)= (K_R_N18_31_03(i)+K_R_N18_31_04(i)+K_R_N18_31_05(i))./3;
    K_I_N18_31_A(i)= (K_I_N18_31_03(i)+K_I_N18_31_04(i)+K_I_N18_31_05(i))./3;
end

K_F_N16_31_03 = csvread('N16_0.31K_04.CSV',3,0,[3,0,802,0]);
K_R_N16_31_03 = csvread('N16_0.31K_04.CSV',3,1,[3,1,802,1]);
K_I_N16_31_03 = csvread('N16_0.31K_04.CSV',3,2,[3,2,802,2]);
K_R_N16_31_04 = csvread('N16_0.31K_05.CSV',3,1,[3,1,802,1]);
K_I_N16_31_04 = csvread('N16_0.31K_05.CSV',3,2,[3,2,802,2]);
K_R_N16_31_05 = csvread('N16_0.31K_06.CSV',3,1,[3,1,802,1]);
K_I_N16_31_05 = csvread('N16_0.31K_06.CSV',3,2,[3,2,802,2]);

K_R_N16_31_A=zeros(800:1);
K_I_N16_31_A=zeros(800:1);
for i=1:800
    K_R_N16_31_A(i)= (K_R_N16_31_03(i)+K_R_N16_31_04(i)+K_R_N16_31_05(i))./3;
    K_I_N16_31_A(i)= (K_I_N16_31_03(i)+K_I_N16_31_04(i)+K_I_N16_31_05(i))./3;
end


K_F_N14_31_03 = csvread('N14_0.31K_04.CSV',3,0,[3,0,802,0]);
K_R_N14_31_03 = csvread('N14_0.31K_04.CSV',3,1,[3,1,802,1]);
K_I_N14_31_03 = csvread('N14_0.31K_04.CSV',3,2,[3,2,802,2]);
K_R_N14_31_04 = csvread('N14_0.31K_05.CSV',3,1,[3,1,802,1]);
K_I_N14_31_04 = csvread('N14_0.31K_05.CSV',3,2,[3,2,802,2]);
K_R_N14_31_05 = csvread('N14_0.31K_06.CSV',3,1,[3,1,802,1]);
K_I_N14_31_05 = csvread('N14_0.31K_06.CSV',3,2,[3,2,802,2]);

K_R_N14_31_A=zeros(800:1);
K_I_N14_31_A=zeros(800:1);
for i=1:800
    K_R_N14_31_A(i)= (K_R_N14_31_03(i)+K_R_N14_31_04(i)+K_R_N14_31_05(i))./3;
    K_I_N14_31_A(i)= (K_I_N14_31_03(i)+K_I_N14_31_04(i)+K_I_N14_31_05(i))./3;
end

K_F_N12_31_03 = csvread('N12_0.31K_04.CSV',3,0,[3,0,802,0]);
K_R_N12_31_03 = csvread('N12_0.31K_04.CSV',3,1,[3,1,802,1]);
K_I_N12_31_03 = csvread('N12_0.31K_04.CSV',3,2,[3,2,802,2]);
K_R_N12_31_04 = csvread('N12_0.31K_05.CSV',3,1,[3,1,802,1]);
K_I_N12_31_04 = csvread('N12_0.31K_05.CSV',3,2,[3,2,802,2]);
K_R_N12_31_05 = csvread('N12_0.31K_06.CSV',3,1,[3,1,802,1]);
K_I_N12_31_05 = csvread('N12_0.31K_06.CSV',3,2,[3,2,802,2]);

K_R_N12_31_A=zeros(800:1);
K_I_N12_31_A=zeros(800:1);
for i=1:800
    K_R_N12_31_A(i)= (K_R_N12_31_03(i)+K_R_N12_31_04(i)+K_R_N12_31_05(i))./3;
    K_I_N12_31_A(i)= (K_I_N12_31_03(i)+K_I_N12_31_04(i)+K_I_N12_31_05(i))./3;
end

K_F_N10_31_03 = csvread('N10_0.31K_04.CSV',3,0,[3,0,802,0]);
K_R_N10_31_03 = csvread('N10_0.31K_04.CSV',3,1,[3,1,802,1]);
K_I_N10_31_03 = csvread('N10_0.31K_04.CSV',3,2,[3,2,802,2]);
K_R_N10_31_04 = csvread('N10_0.31K_05.CSV',3,1,[3,1,802,1]);
K_I_N10_31_04 = csvread('N10_0.31K_05.CSV',3,2,[3,2,802,2]);
K_R_N10_31_05 = csvread('N10_0.31K_06.CSV',3,1,[3,1,802,1]);
K_I_N10_31_05 = csvread('N10_0.31K_06.CSV',3,2,[3,2,802,2]);

K_R_N10_31_A=zeros(800:1);
K_I_N10_31_A=zeros(800:1);
for i=1:800
    K_R_N10_31_A(i)= (K_R_N10_31_03(i)+K_R_N10_31_04(i)+K_R_N10_31_05(i))./3;
    K_I_N10_31_A(i)= (K_I_N10_31_03(i)+K_I_N10_31_04(i)+K_I_N10_31_05(i))./3;
end

K_F_N8_31_03 = csvread('N8_0.31K_04.CSV',3,0,[3,0,802,0]);
K_R_N8_31_03 = csvread('N8_0.31K_04.CSV',3,1,[3,1,802,1]);
K_I_N8_31_03 = csvread('N8_0.31K_04.CSV',3,2,[3,2,802,2]);
K_R_N8_31_04 = csvread('N8_0.31K_05.CSV',3,1,[3,1,802,1]);
K_I_N8_31_04 = csvread('N8_0.31K_05.CSV',3,2,[3,2,802,2]);
K_R_N8_31_05 = csvread('N8_0.31K_06.CSV',3,1,[3,1,802,1]);
K_I_N8_31_05 = csvread('N8_0.31K_06.CSV',3,2,[3,2,802,2]);

K_R_N8_31_A=zeros(800:1);
K_I_N8_31_A=zeros(800:1);
for i=1:800
    K_R_N8_31_A(i)= (K_R_N8_31_03(i)+K_R_N8_31_04(i)+K_R_N8_31_05(i))./3;
    K_I_N8_31_A(i)= (K_I_N8_31_03(i)+K_I_N8_31_04(i)+K_I_N8_31_05(i))./3;
end

x = [8,10,12,14,16,18,20];

L_K_31_3 = flip([K_I_N20_31_03(1),K_I_N18_31_03(1),K_I_N16_31_03(1),K_I_N14_31_03(1),K_I_N12_31_03(1),K_I_N10_31_03(1),K_I_N8_31_03(1)]./(1e5*(2*pi)));
L_K_31_4 = flip([K_I_N20_31_04(1),K_I_N18_31_04(1),K_I_N16_31_04(1),K_I_N14_31_04(1),K_I_N12_31_04(1),K_I_N10_31_04(1),K_I_N8_31_04(1)]./(1e5*(2*pi)));
L_K_31_5 = flip([K_I_N20_31_05(1),K_I_N18_31_05(1),K_I_N16_31_05(1),K_I_N14_31_05(1),K_I_N12_31_05(1),K_I_N10_31_05(1),K_I_N8_31_05(1)]./(1e5*(2*pi)));

L_K_31_A = [K_I_N20_31_A(1),K_I_N18_31_A(1),K_I_N16_31_A(1),K_I_N14_31_A(1),K_I_N12_31_A(1),K_I_N10_31_A(1),K_I_N8_31_A(1)]./(1e5*(2*pi));
L_K_31_A = flip(L_K_31_A);
figure(7)
plot(x,L_K_31_3,x,L_K_31_4,x,L_K_31_5)
grid on
title('Inductance K_31')
legend('1','2','3')

figure(8)
plot(x,L_K_31_A)
grid on
title('Average Inductance K_31')

figure(9)
plot(K_F_N20_31_03,K_R_N20_31_03,K_F_N20_31_03,K_R_N20_31_04,K_F_N20_31_03,K_R_N20_31_05)
hold on
plot(K_F_N18_31_03,K_R_N18_31_03,K_F_N18_31_03,K_R_N18_31_04,K_F_N18_31_03,K_R_N18_31_05)
plot(K_F_N16_31_03,K_R_N16_31_03,K_F_N16_31_03,K_R_N16_31_04,K_F_N16_31_03,K_R_N16_31_05)
plot(K_F_N14_31_03,K_R_N14_31_03,K_F_N14_31_03,K_R_N14_31_04,K_F_N14_31_03,K_R_N14_31_05)
plot(K_F_N12_31_03,K_R_N12_31_03,K_F_N12_31_03,K_R_N12_31_04,K_F_N12_31_03,K_R_N12_31_05)
plot(K_F_N10_31_03,K_R_N10_31_03,K_F_N10_31_03,K_R_N10_31_04,K_F_N10_31_03,K_R_N10_31_05)
plot(K_F_N8_31_03,K_R_N8_31_03,K_F_N8_31_03,K_R_N8_31_04,K_F_N8_31_03,K_R_N8_31_05)

legend('N20-1','N20-2','N20-3','N18-1','N18-2','N18-3','N16-1','N16-2','N16-3','N14-1','N14-2','N14-3','N12-1','N12-2','N12-3','N10-1','N10-2','N10-3','N8-1','N8-2','N8-3')
title('Knitted 0.31mm Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(10)
plot(K_F_N20_31_03,K_I_N20_31_03,K_F_N20_31_03,K_I_N20_31_04,K_F_N20_31_03,K_I_N20_31_05)
hold on
plot(K_F_N18_31_03,K_I_N18_31_03,K_F_N18_31_03,K_I_N18_31_04,K_F_N18_31_03,K_I_N18_31_05)
plot(K_F_N16_31_03,K_I_N16_31_03,K_F_N16_31_03,K_I_N16_31_04,K_F_N16_31_03,K_I_N16_31_05)
plot(K_F_N14_31_03,K_I_N14_31_03,K_F_N14_31_03,K_I_N14_31_04,K_F_N14_31_03,K_I_N14_31_05)
plot(K_F_N12_31_03,K_I_N12_31_03,K_F_N12_31_03,K_I_N12_31_04,K_F_N12_31_03,K_I_N12_31_05)
plot(K_F_N10_31_03,K_I_N10_31_03,K_F_N10_31_03,K_I_N10_31_04,K_F_N10_31_03,K_I_N10_31_05)
plot(K_F_N8_31_03,K_I_N8_31_03,K_F_N8_31_03,K_I_N8_31_04,K_F_N8_31_03,K_I_N8_31_05)

legend('N20-1','N20-2','N20-3','N18-1','N18-2','N18-3','N16-1','N16-2','N16-3','N14-1','N14-2','N14-3','N12-1','N12-2','N12-3','N10-1','N10-2','N10-3','N8-1','N8-2','N8-3')
title('Knitted 0.31mm Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

figure(11)
plot(K_F_N20_31_03,K_R_N20_31_A)
hold on
plot(K_F_N18_31_03,K_R_N18_31_A)
plot(K_F_N16_31_03,K_R_N16_31_A)
plot(K_F_N14_31_03,K_R_N14_31_A)
plot(K_F_N12_31_03,K_R_N12_31_A)
plot(K_F_N10_31_03,K_R_N10_31_A)
plot(K_F_N8_31_03,K_R_N8_31_A)

legend('N20,A','N18,A','N16,A','N14,A','N12,A','N10,A','N8,A')
title('Knitted 0.31mm Real Average')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

figure(12)
plot(K_F_N20_31_03,K_I_N20_31_A)
hold on
plot(K_F_N18_31_03,K_I_N18_31_A)
plot(K_F_N16_31_03,K_I_N16_31_A)
plot(K_F_N14_31_03,K_I_N14_31_A)
plot(K_F_N12_31_03,K_I_N12_31_A)
plot(K_F_N10_31_03,K_I_N10_31_A)
plot(K_F_N8_31_03,K_I_N8_31_A)

legend('N20,A','N18,A','N16,A','N14,A','N12,A','N10,A','N8,A')
title('Knitted 0.31mm Imag Average')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off
%% 0.48k
K_F_N20_48_00 = csvread('N20_0.48K_01.CSV',3,0,[3,0,802,0]);
K_R_N20_48_00 = csvread('N20_0.48K_01.CSV',3,1,[3,1,802,1]);
K_I_N20_48_00 = csvread('N20_0.48K_01.CSV',3,2,[3,2,802,2]);
K_R_N20_48_01 = csvread('N20_0.48K_02.CSV',3,1,[3,1,802,1]);
K_I_N20_48_01 = csvread('N20_0.48K_02.CSV',3,2,[3,2,802,2]);
K_R_N20_48_02 = csvread('N20_0.48K_03.CSV',3,1,[3,1,802,1]);
K_I_N20_48_02 = csvread('N20_0.48K_03.CSV',3,2,[3,2,802,2]);

K_R_N20_48_A=zeros(800:1);
K_I_N20_48_A=zeros(800:1);
for i=1:800
    K_R_N20_48_A(i)= (K_R_N20_48_00(i)+K_R_N20_48_01(i)+K_R_N20_48_02(i))./3;
    K_I_N20_48_A(i)= (K_I_N20_48_00(i)+K_I_N20_48_01(i)+K_I_N20_48_02(i))./3;
end

K_F_N18_48_00 = csvread('N18_0.48K_01.CSV',3,0,[3,0,802,0]);
K_R_N18_48_00 = csvread('N18_0.48K_01.CSV',3,1,[3,1,802,1]);
K_I_N18_48_00 = csvread('N18_0.48K_01.CSV',3,2,[3,2,802,2]);
K_R_N18_48_01 = csvread('N18_0.48K_02.CSV',3,1,[3,1,802,1]);
K_I_N18_48_01 = csvread('N18_0.48K_02.CSV',3,2,[3,2,802,2]);
K_R_N18_48_02 = csvread('N18_0.48K_03.CSV',3,1,[3,1,802,1]);
K_I_N18_48_02 = csvread('N18_0.48K_03.CSV',3,2,[3,2,802,2]);

K_R_N18_48_A=zeros(800:1);
K_I_N18_48_A=zeros(800:1);
for i=1:800
    K_R_N18_48_A(i)= (K_R_N18_48_00(i)+K_R_N18_48_01(i)+K_R_N18_48_02(i))./3;
    K_I_N18_48_A(i)= (K_I_N18_48_00(i)+K_I_N18_48_01(i)+K_I_N18_48_02(i))./3;
end

K_F_N16_48_00 = csvread('N16_0.48K_01.CSV',3,0,[3,0,802,0]);
K_R_N16_48_00 = csvread('N16_0.48K_01.CSV',3,1,[3,1,802,1]);
K_I_N16_48_00 = csvread('N16_0.48K_01.CSV',3,2,[3,2,802,2]);
K_R_N16_48_01 = csvread('N16_0.48K_02.CSV',3,1,[3,1,802,1]);
K_I_N16_48_01 = csvread('N16_0.48K_02.CSV',3,2,[3,2,802,2]);
K_R_N16_48_02 = csvread('N16_0.48K_03.CSV',3,1,[3,1,802,1]);
K_I_N16_48_02 = csvread('N16_0.48K_03.CSV',3,2,[3,2,802,2]);

K_R_N16_48_A=zeros(800:1);
K_I_N16_48_A=zeros(800:1);
for i=1:800
    K_R_N16_48_A(i)= (K_R_N16_48_00(i)+K_R_N16_48_01(i)+K_R_N16_48_02(i))./3;
    K_I_N16_48_A(i)= (K_I_N16_48_00(i)+K_I_N16_48_01(i)+K_I_N16_48_02(i))./3;
end


K_F_N14_48_00 = csvread('N14_0.48K_01.CSV',3,0,[3,0,802,0]);
K_R_N14_48_00 = csvread('N14_0.48K_01.CSV',3,1,[3,1,802,1]);
K_I_N14_48_00 = csvread('N14_0.48K_01.CSV',3,2,[3,2,802,2]);
K_R_N14_48_01 = csvread('N14_0.48K_02.CSV',3,1,[3,1,802,1]);
K_I_N14_48_01 = csvread('N14_0.48K_02.CSV',3,2,[3,2,802,2]);
K_R_N14_48_02 = csvread('N14_0.48K_03.CSV',3,1,[3,1,802,1]);
K_I_N14_48_02 = csvread('N14_0.48K_03.CSV',3,2,[3,2,802,2]);

K_R_N14_48_A=zeros(800:1);
K_I_N14_48_A=zeros(800:1);
for i=1:800
    K_R_N14_48_A(i)= (K_R_N14_48_00(i)+K_R_N14_48_01(i)+K_R_N14_48_02(i))./3;
    K_I_N14_48_A(i)= (K_I_N14_48_00(i)+K_I_N14_48_01(i)+K_I_N14_48_02(i))./3;
end

K_F_N12_48_00 = csvread('N12_0.48K_01.CSV',3,0,[3,0,802,0]);
K_R_N12_48_00 = csvread('N12_0.48K_01.CSV',3,1,[3,1,802,1]);
K_I_N12_48_00 = csvread('N12_0.48K_01.CSV',3,2,[3,2,802,2]);
K_R_N12_48_01 = csvread('N12_0.48K_02.CSV',3,1,[3,1,802,1]);
K_I_N12_48_01 = csvread('N12_0.48K_02.CSV',3,2,[3,2,802,2]);
K_R_N12_48_02 = csvread('N12_0.48K_03.CSV',3,1,[3,1,802,1]);
K_I_N12_48_02 = csvread('N12_0.48K_03.CSV',3,2,[3,2,802,2]);

K_R_N12_48_A=zeros(800:1);
K_I_N12_48_A=zeros(800:1);
for i=1:800
    K_R_N12_48_A(i)= (K_R_N12_48_00(i)+K_R_N12_48_01(i)+K_R_N12_48_02(i))./3;
    K_I_N12_48_A(i)= (K_I_N12_48_00(i)+K_I_N12_48_01(i)+K_I_N12_48_02(i))./3;
end

K_F_N10_48_00 = csvread('N10_0.48K_01.CSV',3,0,[3,0,802,0]);
K_R_N10_48_00 = csvread('N10_0.48K_01.CSV',3,1,[3,1,802,1]);
K_I_N10_48_00 = csvread('N10_0.48K_01.CSV',3,2,[3,2,802,2]);
K_R_N10_48_01 = csvread('N10_0.48K_02.CSV',3,1,[3,1,802,1]);
K_I_N10_48_01 = csvread('N10_0.48K_02.CSV',3,2,[3,2,802,2]);
K_R_N10_48_02 = csvread('N10_0.48K_03.CSV',3,1,[3,1,802,1]);
K_I_N10_48_02 = csvread('N10_0.48K_03.CSV',3,2,[3,2,802,2]);


K_R_N10_48_A=zeros(800:1);
K_I_N10_48_A=zeros(800:1);
for i=1:800
    K_R_N10_48_A(i)= (K_R_N10_48_00(i)+K_R_N10_48_01(i)+K_R_N10_48_02(i))./3;
    K_I_N10_48_A(i)= (K_I_N10_48_00(i)+K_I_N10_48_01(i)+K_I_N10_48_02(i))./3;
end

K_F_N8_48_00 = csvread('N8_0.48K_01.CSV',3,0,[3,0,802,0]);
K_R_N8_48_00 = csvread('N8_0.48K_01.CSV',3,1,[3,1,802,1]);
K_I_N8_48_00 = csvread('N8_0.48K_01.CSV',3,2,[3,2,802,2]);
K_R_N8_48_01 = csvread('N8_0.48K_02.CSV',3,1,[3,1,802,1]);
K_I_N8_48_01 = csvread('N8_0.48K_02.CSV',3,2,[3,2,802,2]);
K_R_N8_48_02 = csvread('N8_0.48K_03.CSV',3,1,[3,1,802,1]);
K_I_N8_48_02 = csvread('N8_0.48K_03.CSV',3,2,[3,2,802,2]);


K_R_N8_48_A=zeros(800:1);
K_I_N8_48_A=zeros(800:1);
for i=1:800
    K_R_N8_48_A(i)= (K_R_N8_48_00(i)+K_R_N8_48_01(i)+K_R_N8_48_02(i))./3;
    K_I_N8_48_A(i)= (K_I_N8_48_00(i)+K_I_N8_48_01(i)+K_I_N8_48_02(i))./3;
end

x = [8,10,12,14,16,18,20];
%Analyze L
% L_K_48_0 = flip([K_I_N20_48_00(1),K_I_N18_48_00(1),K_I_N16_48_00(1),K_I_N14_48_00(1),K_I_N12_48_00(1),K_I_N10_48_00(1),K_I_N8_48_00(1)]./(1e5*(2*pi)));
% L_K_48_1 = flip([K_I_N20_48_01(1),K_I_N18_48_01(1),K_I_N16_48_01(1),K_I_N14_48_01(1),K_I_N12_48_01(1),K_I_N10_48_01(1),K_I_N8_48_01(1)]./(1e5*(2*pi)));
% L_K_48_2 = flip([K_I_N20_48_02(1),K_I_N18_48_02(1),K_I_N16_48_02(1),K_I_N14_48_02(1),K_I_N12_48_02(1),K_I_N10_48_02(1),K_I_N8_48_02(1)]./(1e5*(2*pi)));
L_K_48_0 = flip([K_I_N20_48_00(1),K_I_N18_48_00(1),K_I_N16_48_00(1),K_I_N14_48_00(1),K_I_N12_48_00(1),K_I_N10_48_00(1),K_I_N8_48_00(1)]./(1e5*(2*pi)));
L_K_48_1 = flip([K_I_N20_48_01(1),K_I_N18_48_01(1),K_I_N16_48_01(1),K_I_N14_48_01(1),K_I_N12_48_01(1),K_I_N10_48_01(1),K_I_N8_48_01(1)]./(1e5*(2*pi)));
L_K_48_2 = flip([K_I_N20_48_02(1),K_I_N18_48_02(1),K_I_N16_48_02(1),K_I_N14_48_02(1),K_I_N12_48_02(1),K_I_N10_48_02(1),K_I_N8_48_02(1)]./(1e5*(2*pi)));

% L_K_48_A = [K_I_N20_48_A(1),K_I_N18_48_A(1),K_I_N16_48_A(1),K_I_N14_48_A(1),K_I_N12_48_A(1),K_I_N10_48_A(1),K_I_N8_48_A(1)]./(1e5*(2*pi));
L_K_48_A = [K_I_N20_48_A(1),K_I_N18_48_A(1),K_I_N16_48_A(1),K_I_N14_48_A(1),K_I_N12_48_A(1),K_I_N10_48_A(1),K_I_N8_48_A(1)]./(1e5*(2*pi));
L_K_48_A = flip(L_K_48_A);

figure(5)
plot(x,L_K_48_0,x,L_K_48_1,x,L_K_48_2)
grid on
title('Inductance K_48')
legend('1','2','3')

figure(6)
plot(x,L_K_48_A)
grid on
title('Average Inductance K_48')

%plot individual graph
figure(1)
plot(K_F_N20_48_00,K_R_N20_48_00,K_F_N20_48_00,K_R_N20_48_01,K_F_N20_48_00,K_R_N20_48_02)
hold on
plot(K_F_N18_48_00,K_R_N18_48_00,K_F_N18_48_00,K_R_N18_48_01,K_F_N18_48_00,K_R_N18_48_02)
plot(K_F_N16_48_00,K_R_N16_48_00,K_F_N16_48_00,K_R_N16_48_01,K_F_N16_48_00,K_R_N16_48_02)
plot(K_F_N14_48_00,K_R_N14_48_00,K_F_N14_48_00,K_R_N14_48_01,K_F_N14_48_00,K_R_N14_48_02)
plot(K_F_N12_48_00,K_R_N12_48_00,K_F_N12_48_00,K_R_N12_48_01,K_F_N12_48_00,K_R_N12_48_02)
plot(K_F_N10_48_00,K_R_N10_48_00,K_F_N10_48_00,K_R_N10_48_01,K_F_N10_48_00,K_R_N10_48_02)
plot(K_F_N8_48_00,K_R_N8_48_00,K_F_N8_48_00,K_R_N8_48_01,K_F_N8_48_00,K_R_N8_48_02)
legend('N20-1','N20-2','N20-3','N18-1','N18-2','N18-3','N16-1','N16-2','N16-3','N14-1','N14-2','N14-3','N12-1','N12-2','N12-3','N10-1','N10-2','N10-3','N8-1','N8-2','N8-3')
title('Knitted 0.48mm Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(2)
plot(K_F_N20_48_00,K_I_N20_48_00,K_F_N20_48_00,K_I_N20_48_01,K_F_N20_48_00,K_I_N20_48_02)
hold on
plot(K_F_N18_48_00,K_I_N18_48_00,K_F_N18_48_00,K_I_N18_48_01,K_F_N18_48_00,K_I_N18_48_02)
plot(K_F_N16_48_00,K_I_N16_48_00,K_F_N16_48_00,K_I_N16_48_01,K_F_N16_48_00,K_I_N16_48_02)
plot(K_F_N14_48_00,K_I_N14_48_00,K_F_N14_48_00,K_I_N14_48_01,K_F_N14_48_00,K_I_N14_48_02)
plot(K_F_N12_48_00,K_I_N12_48_00,K_F_N12_48_00,K_I_N12_48_01,K_F_N12_48_00,K_I_N12_48_02)
plot(K_F_N10_48_00,K_I_N10_48_00,K_F_N10_48_00,K_I_N10_48_01,K_F_N10_48_00,K_I_N10_48_02)
plot(K_F_N8_48_00,K_I_N8_48_00,K_F_N8_48_00,K_I_N8_48_01,K_F_N8_48_00,K_I_N8_48_02)
legend('N20-1','N20-2','N20-3','N18-1','N18-2','N18-3','N16-1','N16-2','N16-3','N14-1','N14-2','N14-3','N12-1','N12-2','N12-3','N10-1','N10-2','N10-3','N8-1','N8-2','N8-3')
title('Knitted 0.48mm Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

figure(3)
plot(K_F_N20_48_00,K_R_N20_48_A)
hold on
plot(K_F_N18_48_00,K_R_N18_48_A)
plot(K_F_N16_48_00,K_R_N16_48_A)
plot(K_F_N14_48_00,K_R_N14_48_A)
plot(K_F_N12_48_00,K_R_N12_48_A)
plot(K_F_N10_48_00,K_R_N10_48_A)
plot(K_F_N8_48_00,K_R_N8_48_A)
legend('N20,A','N18,A','N16,A','N14,A','N12,A','N10,A','N8,A')
title('Knitted 0.48mm Real Average')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

figure(4)
plot(K_F_N20_48_00,K_I_N20_48_A)
hold on
plot(K_F_N18_48_00,K_I_N18_48_A)
plot(K_F_N16_48_00,K_I_N16_48_A)
plot(K_F_N14_48_00,K_I_N14_48_A)
plot(K_F_N12_48_00,K_I_N12_48_A)
plot(K_F_N10_48_00,K_I_N10_48_A)
plot(K_F_N8_48_00,K_I_N8_48_A)
legend('N20,A','N18,A','N16,A','N14,A','N12,A','N10,A','N8,A')
title('Knitted 0.48mm Imag Average')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off
%% 0.5mm
C_F_N20_50_00 = csvread('N20_0.5C_04.CSV',3,0,[3,0,802,0]);
C_R_N20_50_00 = csvread('N20_0.5C_04.CSV',3,1,[3,1,802,1]);
C_I_N20_50_00 = csvread('N20_0.5C_04.CSV',3,2,[3,2,802,2]);
C_R_N20_50_04 = csvread('N20_0.5C_05.CSV',3,1,[3,1,802,1]);
C_I_N20_50_04 = csvread('N20_0.5C_05.CSV',3,2,[3,2,802,2]);
C_R_N20_50_05 = csvread('N20_0.5C_06.CSV',3,1,[3,1,802,1]);
C_I_N20_50_05 = csvread('N20_0.5C_06.CSV',3,2,[3,2,802,2]);

C_R_N20_50_A=zeros(800:1);
C_I_N20_50_A=zeros(800:1);
for i=1:800
    C_R_N20_50_A(i)= (C_R_N20_50_00(i)+C_R_N20_50_04(i)+C_R_N20_50_05(i))./3;
    C_I_N20_50_A(i)= (C_I_N20_50_00(i)+C_I_N20_50_04(i)+C_I_N20_50_05(i))./3;
end

C_F_N18_50_00 = csvread('N18_0.5C_04.CSV',3,0,[3,0,802,0]);
C_R_N18_50_00 = csvread('N18_0.5C_04.CSV',3,1,[3,1,802,1]);
C_I_N18_50_00 = csvread('N18_0.5C_04.CSV',3,2,[3,2,802,2]);
C_R_N18_50_04 = csvread('N18_0.5C_05.CSV',3,1,[3,1,802,1]);
C_I_N18_50_04 = csvread('N18_0.5C_05.CSV',3,2,[3,2,802,2]);
C_R_N18_50_05 = csvread('N18_0.5C_06.CSV',3,1,[3,1,802,1]);
C_I_N18_50_05 = csvread('N18_0.5C_06.CSV',3,2,[3,2,802,2]);

C_R_N18_50_A=zeros(800:1);
C_I_N18_50_A=zeros(800:1);
for i=1:800
%     C_R_N18_50_A(i)= (C_R_N18_50_00(i)+C_R_N18_50_04(i)+C_R_N18_50_05(i))./3;
    C_R_N18_50_A(i)= (C_R_N18_50_00(i));
%     C_I_N18_50_A(i)= (C_I_N18_50_00(i)+C_I_N18_50_04(i)+C_I_N18_50_05(i))./3;
    C_I_N18_50_A(i)= (C_I_N18_50_00(i));

end

C_F_N16_50_00 = csvread('N16_0.5C_04.CSV',3,0,[3,0,802,0]);
C_R_N16_50_00 = csvread('N16_0.5C_04.CSV',3,1,[3,1,802,1]);
C_I_N16_50_00 = csvread('N16_0.5C_04.CSV',3,2,[3,2,802,2]);
C_R_N16_50_04 = csvread('N16_0.5C_05.CSV',3,1,[3,1,802,1]);
C_I_N16_50_04 = csvread('N16_0.5C_05.CSV',3,2,[3,2,802,2]);
C_R_N16_50_05 = csvread('N16_0.5C_06.CSV',3,1,[3,1,802,1]);
C_I_N16_50_05 = csvread('N16_0.5C_06.CSV',3,2,[3,2,802,2]);

C_R_N16_50_A=zeros(800:1);
C_I_N16_50_A=zeros(800:1);
for i=1:800
    C_R_N16_50_A(i)= (C_R_N16_50_00(i)+C_R_N16_50_04(i)+C_R_N16_50_05(i))./3;
    C_I_N16_50_A(i)= (C_I_N16_50_00(i)+C_I_N16_50_04(i)+C_I_N16_50_05(i))./3;
end


C_F_N14_50_00 = csvread('N14_0.5C_04.CSV',3,0,[3,0,802,0]);
C_R_N14_50_00 = csvread('N14_0.5C_04.CSV',3,1,[3,1,802,1]);
C_I_N14_50_00 = csvread('N14_0.5C_04.CSV',3,2,[3,2,802,2]);
C_R_N14_50_04 = csvread('N14_0.5C_05.CSV',3,1,[3,1,802,1]);
C_I_N14_50_04 = csvread('N14_0.5C_05.CSV',3,2,[3,2,802,2]);
C_R_N14_50_05 = csvread('N14_0.5C_06.CSV',3,1,[3,1,802,1]);
C_I_N14_50_05 = csvread('N14_0.5C_06.CSV',3,2,[3,2,802,2]);

C_R_N14_50_A=zeros(800:1);
C_I_N14_50_A=zeros(800:1);
for i=1:800
    C_R_N14_50_A(i)= (C_R_N14_50_00(i)+C_R_N14_50_04(i)+C_R_N14_50_05(i))./3;
    C_I_N14_50_A(i)= (C_I_N14_50_00(i)+C_I_N14_50_04(i)+C_I_N14_50_05(i))./3;
end

C_F_N12_50_00 = csvread('N12_0.5C_05.CSV',3,0,[3,0,802,0]);
C_R_N12_50_00 = csvread('N12_0.5C_05.CSV',3,1,[3,1,802,1]);
C_I_N12_50_00 = csvread('N12_0.5C_05.CSV',3,2,[3,2,802,2]);
C_R_N12_50_04 = csvread('N12_0.5C_05.CSV',3,1,[3,1,802,1]);
C_I_N12_50_04 = csvread('N12_0.5C_05.CSV',3,2,[3,2,802,2]);
C_R_N12_50_05 = csvread('N12_0.5C_06.CSV',3,1,[3,1,802,1]);
C_I_N12_50_05 = csvread('N12_0.5C_06.CSV',3,2,[3,2,802,2]);

C_R_N12_50_A=zeros(800:1);
C_I_N12_50_A=zeros(800:1);
for i=1:800
    C_R_N12_50_A(i)= (C_R_N12_50_00(i)+C_R_N12_50_04(i)+C_R_N12_50_05(i))./3;
    C_I_N12_50_A(i)= (C_I_N12_50_00(i)+C_I_N12_50_04(i)+C_I_N12_50_05(i))./3;
end

C_F_N10_50_00 = csvread('N10_0.5C_04.CSV',3,0,[3,0,802,0]);
C_R_N10_50_00 = csvread('N10_0.5C_04.CSV',3,1,[3,1,802,1]);
C_I_N10_50_00 = csvread('N10_0.5C_04.CSV',3,2,[3,2,802,2]);
C_R_N10_50_04 = csvread('N10_0.5C_05.CSV',3,1,[3,1,802,1]);
C_I_N10_50_04 = csvread('N10_0.5C_05.CSV',3,2,[3,2,802,2]);
C_R_N10_50_05 = csvread('N10_0.5C_06.CSV',3,1,[3,1,802,1]);
C_I_N10_50_05 = csvread('N10_0.5C_06.CSV',3,2,[3,2,802,2]);

C_R_N10_50_A=zeros(800:1);
C_I_N10_50_A=zeros(800:1);
for i=1:800
    C_R_N10_50_A(i)= (C_R_N10_50_00(i)+C_R_N10_50_04(i)+C_R_N10_50_05(i))./3;
    C_I_N10_50_A(i)= (C_I_N10_50_00(i)+C_I_N10_50_04(i)+C_I_N10_50_05(i))./3;
end

C_F_N8_50_00 = csvread('N8_0.5C_04.CSV',3,0,[3,0,802,0]);
C_R_N8_50_00 = csvread('N8_0.5C_04.CSV',3,1,[3,1,802,1]);
C_I_N8_50_00 = csvread('N8_0.5C_04.CSV',3,2,[3,2,802,2]);
C_R_N8_50_04 = csvread('N8_0.5C_05.CSV',3,1,[3,1,802,1]);
C_I_N8_50_04 = csvread('N8_0.5C_05.CSV',3,2,[3,2,802,2]);
C_R_N8_50_05 = csvread('N8_0.5C_06.CSV',3,1,[3,1,802,1]);
C_I_N8_50_05 = csvread('N8_0.5C_06.CSV',3,2,[3,2,802,2]);

C_R_N8_50_A=zeros(800:1);
C_I_N8_50_A=zeros(800:1);
for i=1:800
    C_R_N8_50_A(i)= (C_R_N8_50_00(i)+C_R_N8_50_04(i)+C_R_N8_50_05(i))./3;
    C_I_N8_50_A(i)= (C_I_N8_50_00(i)+C_I_N8_50_04(i)+C_I_N8_50_05(i))./3;
end

x = [8,10,12,14,16,18,20];

%Analyze L
L_C_50_0 = flip([C_I_N20_50_00(1),C_I_N18_50_00(1),C_I_N16_50_00(1),C_I_N14_50_00(1),C_I_N12_50_00(1),C_I_N10_50_00(1),C_I_N8_50_00(1)]./(1e5*(2*pi)));
L_C_50_1 = flip([C_I_N20_50_04(1),C_I_N18_50_04(1),C_I_N16_50_04(1),C_I_N14_50_04(1),C_I_N12_50_04(1),C_I_N10_50_04(1),C_I_N8_50_04(1)]./(1e5*(2*pi)));
L_C_50_2 = flip([C_I_N20_50_05(1),C_I_N18_50_05(1),C_I_N16_50_05(1),C_I_N14_50_05(1),C_I_N12_50_05(1),C_I_N10_50_05(1),C_I_N8_50_05(1)]./(1e5*(2*pi)));

L_C_50_A = [C_I_N20_50_A(1),C_I_N18_50_A(1),C_I_N16_50_A(1),C_I_N14_50_A(1),C_I_N12_50_A(1),C_I_N10_50_A(1),C_I_N8_50_A(1)]./(1e5*(2*pi));
% L_C_50_A = [C_I_N20_50_A(1),C_I_N18_50_A(1),C_I_N16_50_A(1),C_I_N14_50_A(1)]./(1e5*(2*pi));
L_C_50_A = flip(L_C_50_A);

figure(5)
plot(x,L_C_50_0,x,L_C_50_1,x,L_C_50_2)
grid on
title('Inductance C_50')
legend('1','2','3')

figure(6)
plot(x,L_C_50_A)
grid on
title('Average Inductance C_50')

%plot individual graph
figure(1)
plot(C_F_N20_50_00,C_R_N20_50_00,C_F_N20_50_00,C_R_N20_50_04,C_F_N20_50_00,C_R_N20_50_05)
hold on
plot(C_F_N18_50_00,C_R_N18_50_00,C_F_N18_50_00,C_R_N18_50_04,C_F_N18_50_00,C_R_N18_50_05)
plot(C_F_N16_50_00,C_R_N16_50_00,C_F_N16_50_00,C_R_N16_50_04,C_F_N16_50_00,C_R_N16_50_05)
plot(C_F_N14_50_00,C_R_N14_50_00,C_F_N14_50_00,C_R_N14_50_04,C_F_N14_50_00,C_R_N14_50_05)
plot(C_F_N12_50_00,C_R_N12_50_00,C_F_N12_50_00,C_R_N12_50_04,C_F_N12_50_00,C_R_N12_50_05)
plot(C_F_N10_50_00,C_R_N10_50_00,C_F_N10_50_00,C_R_N10_50_04,C_F_N10_50_00,C_R_N10_50_05)
plot(C_F_N8_50_00,C_R_N8_50_00,C_F_N8_50_00,C_R_N8_50_04,C_F_N8_50_00,C_R_N8_50_05)
legend('N20-1','N20-2','N20-3','N18-1','N18-2','N18-3','N16-1','N16-2','N16-3','N14-1','N14-2','N14-3','N12-1','N12-2','N12-3','N10-1','N10-2','N10-3','N8-1','N8-2','N8-3')
title('Copper 0.5mm Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(2)
plot(C_F_N20_50_00,C_I_N20_50_00,C_F_N20_50_00,C_I_N20_50_04,C_F_N20_50_00,C_I_N20_50_05)
hold on
plot(C_F_N18_50_00,C_I_N18_50_00,C_F_N18_50_00,C_I_N18_50_04,C_F_N18_50_00,C_I_N18_50_05)
plot(C_F_N16_50_00,C_I_N16_50_00,C_F_N16_50_00,C_I_N16_50_04,C_F_N16_50_00,C_I_N16_50_05)
plot(C_F_N14_50_00,C_I_N14_50_00,C_F_N14_50_00,C_I_N14_50_04,C_F_N14_50_00,C_I_N14_50_05)
plot(C_F_N12_50_00,C_I_N12_50_00,C_F_N12_50_00,C_I_N12_50_04,C_F_N12_50_00,C_I_N12_50_05)
plot(C_F_N10_50_00,C_I_N10_50_00,C_F_N10_50_00,C_I_N10_50_04,C_F_N10_50_00,C_I_N10_50_05)
plot(C_F_N8_50_00,C_I_N8_50_00,C_F_N8_50_00,C_I_N8_50_04,C_F_N8_50_00,C_I_N8_50_05)
legend('N20-1','N20-2','N20-3','N18-1','N18-2','N18-3','N16-1','N16-2','N16-3','N14-1','N14-2','N14-3','N12-1','N12-2','N12-3','N10-1','N10-2','N10-3','N8-1','N8-2','N8-3')
title('Copper 0.5mm Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

figure(3)
plot(C_F_N20_50_00,C_R_N20_50_A)
hold on
plot(C_F_N18_50_00,C_R_N18_50_A)
plot(C_F_N16_50_00,C_R_N16_50_A)
plot(C_F_N14_50_00,C_R_N14_50_A)
plot(C_F_N12_50_00,C_R_N12_50_A)
plot(C_F_N10_50_00,C_R_N10_50_A)
plot(C_F_N8_50_00,C_R_N8_50_A)
legend('N20,A','N18,A','N16,A','N14,A','N12,A','N10,A','N8,A')
title('Copper 0.5mm Real Average')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

figure(4)
plot(C_F_N20_50_00,C_I_N20_50_A)
hold on
plot(C_F_N18_50_00,C_I_N18_50_A)
plot(C_F_N16_50_00,C_I_N16_50_A)
plot(C_F_N14_50_00,C_I_N14_50_A)
plot(C_F_N12_50_00,C_I_N12_50_A)
plot(C_F_N10_50_00,C_I_N10_50_A)
plot(C_F_N8_50_00,C_I_N8_50_A)
legend('N20,A','N18,A','N16,A','N14,A','N12,A','N10,A','N8,A')
title('Copper 0.5mm Imag Average')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off
%% Thin Knit
K_F_N20_T_00 = csvread('THIN KNIT N20_01.CSV',3,0,[3,0,802,0]);
K_R_N20_T_00 = csvread('THIN KNIT N20_01.CSV',3,1,[3,1,802,1]);
K_I_N20_T_00 = csvread('THIN KNIT N20_01.CSV',3,2,[3,2,802,2]);
K_R_N20_T_01 = csvread('THIN KNIT N20_02.CSV',3,1,[3,1,802,1]);
K_I_N20_T_01 = csvread('THIN KNIT N20_02.CSV',3,2,[3,2,802,2]);
K_R_N20_T_02 = csvread('THIN KNIT N20_03.CSV',3,1,[3,1,802,1]);
K_I_N20_T_02 = csvread('THIN KNIT N20_03.CSV',3,2,[3,2,802,2]);

K_R_N20_T_A=zeros(800:1);
K_I_N20_T_A=zeros(800:1);
for i=1:800
    K_R_N20_T_A(i)= (K_R_N20_T_00(i)+K_R_N20_T_01(i)+K_R_N20_T_02(i))./3;
    K_I_N20_T_A(i)= (K_I_N20_T_00(i)+K_I_N20_T_01(i)+K_I_N20_T_02(i))./3;
end

K_F_N18_T_00 = csvread('THIN KNIT N18_01.CSV',3,0,[3,0,802,0]);
K_R_N18_T_00 = csvread('THIN KNIT N18_01.CSV',3,1,[3,1,802,1]);
K_I_N18_T_00 = csvread('THIN KNIT N18_01.CSV',3,2,[3,2,802,2]);
K_R_N18_T_01 = csvread('THIN KNIT N18_02.CSV',3,1,[3,1,802,1]);
K_I_N18_T_01 = csvread('THIN KNIT N18_02.CSV',3,2,[3,2,802,2]);
K_R_N18_T_02 = csvread('THIN KNIT N18_03.CSV',3,1,[3,1,802,1]);
K_I_N18_T_02 = csvread('THIN KNIT N18_03.CSV',3,2,[3,2,802,2]);

K_R_N18_T_A=zeros(800:1);
K_I_N18_T_A=zeros(800:1);
for i=1:800
    K_R_N18_T_A(i)= (K_R_N18_T_00(i)+K_R_N18_T_01(i)+K_R_N18_T_02(i))./3;
    K_I_N18_T_A(i)= (K_I_N18_T_00(i)+K_I_N18_T_01(i)+K_I_N18_T_02(i))./3;
end

K_F_N16_T_00 = csvread('THIN KNIT N16_01.CSV',3,0,[3,0,802,0]);
K_R_N16_T_00 = csvread('THIN KNIT N16_01.CSV',3,1,[3,1,802,1]);
K_I_N16_T_00 = csvread('THIN KNIT N16_01.CSV',3,2,[3,2,802,2]);
K_R_N16_T_01 = csvread('THIN KNIT N16_02.CSV',3,1,[3,1,802,1]);
K_I_N16_T_01 = csvread('THIN KNIT N16_02.CSV',3,2,[3,2,802,2]);
K_R_N16_T_02 = csvread('THIN KNIT N16_03.CSV',3,1,[3,1,802,1]);
K_I_N16_T_02 = csvread('THIN KNIT N16_03.CSV',3,2,[3,2,802,2]);

K_R_N16_T_A=zeros(800:1);
K_I_N16_T_A=zeros(800:1);
for i=1:800
    K_R_N16_T_A(i)= (K_R_N16_T_00(i)+K_R_N16_T_01(i)+K_R_N16_T_02(i))./3;
    K_I_N16_T_A(i)= (K_I_N16_T_00(i)+K_I_N16_T_01(i)+K_I_N16_T_02(i))./3;
end


K_F_N14_T_00 = csvread('THIN KNIT N14_01.CSV',3,0,[3,0,802,0]);
K_R_N14_T_00 = csvread('THIN KNIT N14_01.CSV',3,1,[3,1,802,1]);
K_I_N14_T_00 = csvread('THIN KNIT N14_01.CSV',3,2,[3,2,802,2]);
K_R_N14_T_01 = csvread('THIN KNIT N14_02.CSV',3,1,[3,1,802,1]);
K_I_N14_T_01 = csvread('THIN KNIT N14_02.CSV',3,2,[3,2,802,2]);
K_R_N14_T_02 = csvread('THIN KNIT N14_03.CSV',3,1,[3,1,802,1]);
K_I_N14_T_02 = csvread('THIN KNIT N14_03.CSV',3,2,[3,2,802,2]);

K_R_N14_T_A=zeros(800:1);
K_I_N14_T_A=zeros(800:1);
for i=1:800
    K_R_N14_T_A(i)= (K_R_N14_T_00(i)+K_R_N14_T_01(i)+K_R_N14_T_02(i))./3;
    K_I_N14_T_A(i)= (K_I_N14_T_00(i)+K_I_N14_T_01(i)+K_I_N14_T_02(i))./3;
end

K_F_N12_T_00 = csvread('THIN KNIT N12_01.CSV',3,0,[3,0,802,0]);
K_R_N12_T_00 = csvread('THIN KNIT N12_01.CSV',3,1,[3,1,802,1]);
K_I_N12_T_00 = csvread('THIN KNIT N12_01.CSV',3,2,[3,2,802,2]);
K_R_N12_T_01 = csvread('THIN KNIT N12_02.CSV',3,1,[3,1,802,1]);
K_I_N12_T_01 = csvread('THIN KNIT N12_02.CSV',3,2,[3,2,802,2]);
K_R_N12_T_02 = csvread('THIN KNIT N12_03.CSV',3,1,[3,1,802,1]);
K_I_N12_T_02 = csvread('THIN KNIT N12_03.CSV',3,2,[3,2,802,2]);

K_R_N12_T_A=zeros(800:1);
K_I_N12_T_A=zeros(800:1);
for i=1:800
    K_R_N12_T_A(i)= (K_R_N12_T_00(i)+K_R_N12_T_01(i)+K_R_N12_T_02(i))./3;
    K_I_N12_T_A(i)= (K_I_N12_T_00(i)+K_I_N12_T_01(i)+K_I_N12_T_02(i))./3;
end

K_F_N10_T_00 = csvread('THIN KNIT N10_01.CSV',3,0,[3,0,802,0]);
K_R_N10_T_00 = csvread('THIN KNIT N10_01.CSV',3,1,[3,1,802,1]);
K_I_N10_T_00 = csvread('THIN KNIT N10_01.CSV',3,2,[3,2,802,2]);
K_R_N10_T_01 = csvread('THIN KNIT N10_02.CSV',3,1,[3,1,802,1]);
K_I_N10_T_01 = csvread('THIN KNIT N10_02.CSV',3,2,[3,2,802,2]);
K_R_N10_T_02 = csvread('THIN KNIT N10_03.CSV',3,1,[3,1,802,1]);
K_I_N10_T_02 = csvread('THIN KNIT N10_03.CSV',3,2,[3,2,802,2]);


K_R_N10_T_A=zeros(800:1);
K_I_N10_T_A=zeros(800:1);
for i=1:800
    K_R_N10_T_A(i)= (K_R_N10_T_00(i)+K_R_N10_T_01(i)+K_R_N10_T_02(i))./3;
    K_I_N10_T_A(i)= (K_I_N10_T_00(i)+K_I_N10_T_01(i)+K_I_N10_T_02(i))./3;
end

K_F_N8_T_00 = csvread('THIN KNIT N8_01.CSV',3,0,[3,0,802,0]);
K_R_N8_T_00 = csvread('THIN KNIT N8_01.CSV',3,1,[3,1,802,1]);
K_I_N8_T_00 = csvread('THIN KNIT N8_01.CSV',3,2,[3,2,802,2]);
K_R_N8_T_01 = csvread('THIN KNIT N8_02.CSV',3,1,[3,1,802,1]);
K_I_N8_T_01 = csvread('THIN KNIT N8_02.CSV',3,2,[3,2,802,2]);
K_R_N8_T_02 = csvread('THIN KNIT N8_03.CSV',3,1,[3,1,802,1]);
K_I_N8_T_02 = csvread('THIN KNIT N8_03.CSV',3,2,[3,2,802,2]);


K_R_N8_T_A=zeros(800:1);
K_I_N8_T_A=zeros(800:1);
for i=1:800
    K_R_N8_T_A(i)= (K_R_N8_T_00(i)+K_R_N8_T_01(i)+K_R_N8_T_02(i))./3;
    K_I_N8_T_A(i)= (K_I_N8_T_00(i)+K_I_N8_T_01(i)+K_I_N8_T_02(i))./3;
end

x = [8,10,12,14,16,18,20];
%Analyze L

L_K_T_0 = flip([K_I_N20_T_00(1),K_I_N18_T_00(1),K_I_N16_T_00(1),K_I_N14_T_00(1),K_I_N12_T_00(1),K_I_N10_T_00(1),K_I_N8_T_00(1)]./(1e5*(2*pi)));
L_K_T_1 = flip([K_I_N20_T_01(1),K_I_N18_T_01(1),K_I_N16_T_01(1),K_I_N14_T_01(1),K_I_N12_T_01(1),K_I_N10_T_01(1),K_I_N8_T_01(1)]./(1e5*(2*pi)));
L_K_T_2 = flip([K_I_N20_T_02(1),K_I_N18_T_02(1),K_I_N16_T_02(1),K_I_N14_T_02(1),K_I_N12_T_02(1),K_I_N10_T_02(1),K_I_N8_T_02(1)]./(1e5*(2*pi)));

L_K_T_A = [K_I_N20_T_A(1),K_I_N18_T_A(1),K_I_N16_T_A(1),K_I_N14_T_A(1),K_I_N12_T_A(1),K_I_N10_T_A(1),K_I_N8_T_A(1)]./(1e5*(2*pi));
L_K_T_A = flip(L_K_T_A);

figure(5)
plot(x,L_K_T_0,x,L_K_T_1,x,L_K_T_2)
grid on
title('Inductance K_T')
legend('1','2','3')

figure(6)
plot(x,L_K_T_A)
grid on
title('Average Inductance K_T')

%plot individual graph
figure(1)
plot(K_F_N20_T_00,K_R_N20_T_00,K_F_N20_T_00,K_R_N20_T_01,K_F_N20_T_00,K_R_N20_T_02)
hold on
plot(K_F_N18_T_00,K_R_N18_T_00,K_F_N18_T_00,K_R_N18_T_01,K_F_N18_T_00,K_R_N18_T_02)
plot(K_F_N16_T_00,K_R_N16_T_00,K_F_N16_T_00,K_R_N16_T_01,K_F_N16_T_00,K_R_N16_T_02)
plot(K_F_N14_T_00,K_R_N14_T_00,K_F_N14_T_00,K_R_N14_T_01,K_F_N14_T_00,K_R_N14_T_02)
plot(K_F_N12_T_00,K_R_N12_T_00,K_F_N12_T_00,K_R_N12_T_01,K_F_N12_T_00,K_R_N12_T_02)
plot(K_F_N10_T_00,K_R_N10_T_00,K_F_N10_T_00,K_R_N10_T_01,K_F_N10_T_00,K_R_N10_T_02)
plot(K_F_N8_T_00,K_R_N8_T_00,K_F_N8_T_00,K_R_N8_T_01,K_F_N8_T_00,K_R_N8_T_02)

legend('N20-1','N20-2','N20-3','N18-1','N18-2','N18-3','N16-1','N16-2','N16-3','N14-1','N14-2','N14-3','N12-1','N12-2','N12-3','N10-1','N10-2','N10-3','N8-1','N8-2','N8-3')
title('Knitted THIN Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(2)
plot(K_F_N20_T_00,K_I_N20_T_00,K_F_N20_T_00,K_I_N20_T_01,K_F_N20_T_00,K_I_N20_T_02)
hold on
plot(K_F_N18_T_00,K_I_N18_T_00,K_F_N18_T_00,K_I_N18_T_01,K_F_N18_T_00,K_I_N18_T_02)
plot(K_F_N16_T_00,K_I_N16_T_00,K_F_N16_T_00,K_I_N16_T_01,K_F_N16_T_00,K_I_N16_T_02)
plot(K_F_N14_T_00,K_I_N14_T_00,K_F_N14_T_00,K_I_N14_T_01,K_F_N14_T_00,K_I_N14_T_02)
plot(K_F_N12_T_00,K_I_N12_T_00,K_F_N12_T_00,K_I_N12_T_01,K_F_N12_T_00,K_I_N12_T_02)
plot(K_F_N10_T_00,K_I_N10_T_00,K_F_N10_T_00,K_I_N10_T_01,K_F_N10_T_00,K_I_N10_T_02)
plot(K_F_N8_T_00,K_I_N8_T_00,K_F_N8_T_00,K_I_N8_T_01,K_F_N8_T_00,K_I_N8_T_02)
legend('N20-1','N20-2','N20-3','N18-1','N18-2','N18-3','N16-1','N16-2','N16-3','N14-1','N14-2','N14-3','N12-1','N12-2','N12-3','N10-1','N10-2','N10-3','N8-1','N8-2','N8-3')
title('Knitted THIN Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

figure(3)
plot(K_F_N20_T_00,K_R_N20_T_A)
hold on
plot(K_F_N18_T_00,K_R_N18_T_A)
plot(K_F_N16_T_00,K_R_N16_T_A)
plot(K_F_N14_T_00,K_R_N14_T_A)
plot(K_F_N12_T_00,K_R_N12_T_A)
plot(K_F_N10_T_00,K_R_N10_T_A)
plot(K_F_N8_T_00,K_R_N8_T_A)
legend('N20,A','N18,A','N16,A','N14,A','N12,A','N10,A','N8,A')
title('Knitted THIN Real Average')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

figure(4)
plot(K_F_N20_T_00,K_I_N20_T_A)
hold on
plot(K_F_N18_T_00,K_I_N18_T_A)
plot(K_F_N16_T_00,K_I_N16_T_A)
plot(K_F_N14_T_00,K_I_N14_T_A)
plot(K_F_N12_T_00,K_I_N12_T_A)
plot(K_F_N10_T_00,K_I_N10_T_A)
plot(K_F_N8_T_00,K_I_N8_T_A)
legend('N20,A','N18,A','N16,A','N14,A','N12,A','N10,A','N8,A')
title('Knitted THIN Imag Average')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

%% 
x = [10,12,14,16,18,20];
x2 = [8,10,12,14,16,18,20];
x4 = [6,8,10,12,14,16,18];

% F_C_32 = [6.5241    5.9115    5.2488    4.7737    4.3486    3.9735].*1.0e+07;
% F_C_32 = [7.6369    6.4991    5.8490    5.1988    4.5736    4.2611    3.7859].*1.0e+07;
% F_C_32 = [7.6619    6.5991    6.1990    5.5239    4.9487    4.2486    3.8860].*1.0e+07;
F_C_32 = [7.6244    6.5741    5.8615    5.2738    4.7237    4.2361    3.9110].*1.0e+07;
% F_K_31 = [6.3991    5.7364    5.1488    4.6112    4.1735    3.8485].*1.0e+07;
F_K_31 = [7.4494    6.3491    5.6614    5.0363    4.4736    4.0735    3.8235].*1.0e+07;
F_K_48 = [7.5994    6.5616    5.8240    5.1988    4.68617    4.2611    3.8860].*1.0e+07;
F_C_50 = [7.6369    6.5616    5.8240    5.2363    4.7362    4.3111    4.0360].*1.0e+07;

simu = [170.0150,137.0315,116.0420,102.0490,91.0545,82.0590,75.0625].*1e+6;
simuL = ([0.829,1.16,1.48,1.81,2.13,2.43,2.75]./(0.2*pi)).*1e-6;

figure(99)
plot(x2,F_C_32,x2,F_K_31,x2,F_K_48,x2,F_C_50)
legend('C-32','K-31','K-48','C-50')
title('Resonant Frequency')
grid on
%% 
C_32_CT = ((2.*pi.*F_C_32).^(-2))./L_C_32_A;

simuC = ((2.*pi.*simu).^(-2))./simuL;
K_31_CT = 1./(4.*(pi.*F_K_31).^2 .*L_K_31_A);

Diff_30_CT = K_31_CT-C_32_CT;
C_50_CT = ((2.*pi.*F_C_50).^(-2))./L_C_50_A;
K_48_CT = ((2.*pi.*F_K_48).^(-2))./L_K_48_A;

d = 4.5; m0 = 4e-7*pi; A = pi*(d/2)^2; l = 1.*x;
% L_32 = (m0.*A.*(x.^2))./(l.*(1+0.9.*(d./(2.*l))));

figure(96)
plot(x2,C_32_CT,x2,K_31_CT,x2,C_50_CT,x2,K_48_CT,x4,simuC)
title('Total Capacitance at Resonant Frequency')
legend('C-32','K-31','C-50','K-48')
grid on

figure(95)
plot(x2,L_C_32_A,x2,L_K_31_A,x2,L_C_50_A,x2,L_K_48_A,x4,simuL)
title('Inductance at 100kHz')
legend('C-32','K-31','C-50','K-48')
grid on

figure(94)
plot(x2,Diff_30_CT)
title('CT Difference')
legend('0.3mm')
grid on
% 
% figure(93)
% plot(x,C_32_Ctt,x,K_31_Ctt)
% title('Turn to Turn capacitance')
% legend('C-32','K-31')
% grid on
%% 
d = 0.33e-3;
D = 0.045;
A = (D*pi)*d;
p = 0.01;
C = 8.854e-12 * (A/p)
