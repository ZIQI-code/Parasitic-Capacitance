%% 
C_F_N20_32_00 = csvread('N20_0.32C_01.CSV',3,0,[3,0,802,0]);
C_R_N20_32_00 = csvread('N20_0.32C_01.CSV',3,1,[3,1,802,1]);
C_I_N20_32_00 = csvread('N20_0.32C_01.CSV',3,2,[3,2,802,2]);
C_R_N20_32_01 = csvread('N20_0.32C_02.CSV',3,1,[3,1,802,1]);
C_I_N20_32_01 = csvread('N20_0.32C_02.CSV',3,2,[3,2,802,2]);
C_R_N20_32_02 = csvread('N20_0.32C_03.CSV',3,1,[3,1,802,1]);
C_I_N20_32_02 = csvread('N20_0.32C_03.CSV',3,2,[3,2,802,2]);

C_R_N20_32_A=zeros(800:1);
C_I_N20_32_A=zeros(800:1);
for i=1:800
    C_R_N20_32_A(i)= (C_R_N20_32_00(i)+C_R_N20_32_01(i)+C_R_N20_32_02(i))./6;
    C_I_N20_32_A(i)= (C_I_N20_32_00(i)+C_I_N20_32_01(i)+C_I_N20_32_02(i))./6;
end

C_F_N18_32_00 = csvread('N18_0.32C_01.CSV',3,0,[3,0,802,0]);
C_R_N18_32_00 = csvread('N18_0.32C_01.CSV',3,1,[3,1,802,1]);
C_I_N18_32_00 = csvread('N18_0.32C_01.CSV',3,2,[3,2,802,2]);
C_R_N18_32_01 = csvread('N18_0.32C_02.CSV',3,1,[3,1,802,1]);
C_I_N18_32_01 = csvread('N18_0.32C_02.CSV',3,2,[3,2,802,2]);
C_R_N18_32_02 = csvread('N18_0.32C_03.CSV',3,1,[3,1,802,1]);
C_I_N18_32_02 = csvread('N18_0.32C_03.CSV',3,2,[3,2,802,2]);

C_R_N18_32_A=zeros(800:1);
C_I_N18_32_A=zeros(800:1);
for i=1:800
    C_R_N18_32_A(i)= (C_R_N18_32_00(i)+C_R_N18_32_01(i)+C_R_N18_32_02(i))./6;
    C_I_N18_32_A(i)= (C_I_N18_32_00(i)+C_I_N18_32_01(i)+C_I_N18_32_02(i))./6;
end

C_F_N16_32_00 = csvread('N16_0.32C_01.CSV',3,0,[3,0,802,0]);
C_R_N16_32_00 = csvread('N16_0.32C_01.CSV',3,1,[3,1,802,1]);
C_I_N16_32_00 = csvread('N16_0.32C_01.CSV',3,2,[3,2,802,2]);
C_R_N16_32_01 = csvread('N16_0.32C_02.CSV',3,1,[3,1,802,1]);
C_I_N16_32_01 = csvread('N16_0.32C_02.CSV',3,2,[3,2,802,2]);
C_R_N16_32_02 = csvread('N16_0.32C_03.CSV',3,1,[3,1,802,1]);
C_I_N16_32_02 = csvread('N16_0.32C_03.CSV',3,2,[3,2,802,2]);

C_R_N16_32_A=zeros(800:1);
C_I_N16_32_A=zeros(800:1);
for i=1:800
    C_R_N16_32_A(i)= (C_R_N16_32_00(i)+C_R_N16_32_01(i)+C_R_N16_32_02(i))./6;
    C_I_N16_32_A(i)= (C_I_N16_32_00(i)+C_I_N16_32_01(i)+C_I_N16_32_02(i))./6;
end


C_F_N14_32_00 = csvread('N14_0.32C_01.CSV',3,0,[3,0,802,0]);
C_R_N14_32_00 = csvread('N14_0.32C_01.CSV',3,1,[3,1,802,1]);
C_I_N14_32_00 = csvread('N14_0.32C_01.CSV',3,2,[3,2,802,2]);
C_R_N14_32_01 = csvread('N14_0.32C_02.CSV',3,1,[3,1,802,1]);
C_I_N14_32_01 = csvread('N14_0.32C_02.CSV',3,2,[3,2,802,2]);
C_R_N14_32_02 = csvread('N14_0.32C_03.CSV',3,1,[3,1,802,1]);
C_I_N14_32_02 = csvread('N14_0.32C_03.CSV',3,2,[3,2,802,2]);

