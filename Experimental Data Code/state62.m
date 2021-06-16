%% 0.18Knit
K_F_N20_18_01 = csvread('N20_0.18K_01.CSV',3,0,[3,0,802,0]);
K_R_N20_18_01 = csvread('N20_0.18K_01.CSV',3,1,[3,1,802,1]);
K_I_N20_18_01 = csvread('N20_0.18K_01.CSV',3,2,[3,2,802,2]);
K_R_N20_18_02 = csvread('N20_0.18K_02.CSV',3,1,[3,1,802,1]);
K_I_N20_18_02 = csvread('N20_0.18K_02.CSV',3,2,[3,2,802,2]);
K_R_N20_18_03 = csvread('N20_0.18K_03.CSV',3,1,[3,1,802,1]);
K_I_N20_18_03 = csvread('N20_0.18K_03.CSV',3,2,[3,2,802,2]);

K_R_N20_18_A=zeros(800:1);
K_I_N20_18_A=zeros(800:1);
for i=1:800
    K_R_N20_18_A(i)= (K_R_N20_18_03(i)+K_R_N20_18_02(i)+K_R_N20_18_01(i))./3;
    K_I_N20_18_A(i)= (K_I_N20_18_03(i)+K_I_N20_18_02(i)+K_I_N20_18_01(i))./3;
end

K_F_N18_18_01 = csvread('N18_0.18K_01.CSV',3,0,[3,0,802,0]);
K_R_N18_18_01 = csvread('N18_0.18K_01.CSV',3,1,[3,1,802,1]);
K_I_N18_18_01 = csvread('N18_0.18K_01.CSV',3,2,[3,2,802,2]);
K_R_N18_18_02 = csvread('N18_0.18K_02.CSV',3,1,[3,1,802,1]);
K_I_N18_18_02 = csvread('N18_0.18K_02.CSV',3,2,[3,2,802,2]);
K_R_N18_18_03 = csvread('N18_0.18K_03.CSV',3,1,[3,1,802,1]);
K_I_N18_18_03 = csvread('N18_0.18K_03.CSV',3,2,[3,2,802,2]);

K_R_N18_18_A=zeros(800:1);
K_I_N18_18_A=zeros(800:1);
for i=1:800
    K_R_N18_18_A(i)= (K_R_N18_18_03(i)+K_R_N18_18_02(i)+K_R_N18_18_01(i))./3;
    K_I_N18_18_A(i)= (K_I_N18_18_03(i)+K_I_N18_18_02(i)+K_I_N18_18_01(i))./3;
end

K_F_N16_18_01 = csvread('N16_0.18K_01.CSV',3,0,[3,0,802,0]);
K_R_N16_18_01 = csvread('N16_0.18K_01.CSV',3,1,[3,1,802,1]);
K_I_N16_18_01 = csvread('N16_0.18K_01.CSV',3,2,[3,2,802,2]);
K_R_N16_18_02 = csvread('N16_0.18K_02.CSV',3,1,[3,1,802,1]);
K_I_N16_18_02 = csvread('N16_0.18K_02.CSV',3,2,[3,2,802,2]);
K_R_N16_18_03 = csvread('N16_0.18K_03.CSV',3,1,[3,1,802,1]);
K_I_N16_18_03 = csvread('N16_0.18K_03.CSV',3,2,[3,2,802,2]);

K_R_N16_18_A=zeros(800:1);
K_I_N16_18_A=zeros(800:1);
for i=1:800
    K_R_N16_18_A(i)= (K_R_N16_18_03(i)+K_R_N16_18_02(i)+K_R_N16_18_01(i))./3;
    K_I_N16_18_A(i)= (K_I_N16_18_03(i)+K_I_N16_18_02(i)+K_I_N16_18_01(i))./3;
end


K_F_N14_18_01 = csvread('N14_0.18K_01.CSV',3,0,[3,0,802,0]);
K_R_N14_18_01 = csvread('N14_0.18K_01.CSV',3,1,[3,1,802,1]);
K_I_N14_18_01 = csvread('N14_0.18K_01.CSV',3,2,[3,2,802,2]);
K_R_N14_18_02 = csvread('N14_0.18K_02.CSV',3,1,[3,1,802,1]);
K_I_N14_18_02 = csvread('N14_0.18K_02.CSV',3,2,[3,2,802,2]);
K_R_N14_18_03 = csvread('N14_0.18K_03.CSV',3,1,[3,1,802,1]);
K_I_N14_18_03 = csvread('N14_0.18K_03.CSV',3,2,[3,2,802,2]);

