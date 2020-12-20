%state 4 N14 16 18
%% N18 Copper 0.44mm
%load N18 Copper 0.44mm
C_F_N18_44_00 = csvread('N18_0.44C_01.CSV',3,0,[3,0,602,0]);
C_R_N18_44_00 = csvread('N18_0.44C_01.CSV',3,1,[3,1,602,1]);
C_I_N18_44_00 = csvread('N18_0.44C_01.CSV',3,2,[3,2,602,2]);
C_R_N18_44_01 = csvread('N18_0.44C_02.CSV',3,1,[3,1,602,1]);
C_I_N18_44_01 = csvread('N18_0.44C_02.CSV',3,2,[3,2,602,2]);
C_R_N18_44_02 = csvread('N18_0.44C_03.CSV',3,1,[3,1,602,1]);
C_I_N18_44_02 = csvread('N18_0.44C_03.CSV',3,2,[3,2,602,2]);

%Analyze L
% L_C_44 = [C_I_N18_44_00(1),C_I_N18_44_01(1),C_I_N18_44_02(1)]./(2*pi);
%They look similar so take the average
% L_C_44 = mean(L_C_44)*1e-6;
% L_C_44

%plot individual graph
figure(1)
plot(C_F_N18_44_00,C_R_N18_44_00,C_F_N18_44_00,C_R_N18_44_01,C_F_N18_44_00,C_R_N18_44_02)
hold on 
legend('C44,1','C44,2','C44,3')
title('N18 Copper 0.44mm Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(2)
plot(C_F_N18_44_00,C_I_N18_44_00,C_F_N18_44_00,C_I_N18_44_01,C_F_N18_44_00,C_I_N18_44_02)
hold on 
legend('C44,1','C44,2','C44,3')
title('N18 Copper 0.44mm Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off
%Verified that they are similar

%take the average and plot
C_R_N18_44 = zeros(600,1);
C_I_N18_44 = zeros(600,1);
for i = 1:600
    C_R_N18_44(i) = (C_R_N18_44_00(i)+C_R_N18_44_01(i)+C_R_N18_44_02(i))/3;
    C_I_N18_44(i) = (C_I_N18_44_00(i)+C_I_N18_44_01(i)+C_I_N18_44_02(i))/3;
end
figure(3)
plot(C_F_N18_44_00,C_R_N18_44)
hold on
title('N18 Copper 0.44mm Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(4)
plot(C_F_N18_44_00,C_I_N18_44)
hold on 
title('N18 Copper 0.44mm Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

%analze resonant frequency
syms k b
[k,b] = solve(863.875==k*50913200+b, -452.856==k*51078500+b,k,b);
F_C_44 = eval(abs(b/k));
F_C_44
%% N18 Copper 0.27mm
C_F_N18_27_00 = csvread('N18_0.27C_01.CSV',3,0,[3,0,802,0]);
C_R_N18_27_00 = csvread('N18_0.27C_01.CSV',3,1,[3,1,802,1]);
C_I_N18_27_00 = csvread('N18_0.27C_01.CSV',3,2,[3,2,802,2]);
C_R_N18_27_01 = csvread('N18_0.27C_02.CSV',3,1,[3,1,802,1]);
C_I_N18_27_01 = csvread('N18_0.27C_02.CSV',3,2,[3,2,802,2]);
C_R_N18_27_02 = csvread('N18_0.27C_03.CSV',3,1,[3,1,802,1]);
C_I_N18_27_02 = csvread('N18_0.27C_03.CSV',3,2,[3,2,802,2]);
C_R_N18_27_03 = csvread('N18_0.27C_04.CSV',3,1,[3,1,802,1]);
C_I_N18_27_03 = csvread('N18_0.27C_04.CSV',3,2,[3,2,802,2]);
C_R_N18_27_04 = csvread('N18_0.27C_05.CSV',3,1,[3,1,802,1]);
C_I_N18_27_04 = csvread('N18_0.27C_05.CSV',3,2,[3,2,802,2]);
C_R_N18_27_05 = csvread('N18_0.27C_06.CSV',3,1,[3,1,802,1]);
C_I_N18_27_05 = csvread('N18_0.27C_06.CSV',3,2,[3,2,802,2]);
%Analyze L
% L_C_27 = [C_I_N18_27_01(1),C_I_N18_27_04(1),C_I_N18_27_05(1)]./(2*pi);
%They look similar so take the average
% L_C_27 = mean(L_C_27)*1e-6;
% L_C_27

%plot individual graph
figure(5)
plot(C_F_N18_27_00,C_R_N18_27_00,C_F_N18_27_00,C_R_N18_27_01,C_F_N18_27_00,C_R_N18_27_02)
hold on 
plot(C_F_N18_27_00,C_R_N18_27_03,C_F_N18_27_00,C_R_N18_27_04,C_F_N18_27_00,C_R_N18_27_05)

legend('C27,1','C27,2','C27,3','4','5','6')
title('N18 Copper 0.27mm Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(6)
plot(C_F_N18_27_00,C_I_N18_27_00,C_F_N18_27_00,C_I_N18_27_01,C_F_N18_27_00,C_I_N18_27_02)
hold on 
plot(C_F_N18_27_00,C_I_N18_27_03,C_F_N18_27_00,C_I_N18_27_04,C_F_N18_27_00,C_I_N18_27_05)
legend('C27,1','C27,2','C27,3','4','5','6')
title('N18 Copper 0.27mm Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

%take the average and plot pick 1 4 5
C_R_N18_27 = zeros(800,1);
C_I_N18_27 = zeros(800,1);
for i = 1:800
    C_R_N18_27(i) = (C_R_N18_27_01(i)+C_R_N18_27_04(i)+C_R_N18_27_05(i))/3;
    C_I_N18_27(i) = (C_I_N18_27_01(i)+C_I_N18_27_04(i)+C_I_N18_27_05(i))/3;
end
figure(7)
plot(C_F_N18_27_00,C_R_N18_27)
hold on
title('N18 Copper 0.27mm Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(8)
plot(C_F_N18_27_00,C_I_N18_27)
hold on 
title('N18 Copper 0.27mm Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

%analze resonant frequency
syms k b
[k,b] = solve(140.792==k*50862700+b, -138.651==k*50987700+b,k,b);
F_C_27 = eval(abs(b/k));
F_C_27

%% N18 Knitted 0.27mm
K_F_N18_27_00 = csvread('N18_0.27K_01.CSV',3,0,[3,0,802,0]);
K_R_N18_27_00 = csvread('N18_0.27K_01.CSV',3,1,[3,1,802,1]);
K_I_N18_27_00 = csvread('N18_0.27K_01.CSV',3,2,[3,2,802,2]);
K_R_N18_27_01 = csvread('N18_0.27K_02.CSV',3,1,[3,1,802,1]);
K_I_N18_27_01 = csvread('N18_0.27K_02.CSV',3,2,[3,2,802,2]);
K_R_N18_27_02 = csvread('N18_0.27K_03.CSV',3,1,[3,1,802,1]);
K_I_N18_27_02 = csvread('N18_0.27K_03.CSV',3,2,[3,2,802,2]);

%plot individual graph
figure(9)
plot(K_F_N18_27_00,K_R_N18_27_00,K_F_N18_27_00,K_R_N18_27_01,K_F_N18_27_00,K_R_N18_27_02)
hold on 
legend('K27,1','K27,2','K27,3')
title('N18 Knitted 0.27mm Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(10)
plot(K_F_N18_27_00,K_I_N18_27_00,K_F_N18_27_00,K_I_N18_27_01,K_F_N18_27_00,K_I_N18_27_02)
hold on 
legend('K27,1','K27,2','K27')
title('N18 Knitted 0.27mm Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off


%take the average 
K_R_N18_27 = zeros(800,1);
K_I_N18_27 = zeros(800,1);
for i = 1:800
    K_R_N18_27(i) = (K_R_N18_27_00(i)+K_R_N18_27_01(i)+K_R_N18_27_02(i))/3;
    K_I_N18_27(i) = (K_I_N18_27_00(i)+K_I_N18_27_01(i)+K_I_N18_27_02(i))/3;
end
figure(11)
plot(K_F_N18_27_00,K_R_N18_27)
hold on
title('N18 Knitted 0.27mm Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(12)
plot(K_F_N18_27_00,K_I_N18_27)
hold on 
title('N18 Knitted 0.27mm Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

%analze resonant frequency
syms k b
[k,b] = solve(355.183==k*50237500+b, -341.283==k*50362600+b,k,b);
F_K_27 = eval(abs(b/k));
F_K_27

%% N18 Knitted 0.23mm
K_F_N18_23_00 = csvread('N18_0.23K_01.CSV',3,0,[3,0,802,0]);
K_R_N18_23_00 = csvread('N18_0.23K_01.CSV',3,1,[3,1,802,1]);
K_I_N18_23_00 = csvread('N18_0.23K_01.CSV',3,2,[3,2,802,2]);
K_R_N18_23_01 = csvread('N18_0.23K_02.CSV',3,1,[3,1,802,1]);
K_I_N18_23_01 = csvread('N18_0.23K_02.CSV',3,2,[3,2,802,2]);
K_R_N18_23_02 = csvread('N18_0.23K_03.CSV',3,1,[3,1,802,1]);
K_I_N18_23_02 = csvread('N18_0.23K_03.CSV',3,2,[3,2,802,2]);

%plot individual graph
figure(13)
plot(K_F_N18_23_00,K_R_N18_23_00,K_F_N18_23_00,K_R_N18_23_01,K_F_N18_23_00,K_R_N18_23_02)
hold on 
legend('K23,1','K23,2','K23,3')
title('N18 Knitted 0.23mm Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(14)
plot(K_F_N18_23_00,K_I_N18_23_00,K_F_N18_23_00,K_I_N18_23_01,K_F_N18_23_00,K_I_N18_23_02)
hold on 
legend('K23,1','K23,2','K23,3')
title('N18 Knitted 0.23mm Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

%take the average 
K_R_N18_23 = zeros(800,1);
K_I_N18_23 = zeros(800,1);
for i = 1:800
    K_R_N18_23(i) = (K_R_N18_23_00(i)+K_R_N18_23_01(i)+K_R_N18_23_02(i))/3;
    K_I_N18_23(i) = (K_I_N18_23_00(i)+K_I_N18_23_01(i)+K_I_N18_23_02(i))/3;
end
figure(15)
plot(K_F_N18_23_00,K_R_N18_23)
hold on
title('N18 Knitted 0.23mm Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(16)
plot(K_F_N18_23_00,K_I_N18_23)
hold on 
title('N18 Knitted 0.23mm Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

%analze resonant frequency
syms k b
[k,b] = solve(497.368==k*49987500+b, -66.7119==k*50112500+b,k,b);
F_K_23 = eval(abs(b/k));
F_K_23

%% N18 Knitted 0.43mm 
K_F_N18_43_00 = csvread('N18_0.43K_01.CSV',3,0,[3,0,602,0]);
K_R_N18_43_00 = csvread('N18_0.43K_01.CSV',3,1,[3,1,602,1]);
K_I_N18_43_00 = csvread('N18_0.43K_01.CSV',3,2,[3,2,602,2]);
K_R_N18_43_01 = csvread('N18_0.43K_02.CSV',3,1,[3,1,602,1]);
K_I_N18_43_01 = csvread('N18_0.43K_02.CSV',3,2,[3,2,602,2]);
K_R_N18_43_02 = csvread('N18_0.43K_03.CSV',3,1,[3,1,602,1]);
K_I_N18_43_02 = csvread('N18_0.43K_03.CSV',3,2,[3,2,602,2]);

%plot individual graph
figure(17)
plot(K_F_N18_43_00,K_R_N18_43_00,K_F_N18_43_00,K_R_N18_43_01,K_F_N18_43_00,K_R_N18_43_02)
hold on 
legend('K43,1','K43,2','K43,3')
title('N18 Knitted 0.43mm Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(18)
plot(K_F_N18_43_00,K_I_N18_43_00,K_F_N18_43_00,K_I_N18_43_01,K_F_N18_43_00,K_I_N18_43_02)
hold on 
legend('K43,1','K43,2','K43,3')
title('N18 Knitted 0.43mm Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

%take the average 
K_R_N18_43 = zeros(600,1);
K_I_N18_43 = zeros(600,1);
for i = 1:600
    K_R_N18_43(i) = (K_R_N18_43_00(i)+K_R_N18_43_01(i)+K_R_N18_43_02(i))/3;
    K_I_N18_43(i) = (K_I_N18_43_00(i)+K_I_N18_43_01(i)+K_I_N18_43_02(i))/3;
end
figure(19)
plot(K_F_N18_43_00,K_R_N18_43)
hold on
title('N18 Knitted 0.43mm Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(20)
plot(K_F_N18_43_00,K_I_N18_43)
hold on 
title('N18 Knitted 0.43mm Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

%analze resonant frequency
syms k b
[k,b] = solve(412.478==k*50913200+b, -392.038==k*51078500+b,k,b);
F_K_43 = eval(abs(b/k));F_K_43
%% N18 Knitted 0.8mm 
K_F_N18_80_00 = csvread('N18_0.8K_01.CSV',3,0,[3,0,602,0]);
K_R_N18_80_00 = csvread('N18_0.8K_01.CSV',3,1,[3,1,602,1]);
K_I_N18_80_00 = csvread('N18_0.8K_01.CSV',3,2,[3,2,602,2]);
K_R_N18_80_01 = csvread('N18_0.8K_02.CSV',3,1,[3,1,602,1]);
K_I_N18_80_01 = csvread('N18_0.8K_02.CSV',3,2,[3,2,602,2]);
K_R_N18_80_02 = csvread('N18_0.8K_03.CSV',3,1,[3,1,602,1]);
K_I_N18_80_02 = csvread('N18_0.8K_03.CSV',3,2,[3,2,602,2]);

%plot individual graph
figure(21)
plot(K_F_N18_80_00,K_R_N18_80_00,K_F_N18_80_00,K_R_N18_80_01,K_F_N18_80_00,K_R_N18_80_02)
hold on 
legend('K80,1','K80,2','K80,3')
title('N18 Knitted 0.80mm Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(22)
plot(K_F_N18_80_00,K_I_N18_80_00,K_F_N18_80_00,K_I_N18_80_01,K_F_N18_80_00,K_I_N18_80_02)
hold on 
legend('K80,1','K80,2','K80,3')
title('N18 Knitted 0.80mm Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

%take the average 
K_R_N18_80 = zeros(600,1);
K_I_N18_80 = zeros(600,1);
for i = 1:600
    K_R_N18_80(i) = (K_R_N18_80_00(i)+K_R_N18_80_01(i)+K_R_N18_80_02(i))/3;
    K_I_N18_80(i) = (K_I_N18_80_00(i)+K_I_N18_80_01(i)+K_I_N18_80_02(i))/3;
end
figure(23)
plot(K_F_N18_80_00,K_R_N18_80)
hold on
title('N18 Knitted 0.8mm Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(24)
plot(K_F_N18_80_00,K_I_N18_80)
hold on 
title('N18 Knitted 0.8mm Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

%analze resonant frequency
syms k b
[k,b] = solve(29.0906==k*50747900+b, -501.999==k*50913200+b,k,b);
F_K_80 = eval(abs(b/k));F_K_80