C_R_N14_32_A=zeros(800:1);
C_I_N14_32_A=zeros(800:1);
for i=1:800
    C_R_N14_32_A(i)= (C_R_N14_32_00(i)+C_R_N14_32_01(i)+C_R_N14_32_02(i))./6;
    C_I_N14_32_A(i)= (C_I_N14_32_00(i)+C_I_N14_32_01(i)+C_I_N14_32_02(i))./6;
end

C_F_N12_32_00 = csvread('N12_0.32C_01.CSV',3,0,[3,0,802,0]);
C_R_N12_32_00 = csvread('N12_0.32C_01.CSV',3,1,[3,1,802,1]);
C_I_N12_32_00 = csvread('N12_0.32C_01.CSV',3,2,[3,2,802,2]);
C_R_N12_32_01 = csvread('N12_0.32C_02.CSV',3,1,[3,1,802,1]);
C_I_N12_32_01 = csvread('N12_0.32C_02.CSV',3,2,[3,2,802,2]);
C_R_N12_32_02 = csvread('N12_0.32C_03.CSV',3,1,[3,1,802,1]);
C_I_N12_32_02 = csvread('N12_0.32C_03.CSV',3,2,[3,2,802,2]);

C_R_N12_32_A=zeros(800:1);
C_I_N12_32_A=zeros(800:1);
for i=1:800
    C_R_N12_32_A(i)= (C_R_N12_32_00(i)+C_R_N12_32_01(i)+C_R_N12_32_02(i))./6;
    C_I_N12_32_A(i)= (C_I_N12_32_00(i)+C_I_N12_32_01(i)+C_I_N12_32_02(i))./6;
end

C_F_N10_32_00 = csvread('N10_0.32C_01.CSV',3,0,[3,0,802,0]);
C_R_N10_32_00 = csvread('N10_0.32C_01.CSV',3,1,[3,1,802,1]);
C_I_N10_32_00 = csvread('N10_0.32C_01.CSV',3,2,[3,2,802,2]);
C_R_N10_32_01 = csvread('N10_0.32C_02.CSV',3,1,[3,1,802,1]);
C_I_N10_32_01 = csvread('N10_0.32C_02.CSV',3,2,[3,2,802,2]);
C_R_N10_32_02 = csvread('N10_0.32C_03.CSV',3,1,[3,1,802,1]);
C_I_N10_32_02 = csvread('N10_0.32C_03.CSV',3,2,[3,2,802,2]);

C_R_N10_32_A=zeros(800:1);
C_I_N10_32_A=zeros(800:1);
for i=1:800
    C_R_N10_32_A(i)= (C_R_N10_32_00(i)+C_R_N10_32_01(i)+C_R_N10_32_02(i))./6;
    C_I_N10_32_A(i)= (C_I_N10_32_00(i)+C_I_N10_32_01(i)+C_I_N10_32_02(i))./6;
end


x = [10,12,14,16,18,20];
L_C_32_0 = flip([C_I_N20_32_00(1),C_I_N18_32_00(1),C_I_N16_32_00(1),C_I_N14_32_00(1),C_I_N12_32_00(1),C_I_N10_32_00(1)]./(1e5*(2*pi)));
L_C_32_1 = flip([C_I_N20_32_01(1),C_I_N18_32_01(1),C_I_N16_32_01(1),C_I_N14_32_01(1),C_I_N12_32_01(1),C_I_N10_32_01(1)]./(1e5*(2*pi)));
L_C_32_2 = flip([C_I_N20_32_02(1),C_I_N18_32_02(1),C_I_N16_32_02(1),C_I_N14_32_02(1),C_I_N12_32_02(1),C_I_N10_32_02(1)]./(1e5*(2*pi)));
L_C_32_A = flip([C_I_N20_32_A(1),C_I_N18_32_A(1),C_I_N16_32_A(1),C_I_N14_32_A(1),C_I_N12_32_A(1),C_I_N10_32_A(1)]./(1e5*(2*pi)));
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
% plot(C_F_N8_32_00,C_R_N8_32_A)
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
% plot(C_F_N8_32_00,C_I_N8_32_A)
legend('N20,A','N18,A','N16,A','N14,A','N12,A','N10,A','N8,A')
title('Copper 0.32mm Imag Average')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off
%% 
K_F_N20_31_00 = csvread('N20_0.31K_01.CSV',3,0,[3,0,802,0]);
K_R_N20_31_00 = csvread('N20_0.31K_01.CSV',3,1,[3,1,802,1]);
K_I_N20_31_00 = csvread('N20_0.31K_01.CSV',3,2,[3,2,802,2]);
K_R_N20_31_01 = csvread('N20_0.31K_02.CSV',3,1,[3,1,802,1]);
K_I_N20_31_01 = csvread('N20_0.31K_02.CSV',3,2,[3,2,802,2]);
K_R_N20_31_02 = csvread('N20_0.31K_03.CSV',3,1,[3,1,802,1]);
K_I_N20_31_02 = csvread('N20_0.31K_03.CSV',3,2,[3,2,802,2]);