K_R_N14_18_A=zeros(800:1);
K_I_N14_18_A=zeros(800:1);
for i=1:800
    K_R_N14_18_A(i)= (K_R_N14_18_03(i)+K_R_N14_18_02(i)+K_R_N14_18_01(i))./3;
    K_I_N14_18_A(i)= (K_I_N14_18_03(i)+K_I_N14_18_02(i)+K_I_N14_18_01(i))./3;
end

K_F_N12_18_01 = csvread('N12_0.18K_01.CSV',3,0,[3,0,802,0]);
K_R_N12_18_01 = csvread('N12_0.18K_01.CSV',3,1,[3,1,802,1]);
K_I_N12_18_01 = csvread('N12_0.18K_01.CSV',3,2,[3,2,802,2]);
K_R_N12_18_02 = csvread('N12_0.18K_02.CSV',3,1,[3,1,802,1]);
K_I_N12_18_02 = csvread('N12_0.18K_02.CSV',3,2,[3,2,802,2]);
K_R_N12_18_03 = csvread('N12_0.18K_03.CSV',3,1,[3,1,802,1]);
K_I_N12_18_03 = csvread('N12_0.18K_03.CSV',3,2,[3,2,802,2]);

K_R_N12_18_A=zeros(800:1);
K_I_N12_18_A=zeros(800:1);
for i=1:800
    K_R_N12_18_A(i)= (K_R_N12_18_03(i)+K_R_N12_18_02(i)+K_R_N12_18_01(i))./3;
    K_I_N12_18_A(i)= (K_I_N12_18_03(i)+K_I_N12_18_02(i)+K_I_N12_18_01(i))./3;
end

K_F_N10_18_01 = csvread('N10_0.18K_01.CSV',3,0,[3,0,802,0]);
K_R_N10_18_01 = csvread('N10_0.18K_01.CSV',3,1,[3,1,802,1]);
K_I_N10_18_01 = csvread('N10_0.18K_01.CSV',3,2,[3,2,802,2]);
K_R_N10_18_02 = csvread('N10_0.18K_02.CSV',3,1,[3,1,802,1]);
K_I_N10_18_02 = csvread('N10_0.18K_02.CSV',3,2,[3,2,802,2]);
K_R_N10_18_03 = csvread('N10_0.18K_03.CSV',3,1,[3,1,802,1]);
K_I_N10_18_03 = csvread('N10_0.18K_03.CSV',3,2,[3,2,802,2]);

K_R_N10_18_A=zeros(800:1);
K_I_N10_18_A=zeros(800:1);
for i=1:800
    K_R_N10_18_A(i)= (K_R_N10_18_03(i)+K_R_N10_18_02(i)+K_R_N10_18_01(i))./3;
    K_I_N10_18_A(i)= (K_I_N10_18_03(i)+K_I_N10_18_02(i)+K_I_N10_18_01(i))./3;
end

K_F_N8_18_01 = csvread('N8_0.18K_01.CSV',3,0,[3,0,802,0]);
K_R_N8_18_01 = csvread('N8_0.18K_01.CSV',3,1,[3,1,802,1]);
K_I_N8_18_01 = csvread('N8_0.18K_01.CSV',3,2,[3,2,802,2]);
K_R_N8_18_02 = csvread('N8_0.18K_02.CSV',3,1,[3,1,802,1]);
K_I_N8_18_02 = csvread('N8_0.18K_02.CSV',3,2,[3,2,802,2]);
K_R_N8_18_03 = csvread('N8_0.18K_03.CSV',3,1,[3,1,802,1]);
K_I_N8_18_03 = csvread('N8_0.18K_03.CSV',3,2,[3,2,802,2]);

K_R_N8_18_A=zeros(800:1);
K_I_N8_18_A=zeros(800:1);
for i=1:800
    K_R_N8_18_A(i)= (K_R_N8_18_03(i)+K_R_N8_18_02(i)+K_R_N8_18_01(i))./3;
    K_I_N8_18_A(i)= (K_I_N8_18_03(i)+K_I_N8_18_02(i)+K_I_N8_18_01(i))./3;