K_R_N20_31_A=zeros(800:1);
K_I_N20_31_A=zeros(800:1);
for i=1:800
    K_R_N20_31_A(i)= (K_R_N20_31_00(i)+K_R_N20_31_01(i)+K_R_N20_31_02(i))./6;
    K_I_N20_31_A(i)= (K_I_N20_31_00(i)+K_I_N20_31_01(i)+K_I_N20_31_02(i))./6;
end

K_F_N18_31_00 = csvread('N18_0.31K_01.CSV',3,0,[3,0,802,0]);
K_R_N18_31_00 = csvread('N18_0.31K_01.CSV',3,1,[3,1,802,1]);
K_I_N18_31_00 = csvread('N18_0.31K_01.CSV',3,2,[3,2,802,2]);
K_R_N18_31_01 = csvread('N18_0.31K_02.CSV',3,1,[3,1,802,1]);
K_I_N18_31_01 = csvread('N18_0.31K_02.CSV',3,2,[3,2,802,2]);
K_R_N18_31_02 = csvread('N18_0.31K_03.CSV',3,1,[3,1,802,1]);
K_I_N18_31_02 = csvread('N18_0.31K_03.CSV',3,2,[3,2,802,2]);

K_R_N18_31_A=zeros(800:1);
K_I_N18_31_A=zeros(800:1);
for i=1:800
    K_R_N18_31_A(i)= (K_R_N18_31_00(i)+K_R_N18_31_01(i)+K_R_N18_31_02(i))./6;
    K_I_N18_31_A(i)= (K_I_N18_31_00(i)+K_I_N18_31_01(i)+K_I_N18_31_02(i))./6;
end

K_F_N16_31_00 = csvread('N16_0.31K_01.CSV',3,0,[3,0,802,0]);
K_R_N16_31_00 = csvread('N16_0.31K_01.CSV',3,1,[3,1,802,1]);
K_I_N16_31_00 = csvread('N16_0.31K_01.CSV',3,2,[3,2,802,2]);
K_R_N16_31_01 = csvread('N16_0.31K_02.CSV',3,1,[3,1,802,1]);
K_I_N16_31_01 = csvread('N16_0.31K_02.CSV',3,2,[3,2,802,2]);
K_R_N16_31_02 = csvread('N16_0.31K_03.CSV',3,1,[3,1,802,1]);
K_I_N16_31_02 = csvread('N16_0.31K_03.CSV',3,2,[3,2,802,2]);

K_R_N16_31_A=zeros(800:1);
K_I_N16_31_A=zeros(800:1);
for i=1:800
    K_R_N16_31_A(i)= (K_R_N16_31_00(i)+K_R_N16_31_01(i)+K_R_N16_31_02(i))./6;
    K_I_N16_31_A(i)= (K_I_N16_31_00(i)+K_I_N16_31_01(i)+K_I_N16_31_02(i))./6;
end


K_F_N14_31_00 = csvread('N14_0.31K_01.CSV',3,0,[3,0,802,0]);
K_R_N14_31_00 = csvread('N14_0.31K_01.CSV',3,1,[3,1,802,1]);
K_I_N14_31_00 = csvread('N14_0.31K_01.CSV',3,2,[3,2,802,2]);
K_R_N14_31_01 = csvread('N14_0.31K_02.CSV',3,1,[3,1,802,1]);
K_I_N14_31_01 = csvread('N14_0.31K_02.CSV',3,2,[3,2,802,2]);
K_R_N14_31_02 = csvread('N14_0.31K_03.CSV',3,1,[3,1,802,1]);
K_I_N14_31_02 = csvread('N14_0.31K_03.CSV',3,2,[3,2,802,2]);

K_R_N14_31_A=zeros(800:1);
K_I_N14_31_A=zeros(800:1);
for i=1:800
    K_R_N14_31_A(i)= (K_R_N14_31_00(i)+K_R_N14_31_01(i)+K_R_N14_31_02(i))./6;
    K_I_N14_31_A(i)= (K_I_N14_31_00(i)+K_I_N14_31_01(i)+K_I_N14_31_02(i))./6;
end

K_F_N12_31_00 = csvread('N12_0.31K_01.CSV',3,0,[3,0,802,0]);
K_R_N12_31_00 = csvread('N12_0.31K_01.CSV',3,1,[3,1,802,1]);
K_I_N12_31_00 = csvread('N12_0.31K_01.CSV',3,2,[3,2,802,2]);
K_R_N12_31_01 = csvread('N12_0.31K_02.CSV',3,1,[3,1,802,1]);
K_I_N12_31_01 = csvread('N12_0.31K_02.CSV',3,2,[3,2,802,2]);
K_R_N12_31_02 = csvread('N12_0.31K_03.CSV',3,1,[3,1,802,1]);
K_I_N12_31_02 = csvread('N12_0.31K_03.CSV',3,2,[3,2,802,2]);

K_R_N12_31_A=zeros(800:1);
K_I_N12_31_A=zeros(800:1);
for i=1:800
    K_R_N12_31_A(i)= (K_R_N12_31_00(i)+K_R_N12_31_01(i)+K_R_N12_31_02(i))./6;
    K_I_N12_31_A(i)= (K_I_N12_31_00(i)+K_I_N12_31_01(i)+K_I_N12_31_02(i))./6;
end

K_F_N10_31_00 = csvread('N10_0.31K_01.CSV',3,0,[3,0,802,0]);
K_R_N10_31_00 = csvread('N10_0.31K_01.CSV',3,1,[3,1,802,1]);
K_I_N10_31_00 = csvread('N10_0.31K_01.CSV',3,2,[3,2,802,2]);
K_R_N10_31_01 = csvread('N10_0.31K_02.CSV',3,1,[3,1,802,1]);
K_I_N10_31_01 = csvread('N10_0.31K_02.CSV',3,2,[3,2,802,2]);
K_R_N10_31_02 = csvread('N10_0.31K_03.CSV',3,1,[3,1,802,1]);
K_I_N10_31_02 = csvread('N10_0.31K_03.CSV',3,2,[3,2,802,2]);

K_R_N10_31_A=zeros(800:1);
K_I_N10_31_A=zeros(800:1);
for i=1:800
    K_R_N10_31_A(i)= (K_R_N10_31_00(i)+K_R_N10_31_01(i)+K_R_N10_31_02(i))./6;
    K_I_N10_31_A(i)= (K_I_N10_31_00(i)+K_I_N10_31_01(i)+K_I_N10_31_02(i))./6;
end

K_F_N8_31_00 = csvread('N8_0.31K_01.CSV',3,0,[3,0,802,0]);
K_R_N8_31_00 = csvread('N8_0.31K_01.CSV',3,1,[3,1,802,1]);
K_I_N8_31_00 = csvread('N8_0.31K_01.CSV',3,2,[3,2,802,2]);
K_R_N8_31_01 = csvread('N8_0.31K_02.CSV',3,1,[3,1,802,1]);
K_I_N8_31_01 = csvread('N8_0.31K_02.CSV',3,2,[3,2,802,2]);
K_R_N8_31_02 = csvread('N8_0.31K_03.CSV',3,1,[3,1,802,1]);
K_I_N8_31_02 = csvread('N8_0.31K_03.CSV',3,2,[3,2,802,2]);

K_R_N8_31_A=zeros(800:1);
K_I_N8_31_A=zeros(800:1);
for i=1:800
    K_R_N8_31_A(i)= (K_R_N8_31_00(i)+K_R_N8_31_01(i)+K_R_N8_31_02(i))./6;
    K_I_N8_31_A(i)= (K_I_N8_31_00(i)+K_I_N8_31_01(i)+K_I_N8_31_02(i))./6;
end

K_F_N6_31_00 = csvread('N6_0.31K_01.CSV',3,0,[3,0,802,0]);
K_R_N6_31_00 = csvread('N6_0.31K_01.CSV',3,1,[3,1,802,1]);
K_I_N6_31_00 = csvread('N6_0.31K_01.CSV',3,2,[3,2,802,2]);
K_R_N6_31_01 = csvread('N6_0.31K_02.CSV',3,1,[3,1,802,1]);
K_I_N6_31_01 = csvread('N6_0.31K_02.CSV',3,2,[3,2,802,2]);
K_R_N6_31_02 = csvread('N6_0.31K_03.CSV',3,1,[3,1,802,1]);
K_I_N6_31_02 = csvread('N6_0.31K_03.CSV',3,2,[3,2,802,2]);