end

x = [8,10,12,14,16,18,20];

freq = K_F_N20_18_01(2:8);
imped = transpose(K_I_N20_18_A(2:8));
format long
slope = freq\imped;
imped_pred = slope .* freq;

imped_goal = slope .* K_F_N20_18_01(1)

freq = K_F_N18_18_01(2:8);
imped = transpose(K_I_N18_18_A(2:8));
format long
slope = freq\imped;
imped_pred = slope .* freq;

imped_goal = slope .* K_F_N20_18_01(1)

freq = K_F_N20_18_01(2:8);
imped = transpose(K_I_N16_18_A(2:8));
format long
slope = freq\imped;
imped_pred = slope .* freq;

imped_goal = slope .* K_F_N20_18_01(1)

% L_K_31_3 = flip([K_I_N20_31_03(1),K_I_N18_31_03(1),K_I_N16_31_03(1),K_I_N14_31_03(1),K_I_N12_31_03(1),K_I_N10_31_03(1),K_I_N8_31_03(1)]./(1e5*(2*pi)));
% L_K_31_4 = flip([K_I_N20_31_04(1),K_I_N18_31_04(1),K_I_N16_31_04(1),K_I_N14_31_04(1),K_I_N12_31_04(1),K_I_N10_31_04(1),K_I_N8_31_04(1)]./(1e5*(2*pi)));
% L_K_31_5 = flip([K_I_N20_31_05(1),K_I_N18_31_05(1),K_I_N16_31_05(1),K_I_N14_31_05(1),K_I_N12_31_05(1),K_I_N10_31_05(1),K_I_N8_31_05(1)]./(1e5*(2*pi)));

% L_K_31_A = [K_I_N20_31_A(1),K_I_N18_31_A(1),K_I_N16_31_A(1),K_I_N14_31_A(1),K_I_N12_31_A(1),K_I_N10_31_A(1),K_I_N8_31_A(1)]./(1e5*(2*pi));
% L_K_31_A = flip(L_K_31_A);
% figure(7)
% plot(x,L_K_31_3,x,L_K_31_4,x,L_K_31_5)
% grid on
% title('Inductance K_31')
% legend('1','2','3')

% figure(8)
% plot(x,L_K_31_A)
% grid on
% title('Average Inductance K_31')

figure(9)
plot(K_F_N20_18_01,K_R_N20_18_03,K_F_N20_18_01,K_R_N20_18_02,K_F_N20_18_01,K_R_N20_18_01)
hold on
plot(K_F_N18_18_01,K_R_N18_18_03,K_F_N18_18_01,K_R_N18_18_02,K_F_N18_18_01,K_R_N18_18_01)
plot(K_F_N16_18_01,K_R_N16_18_03,K_F_N16_18_01,K_R_N16_18_02,K_F_N16_18_01,K_R_N16_18_01)
plot(K_F_N14_18_01,K_R_N14_18_03,K_F_N14_18_01,K_R_N14_18_02,K_F_N14_18_01,K_R_N14_18_01)
plot(K_F_N12_18_01,K_R_N12_18_03,K_F_N12_18_01,K_R_N12_18_02,K_F_N12_18_01,K_R_N12_18_01)
plot(K_F_N10_18_01,K_R_N10_18_03,K_F_N10_18_01,K_R_N10_18_02,K_F_N10_18_01,K_R_N10_18_01)
plot(K_F_N8_18_01,K_R_N8_18_03,K_F_N8_18_01,K_R_N8_18_02,K_F_N8_18_01,K_R_N8_18_01)