K_R_N6_31_A=zeros(800:1);
K_I_N6_31_A=zeros(800:1);
for i=1:800
    K_R_N6_31_A(i)= (K_R_N6_31_00(i)+K_R_N6_31_01(i)+K_R_N6_31_02(i))./6;
    K_I_N6_31_A(i)= (K_I_N6_31_00(i)+K_I_N6_31_01(i)+K_I_N6_31_02(i))./6;
end

x = [6,8,10,12,14,16,18,20];
L_K_31_0 = flip([K_I_N20_31_00(1),K_I_N18_31_00(1),K_I_N16_31_00(1),K_I_N14_31_00(1),K_I_N12_31_00(1),K_I_N10_31_00(1),K_I_N8_31_00(1),K_I_N6_31_00(1)]./(1e5*(2*pi)));
L_K_31_1 = flip([K_I_N20_31_01(1),K_I_N18_31_01(1),K_I_N16_31_01(1),K_I_N14_31_01(1),K_I_N12_31_01(1),K_I_N10_31_01(1),K_I_N8_31_01(1),K_I_N6_31_01(1)]./(1e5*(2*pi)));
L_K_31_2 = flip([K_I_N20_31_02(1),K_I_N18_31_02(1),K_I_N16_31_02(1),K_I_N14_31_02(1),K_I_N12_31_02(1),K_I_N10_31_02(1),K_I_N8_31_02(1),K_I_N6_31_02(1)]./(1e5*(2*pi)));
L_K_31_A = [K_I_N20_31_A(1),K_I_N18_31_A(1),K_I_N16_31_A(1),K_I_N14_31_A(1),K_I_N12_31_A(1),K_I_N10_31_A(1),K_I_N8_31_A(1),K_I_N6_31_A(1)]./(1e5*(2*pi));
L_K_31_A = flip(L_K_31_A);
figure(7)
plot(x,L_K_31_0,x,L_K_31_1,x,L_K_31_2)
grid on
title('Inductance K_31')
legend('1','2','3')

figure(8)
plot(x,L_K_31_A)
grid on
title('Average Inductance K_31')

figure(9)
plot(K_F_N20_31_00,K_R_N20_31_00,K_F_N20_31_00,K_R_N20_31_01,K_F_N20_31_00,K_R_N20_31_02)
hold on
plot(K_F_N18_31_00,K_R_N18_31_00,K_F_N18_31_00,K_R_N18_31_01,K_F_N18_31_00,K_R_N18_31_02)
plot(K_F_N16_31_00,K_R_N16_31_00,K_F_N16_31_00,K_R_N16_31_01,K_F_N16_31_00,K_R_N16_31_02)
plot(K_F_N14_31_00,K_R_N14_31_00,K_F_N14_31_00,K_R_N14_31_01,K_F_N14_31_00,K_R_N14_31_02)
plot(K_F_N12_31_00,K_R_N12_31_00,K_F_N12_31_00,K_R_N12_31_01,K_F_N12_31_00,K_R_N12_31_02)
plot(K_F_N10_31_00,K_R_N10_31_00,K_F_N10_31_00,K_R_N10_31_01,K_F_N10_31_00,K_R_N10_31_02)
plot(K_F_N8_31_00,K_R_N8_31_00,K_F_N8_31_00,K_R_N8_31_01,K_F_N8_31_00,K_R_N8_31_02)
plot(K_F_N6_31_00,K_R_N6_31_00,K_F_N6_31_00,K_R_N6_31_01,K_F_N6_31_00,K_R_N6_31_02)
legend('N20-1','N20-2','N20-3','N18-1','N18-2','N18-3','N16-1','N16-2','N16-3','N14-1','N14-2','N14-3','N12-1','N12-2','N12-3','N10-1','N10-2','N10-3','N8-1','N8-2','N8-3')
title('Knitted 0.31mm Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(10)
plot(K_F_N20_31_00,K_I_N20_31_00,K_F_N20_31_00,K_I_N20_31_01,K_F_N20_31_00,K_I_N20_31_02)
hold on
plot(K_F_N18_31_00,K_I_N18_31_00,K_F_N18_31_00,K_I_N18_31_01,K_F_N18_31_00,K_I_N18_31_02)
plot(K_F_N16_31_00,K_I_N16_31_00,K_F_N16_31_00,K_I_N16_31_01,K_F_N16_31_00,K_I_N16_31_02)
plot(K_F_N14_31_00,K_I_N14_31_00,K_F_N14_31_00,K_I_N14_31_01,K_F_N14_31_00,K_I_N14_31_02)
plot(K_F_N12_31_00,K_I_N12_31_00,K_F_N12_31_00,K_I_N12_31_01,K_F_N12_31_00,K_I_N12_31_02)
plot(K_F_N10_31_00,K_I_N10_31_00,K_F_N10_31_00,K_I_N10_31_01,K_F_N10_31_00,K_I_N10_31_02)
plot(K_F_N8_31_00,K_I_N8_31_00,K_F_N8_31_00,K_I_N8_31_01,K_F_N8_31_00,K_I_N8_31_02)
plot(K_F_N6_31_00,K_I_N6_31_00,K_F_N6_31_00,K_I_N6_31_01,K_F_N6_31_00,K_I_N6_31_02)
legend('N20-1','N20-2','N20-3','N18-1','N18-2','N18-3','N16-1','N16-2','N16-3','N14-1','N14-2','N14-3','N12-1','N12-2','N12-3','N10-1','N10-2','N10-3','N8-1','N8-2','N8-3')
title('Knitted 0.31mm Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

figure(11)
plot(K_F_N20_31_00,K_R_N20_31_A)
hold on
plot(K_F_N18_31_00,K_R_N18_31_A)
plot(K_F_N16_31_00,K_R_N16_31_A)
plot(K_F_N14_31_00,K_R_N14_31_A)
plot(K_F_N12_31_00,K_R_N12_31_A)
plot(K_F_N10_31_00,K_R_N10_31_A)
plot(K_F_N8_31_00,K_R_N8_31_A)
plot(K_F_N8_31_00,K_R_N6_31_A)
legend('N20,A','N18,A','N16,A','N14,A','N12,A','N10,A','N8,A')
title('Knitted 0.31mm Real Average')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

figure(12)
plot(K_F_N20_31_00,K_I_N20_31_A)
hold on
plot(K_F_N18_31_00,K_I_N18_31_A)
plot(K_F_N16_31_00,K_I_N16_31_A)
plot(K_F_N14_31_00,K_I_N14_31_A)
plot(K_F_N12_31_00,K_I_N12_31_A)
plot(K_F_N10_31_00,K_I_N10_31_A)
plot(K_F_N8_31_00,K_I_N8_31_A)
plot(K_F_N8_31_00,K_I_N6_31_A)
legend('N20,A','N18,A','N16,A','N14,A','N12,A','N10,A','N8,A')
title('Knitted 0.31mm Imag Average')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off
%% 
x = [10,12,14,16,18,20];
x4 = [6,8,10,12,14,16,18];

F_C_32 = [6.5241    5.9115    5.2488    4.7737    4.3486    3.9735].*1.0e+07;
F_K_31 = [6.3991    5.7364    5.1488    4.6112    4.1735    3.8485].*1.0e+07;

simu = [170.0150,137.0315,116.0420,102.0490,91.0545,82.0590,75.0625].*1e+6;
simuL = ([0.829,1.16,1.48,1.81,2.13,2.43,2.75]./(0.2*pi)).*1e-6;

figure(99)
plot(x,F_C_32,x4,simu,x,F_K_31)
legend('C-32','Sim','K-31')
title('Resonant Frequency')
grid on
%% 
C_32_CT = ((2.*pi.*F_C_32).^(-2))./L_C_32_A;
C_32_Ctt = C_32_CT./x;
simuC = ((2.*pi.*simu).^(-2))./simuL;
K_31_CT = 1./(4.*(pi.*F_K_31).^2 .*L_K_31_A);
K_31_Ctt = K_31_CT./x;
Diff_30_CT = K_31_CT-C_32_CT;

figure(96)
plot(x,C_32_CT,x4,simuC,x,K_31_CT)
title('Total Capacitance at Resonant Frequency')
legend('C-32','Sim','K-31')
grid on

figure(95)
plot(x,L_C_32_A,x4,simuL,x,L_K_31_A)
title('Inductance at 100kHz')
legend('C-32','Sim','K-31')
grid on

figure(94)
plot(x,Diff_30_CT)
title('CT Difference')
legend('0.3mm')
grid on

figure(93)
plot(x,C_32_Ctt,x,K_31_Ctt)
title('Turn to Turn capacitance')
legend('C-32','K-31')
grid on