legend('N20-1','N20-2','N20-3','N18-1','N18-2','N18-3','N16-1','N16-2','N16-3','N14-1','N14-2','N14-3','N12-1','N12-2','N12-3','N10-1','N10-2','N10-3','N8-1','N8-2','N8-3')
title('Knitted 0.18mm Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(10)
plot(K_F_N20_18_01,K_I_N20_18_03,K_F_N20_18_01,K_I_N20_18_02,K_F_N20_18_01,K_I_N20_18_01)
hold on
plot(K_F_N18_18_01,K_I_N18_18_03,K_F_N18_18_01,K_I_N18_18_02,K_F_N18_18_01,K_I_N18_18_01)
plot(K_F_N16_18_01,K_I_N16_18_03,K_F_N16_18_01,K_I_N16_18_02,K_F_N16_18_01,K_I_N16_18_01)
plot(K_F_N14_18_01,K_I_N14_18_03,K_F_N14_18_01,K_I_N14_18_02,K_F_N14_18_01,K_I_N14_18_01)
plot(K_F_N12_18_01,K_I_N12_18_03,K_F_N12_18_01,K_I_N12_18_02,K_F_N12_18_01,K_I_N12_18_01)
plot(K_F_N10_18_01,K_I_N10_18_03,K_F_N10_18_01,K_I_N10_18_02,K_F_N10_18_01,K_I_N10_18_01)
plot(K_F_N8_18_01,K_I_N8_18_03,K_F_N8_18_01,K_I_N8_18_02,K_F_N8_18_01,K_I_N8_18_01)

legend('N20-1','N20-2','N20-3','N18-1','N18-2','N18-3','N16-1','N16-2','N16-3','N14-1','N14-2','N14-3','N12-1','N12-2','N12-3','N10-1','N10-2','N10-3','N8-1','N8-2','N8-3')
title('Knitted 0.18mm Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

figure(11)
plot(K_F_N20_18_01,K_R_N20_18_A)
hold on
plot(K_F_N18_18_01,K_R_N18_18_A)
plot(K_F_N16_18_01,K_R_N16_18_A)
plot(K_F_N14_18_01,K_R_N14_18_A)
plot(K_F_N12_18_01,K_R_N12_18_A)
plot(K_F_N10_18_01,K_R_N10_18_A)
plot(K_F_N8_18_01,K_R_N8_18_A)

legend('N20,A','N18,A','N16,A','N14,A','N12,A','N10,A','N8,A')
title('Knitted 0.18mm Real Average')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

figure(12)
plot(K_F_N20_18_01,K_I_N20_18_A)
hold on
plot(K_F_N18_18_01,K_I_N18_18_A)
plot(K_F_N16_18_01,K_I_N16_18_A)
plot(K_F_N14_18_01,K_I_N14_18_A)
plot(K_F_N12_18_01,K_I_N12_18_A)
plot(K_F_N10_18_01,K_I_N10_18_A)
plot(K_F_N8_18_01,K_I_N8_18_A)

legend('N20,A','N18,A','N16,A','N14,A','N12,A','N10,A','N8,A')
title('Knitted 0.18mm Imag Average')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

%% 0.25Knit
K_F_N20_25_01 = csvread('N20_0.25K_01.CSV',3,0,[3,0,802,0]);
K_R_N20_25_01 = csvread('N20_0.25K_01.CSV',3,1,[3,1,802,1]);
K_I_N20_25_01 = csvread('N20_0.25K_01.CSV',3,2,[3,2,802,2]);
K_R_N20_25_02 = csvread('N20_0.25K_02.CSV',3,1,[3,1,802,1]);
K_I_N20_25_02 = csvread('N20_0.25K_02.CSV',3,2,[3,2,802,2]);
K_R_N20_25_03 = csvread('N20_0.25K_03.CSV',3,1,[3,1,802,1]);
K_I_N20_25_03 = csvread('N20_0.25K_03.CSV',3,2,[3,2,802,2]);

K_R_N20_25_A=zeros(800:1);
K_I_N20_25_A=zeros(800:1);
for i=1:800
    K_R_N20_25_A(i)= (K_R_N20_25_03(i)+K_R_N20_25_02(i)+K_R_N20_25_01(i))./3;
    K_I_N20_25_A(i)= (K_I_N20_25_03(i)+K_I_N20_25_02(i)+K_I_N20_25_01(i))./3;
end

K_F_N18_25_01 = csvread('N18_0.25K_01.CSV',3,0,[3,0,802,0]);
K_R_N18_25_01 = csvread('N18_0.25K_01.CSV',3,1,[3,1,802,1]);
K_I_N18_25_01 = csvread('N18_0.25K_01.CSV',3,2,[3,2,802,2]);
K_R_N18_25_02 = csvread('N18_0.25K_02.CSV',3,1,[3,1,802,1]);
K_I_N18_25_02 = csvread('N18_0.25K_02.CSV',3,2,[3,2,802,2]);
K_R_N18_25_03 = csvread('N18_0.25K_03.CSV',3,1,[3,1,802,1]);
K_I_N18_25_03 = csvread('N18_0.25K_03.CSV',3,2,[3,2,802,2]);

K_R_N18_25_A=zeros(800:1);
K_I_N18_25_A=zeros(800:1);
for i=1:800
    K_R_N18_25_A(i)= (K_R_N18_25_03(i)+K_R_N18_25_02(i)+K_R_N18_25_01(i))./3;
    K_I_N18_25_A(i)= (K_I_N18_25_03(i)+K_I_N18_25_02(i)+K_I_N18_25_01(i))./3;
end

K_F_N16_25_01 = csvread('N16_0.25K_01.CSV',3,0,[3,0,802,0]);
K_R_N16_25_01 = csvread('N16_0.25K_01.CSV',3,1,[3,1,802,1]);
K_I_N16_25_01 = csvread('N16_0.25K_01.CSV',3,2,[3,2,802,2]);
K_R_N16_25_02 = csvread('N16_0.25K_02.CSV',3,1,[3,1,802,1]);
K_I_N16_25_02 = csvread('N16_0.25K_02.CSV',3,2,[3,2,802,2]);
K_R_N16_25_03 = csvread('N16_0.25K_03.CSV',3,1,[3,1,802,1]);
K_I_N16_25_03 = csvread('N16_0.25K_03.CSV',3,2,[3,2,802,2]);

K_R_N16_25_A=zeros(800:1);
K_I_N16_25_A=zeros(800:1);
for i=1:800
    K_R_N16_25_A(i)= (K_R_N16_25_03(i)+K_R_N16_25_02(i)+K_R_N16_25_01(i))./3;
    K_I_N16_25_A(i)= (K_I_N16_25_03(i)+K_I_N16_25_02(i)+K_I_N16_25_01(i))./3;
end


K_F_N14_25_01 = csvread('N14_0.25K_01.CSV',3,0,[3,0,802,0]);
K_R_N14_25_01 = csvread('N14_0.25K_01.CSV',3,1,[3,1,802,1]);
K_I_N14_25_01 = csvread('N14_0.25K_01.CSV',3,2,[3,2,802,2]);
K_R_N14_25_02 = csvread('N14_0.25K_02.CSV',3,1,[3,1,802,1]);
K_I_N14_25_02 = csvread('N14_0.25K_02.CSV',3,2,[3,2,802,2]);
K_R_N14_25_03 = csvread('N14_0.25K_03.CSV',3,1,[3,1,802,1]);
K_I_N14_25_03 = csvread('N14_0.25K_03.CSV',3,2,[3,2,802,2]);

K_R_N14_25_A=zeros(800:1);
K_I_N14_25_A=zeros(800:1);
for i=1:800
    K_R_N14_25_A(i)= (K_R_N14_25_03(i)+K_R_N14_25_02(i)+K_R_N14_25_01(i))./3;
    K_I_N14_25_A(i)= (K_I_N14_25_03(i)+K_I_N14_25_02(i)+K_I_N14_25_01(i))./3;
end

K_F_N12_25_01 = csvread('N12_0.25K_01.CSV',3,0,[3,0,802,0]);
K_R_N12_25_01 = csvread('N12_0.25K_01.CSV',3,1,[3,1,802,1]);
K_I_N12_25_01 = csvread('N12_0.25K_01.CSV',3,2,[3,2,802,2]);
K_R_N12_25_02 = csvread('N12_0.25K_02.CSV',3,1,[3,1,802,1]);
K_I_N12_25_02 = csvread('N12_0.25K_02.CSV',3,2,[3,2,802,2]);
K_R_N12_25_03 = csvread('N12_0.25K_03.CSV',3,1,[3,1,802,1]);
K_I_N12_25_03 = csvread('N12_0.25K_03.CSV',3,2,[3,2,802,2]);

K_R_N12_25_A=zeros(800:1);
K_I_N12_25_A=zeros(800:1);
for i=1:800
    K_R_N12_25_A(i)= (K_R_N12_25_03(i)+K_R_N12_25_02(i)+K_R_N12_25_01(i))./3;
    K_I_N12_25_A(i)= (K_I_N12_25_03(i)+K_I_N12_25_02(i)+K_I_N12_25_01(i))./3;
end

K_F_N10_25_01 = csvread('N10_0.25K_01.CSV',3,0,[3,0,802,0]);
K_R_N10_25_01 = csvread('N10_0.25K_01.CSV',3,1,[3,1,802,1]);
K_I_N10_25_01 = csvread('N10_0.25K_01.CSV',3,2,[3,2,802,2]);
K_R_N10_25_02 = csvread('N10_0.25K_02.CSV',3,1,[3,1,802,1]);
K_I_N10_25_02 = csvread('N10_0.25K_02.CSV',3,2,[3,2,802,2]);
K_R_N10_25_03 = csvread('N10_0.25K_03.CSV',3,1,[3,1,802,1]);
K_I_N10_25_03 = csvread('N10_0.25K_03.CSV',3,2,[3,2,802,2]);

K_R_N10_25_A=zeros(800:1);
K_I_N10_25_A=zeros(800:1);
for i=1:800
    K_R_N10_25_A(i)= (K_R_N10_25_03(i)+K_R_N10_25_02(i)+K_R_N10_25_01(i))./3;
    K_I_N10_25_A(i)= (K_I_N10_25_03(i)+K_I_N10_25_02(i)+K_I_N10_25_01(i))./3;
end

K_F_N8_25_01 = csvread('N8_0.25K_01.CSV',3,0,[3,0,802,0]);
K_R_N8_25_01 = csvread('N8_0.25K_01.CSV',3,1,[3,1,802,1]);
K_I_N8_25_01 = csvread('N8_0.25K_01.CSV',3,2,[3,2,802,2]);
K_R_N8_25_02 = csvread('N8_0.25K_02.CSV',3,1,[3,1,802,1]);
K_I_N8_25_02 = csvread('N8_0.25K_02.CSV',3,2,[3,2,802,2]);
K_R_N8_25_03 = csvread('N8_0.25K_03.CSV',3,1,[3,1,802,1]);
K_I_N8_25_03 = csvread('N8_0.25K_03.CSV',3,2,[3,2,802,2]);

K_R_N8_25_A=zeros(800:1);
K_I_N8_25_A=zeros(800:1);
for i=1:800
    K_R_N8_25_A(i)= (K_R_N8_25_03(i)+K_R_N8_25_02(i)+K_R_N8_25_01(i))./3;
    K_I_N8_25_A(i)= (K_I_N8_25_03(i)+K_I_N8_25_02(i)+K_I_N8_25_01(i))./3;
end

x = [8,10,12,14,16,18,20];

% L_K_31_3 = flip([K_I_N20_31_03(1),K_I_N18_31_03(1),K_I_N16_31_03(1),K_I_N14_31_03(1),K_I_N12_31_03(1),K_I_N10_31_03(1),K_I_N8_31_03(1)]./(1e5*(2*pi)));
% L_K_31_4 = flip([K_I_N20_31_04(1),K_I_N18_31_04(1),K_I_N16_31_04(1),K_I_N14_31_04(1),K_I_N12_31_04(1),K_I_N10_31_04(1),K_I_N8_31_04(1)]./(1e5*(2*pi)));
% L_K_31_5 = flip([K_I_N20_31_05(1),K_I_N18_31_05(1),K_I_N16_31_05(1),K_I_N14_31_05(1),K_I_N12_31_05(1),K_I_N10_31_05(1),K_I_N8_31_05(1)]./(1e5*(2*pi)));

% L_K_31_A = [K_I_N20_31_A(1),K_I_N18_31_A(1),K_I_N16_31_A(1),K_I_N14_31_A(1),K_I_N12_31_A(1),K_I_N10_31_A(1),K_I_N8_31_A(1)]./(1e5*(2*pi));
% L_K_31_A = flip(L_K_31_A);
% figure(7)
% plot(x,L_K_31_3,x,L_K_31_4,x,L_K_31_5)
% grid on
% title('Inductance K_31')
% legend('1','2','3')

% figure(8)
% plot(x,L_K_31_A)
% grid on
% title('Average Inductance K_31')

figure(13)
plot(K_F_N20_25_01,K_R_N20_25_03,K_F_N20_25_01,K_R_N20_25_02,K_F_N20_25_01,K_R_N20_25_01)
hold on
plot(K_F_N18_25_01,K_R_N18_25_03,K_F_N18_25_01,K_R_N18_25_02,K_F_N18_25_01,K_R_N18_25_01)
plot(K_F_N16_25_01,K_R_N16_25_03,K_F_N16_25_01,K_R_N16_25_02,K_F_N16_25_01,K_R_N16_25_01)
plot(K_F_N14_25_01,K_R_N14_25_03,K_F_N14_25_01,K_R_N14_25_02,K_F_N14_25_01,K_R_N14_25_01)
plot(K_F_N12_25_01,K_R_N12_25_03,K_F_N12_25_01,K_R_N12_25_02,K_F_N12_25_01,K_R_N12_25_01)
plot(K_F_N10_25_01,K_R_N10_25_03,K_F_N10_25_01,K_R_N10_25_02,K_F_N10_25_01,K_R_N10_25_01)
plot(K_F_N8_25_01,K_R_N8_25_03,K_F_N8_25_01,K_R_N8_25_02,K_F_N8_25_01,K_R_N8_25_01)

legend('N20-1','N20-2','N20-3','N18-1','N18-2','N18-3','N16-1','N16-2','N16-3','N14-1','N14-2','N14-3','N12-1','N12-2','N12-3','N10-1','N10-2','N10-3','N8-1','N8-2','N8-3')
title('Knitted 0.25mm Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(14)
plot(K_F_N20_25_01,K_I_N20_25_03,K_F_N20_25_01,K_I_N20_25_02,K_F_N20_25_01,K_I_N20_25_01)
hold on
plot(K_F_N18_25_01,K_I_N18_25_03,K_F_N18_25_01,K_I_N18_25_02,K_F_N18_25_01,K_I_N18_25_01)
plot(K_F_N16_25_01,K_I_N16_25_03,K_F_N16_25_01,K_I_N16_25_02,K_F_N16_25_01,K_I_N16_25_01)
plot(K_F_N14_25_01,K_I_N14_25_03,K_F_N14_25_01,K_I_N14_25_02,K_F_N14_25_01,K_I_N14_25_01)
plot(K_F_N12_25_01,K_I_N12_25_03,K_F_N12_25_01,K_I_N12_25_02,K_F_N12_25_01,K_I_N12_25_01)
plot(K_F_N10_25_01,K_I_N10_25_03,K_F_N10_25_01,K_I_N10_25_02,K_F_N10_25_01,K_I_N10_25_01)
plot(K_F_N8_25_01,K_I_N8_25_03,K_F_N8_25_01,K_I_N8_25_02,K_F_N8_25_01,K_I_N8_25_01)

legend('N20-1','N20-2','N20-3','N18-1','N18-2','N18-3','N16-1','N16-2','N16-3','N14-1','N14-2','N14-3','N12-1','N12-2','N12-3','N10-1','N10-2','N10-3','N8-1','N8-2','N8-3')
title('Knitted 0.25mm Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

figure(15)
plot(K_F_N20_25_01,K_R_N20_25_A)
hold on
plot(K_F_N18_25_01,K_R_N18_25_A)
plot(K_F_N16_25_01,K_R_N16_25_A)
plot(K_F_N14_25_01,K_R_N14_25_A)
plot(K_F_N12_25_01,K_R_N12_25_A)
plot(K_F_N10_25_01,K_R_N10_25_A)
plot(K_F_N8_25_01,K_R_N8_25_A)

legend('N20,A','N18,A','N16,A','N14,A','N12,A','N10,A','N8,A')
title('Knitted 0.25mm Real Average')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

figure(16)
plot(K_F_N20_25_01,K_I_N20_25_A)
hold on
plot(K_F_N18_25_01,K_I_N18_25_A)
plot(K_F_N16_25_01,K_I_N16_25_A)
plot(K_F_N14_25_01,K_I_N14_25_A)
plot(K_F_N12_25_01,K_I_N12_25_A)
plot(K_F_N10_25_01,K_I_N10_25_A)
plot(K_F_N8_25_01,K_I_N8_25_A)

legend('N20,A','N18,A','N16,A','N14,A','N12,A','N10,A','N8,A')
title('Knitted 0.25mm Imag Average')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

%%
L_N8_25_01 = csvread('L_N8_0.25K_01.CSV',3,2,[3,2,302,2]);
% K_I_N10_48_02 = csvread('N10_0.48K_03.CSV',3,2,[3,2,802,2]);









