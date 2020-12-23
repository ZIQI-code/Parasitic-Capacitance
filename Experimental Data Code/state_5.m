
%% 
C_F_N5_44_00 = csvread('LN5_0.44C_01.CSV',3,0,[3,0,602,0]);
C_R_N5_44_00 = csvread('LN5_0.44C_01.CSV',3,1,[3,1,602,1]);
C_I_N5_44_00 = csvread('LN5_0.44C_01.CSV',3,2,[3,2,602,2]);
C_R_N5_44_01 = csvread('LN5_0.44C_02.CSV',3,1,[3,1,602,1]);
C_I_N5_44_01 = csvread('LN5_0.44C_02.CSV',3,2,[3,2,602,2]);
C_R_N5_44_02 = csvread('LN5_0.44C_03.CSV',3,1,[3,1,602,1]);
C_I_N5_44_02 = csvread('LN5_0.44C_03.CSV',3,2,[3,2,602,2]);

figure(1)
plot(C_F_N5_44_00,C_R_N5_44_00,C_F_N5_44_00,C_R_N5_44_01,C_F_N5_44_00,C_R_N5_44_02)
hold on 
legend('C44,1','C44,2','C44,3')
title('N5 Copper 0.44mm Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(2)
plot(C_F_N5_44_00,C_I_N5_44_00,C_F_N5_44_00,C_I_N5_44_01,C_F_N5_44_00,C_I_N5_44_02)
hold on 
legend('C44,1','C44,2','C44,3')
title('N5 Copper 0.44mm Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

%taCe the average 
C_R_N5_44 = zeros(600,1);
C_I_N5_44 = zeros(600,1);
for i = 1:600
    C_R_N5_44(i) = (C_R_N5_44_00(i)+C_R_N5_44_01(i)+C_R_N5_44_02(i))/3;
    C_I_N5_44(i) = (C_I_N5_44_00(i)+C_I_N5_44_01(i)+C_I_N5_44_02(i))/3;
end
figure(3)
plot(C_F_N5_44_00,C_R_N5_44)
hold on
title('N5 Copper 0.8mm Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(4)
plot(C_F_N5_44_00,C_I_N5_44)
hold on 
title('N5 Copper 0.8mm Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

%analze resonant frequency
syms k b
[k,b] = solve(63.4047==k*56804500+b, -161.955==k*56971300+b,k,b);
F_N5_C_44 = eval(abs(b/k));F_N5_C_44
%% 
C_F_N4_44_00 = csvread('LN4_0.44C_01.CSV',3,0,[3,0,602,0]);
C_R_N4_44_00 = csvread('LN4_0.44C_01.CSV',3,1,[3,1,602,1]);
C_I_N4_44_00 = csvread('LN4_0.44C_01.CSV',3,2,[3,2,602,2]);
C_R_N4_44_01 = csvread('LN4_0.44C_02.CSV',3,1,[3,1,602,1]);
C_I_N4_44_01 = csvread('LN4_0.44C_02.CSV',3,2,[3,2,602,2]);
C_R_N4_44_02 = csvread('LN4_0.44C_03.CSV',3,1,[3,1,602,1]);
C_I_N4_44_02 = csvread('LN4_0.44C_03.CSV',3,2,[3,2,602,2]);
C_R_N4_44_03 = csvread('LN4_0.44C_04.CSV',3,1,[3,1,602,1]);
C_I_N4_44_03 = csvread('LN4_0.44C_04.CSV',3,2,[3,2,602,2]);
C_R_N4_44_04 = csvread('LN4_0.44C_05.CSV',3,1,[3,1,602,1]);
C_I_N4_44_04 = csvread('LN4_0.44C_05.CSV',3,2,[3,2,602,2]);

figure(1)
plot(C_F_N4_44_00,C_R_N4_44_00,C_F_N4_44_00,C_R_N4_44_01,C_F_N4_44_00,C_R_N4_44_02)
hold on 
plot(C_F_N4_44_00,C_R_N4_44_03,C_F_N4_44_00,C_R_N4_44_04)
legend('C44,1','C44,2','C44,3','4','5')
title('N4 Copper 0.44mm Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(2)
plot(C_F_N4_44_00,C_I_N4_44_00,C_F_N4_44_00,C_I_N4_44_01,C_F_N4_44_00,C_I_N4_44_02)
hold on 
plot(C_F_N4_44_00,C_I_N4_44_03,C_F_N4_44_00,C_I_N4_44_04)
legend('C44,1','C44,2','C44,3','4','5')
title('N4 Copper 0.44mm Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

%taCe the average 
C_R_N4_44 = zeros(600,1);
C_I_N4_44 = zeros(600,1);
for i = 1:600
    C_R_N4_44(i) = (C_R_N4_44_00(i)+C_R_N4_44_01(i)+C_R_N4_44_02(i))/3;
    C_I_N4_44(i) = (C_I_N4_44_00(i)+C_I_N4_44_01(i)+C_I_N4_44_02(i))/3;
end
figure(3)
plot(C_F_N4_44_00,C_R_N4_44)
hold on
title('N4 Copper 0.8mm Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(4)
plot(C_F_N4_44_00,C_I_N4_44)
hold on 
title('N4 Copper 0.8mm Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

%analze resonant frequency
syms k b
[k,b] = solve(69.7425==k*62308200+b, -0.828963==k*62475000+b,k,b);
F_N4_C_44 = eval(abs(b/k));F_N4_C_44
%% 
C_F_N3_44_00 = csvread('LN3_0.44C_01.CSV',3,0,[3,0,602,0]);
C_R_N3_44_00 = csvread('LN3_0.44C_01.CSV',3,1,[3,1,602,1]);
C_I_N3_44_00 = csvread('LN3_0.44C_01.CSV',3,2,[3,2,602,2]);
C_R_N3_44_01 = csvread('LN3_0.44C_02.CSV',3,1,[3,1,602,1]);
C_I_N3_44_01 = csvread('LN3_0.44C_02.CSV',3,2,[3,2,602,2]);
C_R_N3_44_02 = csvread('LN3_0.44C_03.CSV',3,1,[3,1,602,1]);
C_I_N3_44_02 = csvread('LN3_0.44C_03.CSV',3,2,[3,2,602,2]);

figure(1)
plot(C_F_N3_44_00,C_R_N3_44_00,C_F_N3_44_00,C_R_N3_44_01,C_F_N3_44_00,C_R_N3_44_02)
hold on 
legend('C44,1','C44,2','C44,3')
title('N3 Copper 0.44mm Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(2)
plot(C_F_N3_44_00,C_I_N3_44_00,C_F_N3_44_00,C_I_N3_44_01,C_F_N3_44_00,C_I_N3_44_02)
hold on 
legend('C44,1','C44,2','C44,3')
title('N3 Copper 0.44mm Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

%taCe the average 
C_R_N3_44 = zeros(600,1);
C_I_N3_44 = zeros(600,1);
for i = 1:600
    C_R_N3_44(i) = (C_R_N3_44_00(i)+C_R_N3_44_01(i)+C_R_N3_44_02(i))/3;
    C_I_N3_44(i) = (C_I_N3_44_00(i)+C_I_N3_44_01(i)+C_I_N3_44_02(i))/3;
end
figure(3)
plot(C_F_N3_44_00,C_R_N3_44)
hold on
title('N3 Copper 0.8mm Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(4)
plot(C_F_N3_44_00,C_I_N3_44)
hold on 
title('N3 Copper 0.8mm Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

%analze resonant frequency
syms k b
[k,b] = solve(48.3164==k*71314200+b, -14.2926==k*71481000+b,k,b);
F_N3_C_44 = eval(abs(b/k));F_N3_C_44
%% 
K_F_N5_43_00 = csvread('LN5_0.43K_01.CSV',3,0,[3,0,602,0]);
K_R_N5_43_00 = csvread('LN5_0.43K_01.CSV',3,1,[3,1,602,1]);
K_I_N5_43_00 = csvread('LN5_0.43K_01.CSV',3,2,[3,2,602,2]);
K_R_N5_43_01 = csvread('LN5_0.43K_02.CSV',3,1,[3,1,602,1]);
K_I_N5_43_01 = csvread('LN5_0.43K_02.CSV',3,2,[3,2,602,2]);
K_R_N5_43_02 = csvread('LN5_0.43K_03.CSV',3,1,[3,1,602,1]);
K_I_N5_43_02 = csvread('LN5_0.43K_03.CSV',3,2,[3,2,602,2]);

%plot individual graph
figure(17)
plot(K_F_N5_43_00,K_R_N5_43_00,K_F_N5_43_00,K_R_N5_43_01,K_F_N5_43_00,K_R_N5_43_02)
hold on 
legend('K43,1','K43,2','K43,3')
title('N5 Knitted 0.43mm Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(18)
plot(K_F_N5_43_00,K_I_N5_43_00,K_F_N5_43_00,K_I_N5_43_01,K_F_N5_43_00,K_I_N5_43_02)
hold on 
legend('K43,1','K43,2','K43,3')
title('N5 Knitted 0.43mm Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

%take the average 
K_R_N5_43 = zeros(600,1);
K_I_N5_43 = zeros(600,1);
for i = 1:600
    K_R_N5_43(i) = (K_R_N5_43_00(i)+K_R_N5_43_01(i)+K_R_N5_43_02(i))/3;
    K_I_N5_43(i) = (K_I_N5_43_00(i)+K_I_N5_43_01(i)+K_I_N5_43_02(i))/3;
end
figure(19)
plot(K_F_N5_43_00,K_R_N5_43)
hold on
title('N5 Knitted 0.43mm Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(20)
plot(K_F_N5_43_00,K_I_N5_43)
hold on 
title('N5 Knitted 0.43mm Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

%analze resonant frequency
syms k b
[k,b] = solve(179.745==k*55637100+b, -103.551==k*55803800+b,k,b);
F_N5_K_43 = eval(abs(b/k));F_N5_K_43
%% 
K_F_N4_43_00 = csvread('LN4_0.43K_01.CSV',3,0,[3,0,602,0]);
K_R_N4_43_00 = csvread('LN4_0.43K_01.CSV',3,1,[3,1,602,1]);
K_I_N4_43_00 = csvread('LN4_0.43K_01.CSV',3,2,[3,2,602,2]);
K_R_N4_43_01 = csvread('LN4_0.43K_02.CSV',3,1,[3,1,602,1]);
K_I_N4_43_01 = csvread('LN4_0.43K_02.CSV',3,2,[3,2,602,2]);
K_R_N4_43_02 = csvread('LN4_0.43K_03.CSV',3,1,[3,1,602,1]);
K_I_N4_43_02 = csvread('LN4_0.43K_03.CSV',3,2,[3,2,602,2]);
K_R_N4_43_03 = csvread('LN4_0.43K_04.CSV',3,1,[3,1,602,1]);
K_I_N4_43_03 = csvread('LN4_0.43K_04.CSV',3,2,[3,2,602,2]);
K_R_N4_43_04 = csvread('LN4_0.43K_05.CSV',3,1,[3,1,602,1]);
K_I_N4_43_04 = csvread('LN4_0.43K_05.CSV',3,2,[3,2,602,2]);

%plot individual graph
figure(17)
plot(K_F_N4_43_00,K_R_N4_43_00,K_F_N4_43_00,K_R_N4_43_01,K_F_N4_43_00,K_R_N4_43_02)
hold on 
plot(K_F_N4_43_00,K_R_N4_43_03,K_F_N4_43_00,K_R_N4_43_04)
legend('K43,1','K43,2','K43,3','4','5')
title('N4 Knitted 0.43mm Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(18)
plot(K_F_N4_43_00,K_I_N4_43_00,K_F_N4_43_00,K_I_N4_43_01,K_F_N4_43_00,K_I_N4_43_02)
hold on 
plot(K_F_N4_43_00,K_I_N4_43_03,K_F_N4_43_00,K_I_N4_43_04)
legend('K43,1','K43,2','K43,3','4','5')
title('N4 Knitted 0.43mm Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

%take the average 
K_R_N4_43 = zeros(600,1);
K_I_N4_43 = zeros(600,1);
for i = 1:600
    K_R_N4_43(i) = (K_R_N4_43_00(i)+K_R_N4_43_01(i)+K_R_N4_43_02(i))/3;
    K_I_N4_43(i) = (K_I_N4_43_00(i)+K_I_N4_43_01(i)+K_I_N4_43_02(i))/3;
end
figure(19)
plot(K_F_N4_43_00,K_R_N4_43)
hold on
title('N4 Knitted 0.43mm Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(20)
plot(K_F_N4_43_00,K_I_N4_43)
hold on 
title('N4 Knitted 0.43mm Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

%analze resonant frequency
syms k b
[k,b] = solve(28.9376==k*61307500+b, -38.9917==k*61474300+b,k,b);
F_N4_K_43 = eval(abs(b/k));F_N4_K_43
%% 
K_F_N3_43_00 = csvread('LN3_0.43K_01.CSV',3,0,[3,0,602,0]);
K_R_N3_43_00 = csvread('LN3_0.43K_01.CSV',3,1,[3,1,602,1]);
K_I_N3_43_00 = csvread('LN3_0.43K_01.CSV',3,2,[3,2,602,2]);
K_R_N3_43_01 = csvread('LN3_0.43K_02.CSV',3,1,[3,1,602,1]);
K_I_N3_43_01 = csvread('LN3_0.43K_02.CSV',3,2,[3,2,602,2]);
K_R_N3_43_02 = csvread('LN3_0.43K_03.CSV',3,1,[3,1,602,1]);
K_I_N3_43_02 = csvread('LN3_0.43K_03.CSV',3,2,[3,2,602,2]);

%plot individual graph
figure(17)
plot(K_F_N3_43_00,K_R_N3_43_00,K_F_N3_43_00,K_R_N3_43_01,K_F_N3_43_00,K_R_N3_43_02)
hold on 
legend('K43,1','K43,2','K43,3')
title('N3 Knitted 0.43mm Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(18)
plot(K_F_N3_43_00,K_I_N3_43_00,K_F_N3_43_00,K_I_N3_43_01,K_F_N3_43_00,K_I_N3_43_02)
hold on 
legend('K43,1','K43,2','K43,3')
title('N3 Knitted 0.43mm Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

%take the average 
K_R_N3_43 = zeros(600,1);
K_I_N3_43 = zeros(600,1);
for i = 1:600
    K_R_N3_43(i) = (K_R_N3_43_01(i)+K_R_N3_43_02(i))/3;
    K_I_N3_43(i) = (K_I_N3_43_01(i)+K_I_N3_43_02(i))/3;
end
figure(19)
plot(K_F_N3_43_00,K_R_N3_43)
hold on
title('N3 Knitted 0.43mm Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(20)
plot(K_F_N3_43_00,K_I_N3_43)
hold on 
title('N3 Knitted 0.43mm Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

%analze resonant frequency
syms k b
[k,b] = solve(3.98526==k*69646400+b, -8.70171==k*69813200+b,k,b);
F_N3_K_43 = eval(abs(b/k));F_N3_K_43

%% 
x = [10,12,14,16,18];
C_44 = [69.80,63.729,58.452,56.852,51.022]*1e6;
C_27 = [68.258,62.44,57.761,54.171,50.926]*1e6;
figure(1)
plot(x,C_44,'*-',x,C_27,'+-')
legend('C-44','C-27')
grid on

K_43 = [68.096,62.24,57.300,56.173,50.998]*1e6;
K_23 = [67.56,62.18,56.984,56.173,50.190]*1e6;
figure(2)
plot(x,K_43,'*-',x,K_23,'+-')
legend('K-43','K-23')
grid on

x = [3 4 5];
C = [7.1443e+07, 6.2473e+07, 5.6851e+07];
K = [6.9699e+07, 6.1379e+07, 5.5743e+07];
figure(3)
plot(x,C,'*-', x,K,'+-')
legend('C','K')
grid on

%% K 0.43mm new 12.21
%load N18  0.44mm
K_F_N18_43_00 = csvread('N18_0.43K_07.CSV',3,0,[3,0,602,0]);
K_R_N18_43_00 = csvread('N18_0.43K_07.CSV',3,1,[3,1,602,1]);
K_I_N18_43_00 = csvread('N18_0.43K_07.CSV',3,2,[3,2,602,2]);
K_R_N18_43_01 = csvread('N18_0.43K_08.CSV',3,1,[3,1,602,1]);
K_I_N18_43_01 = csvread('N18_0.43K_08.CSV',3,2,[3,2,602,2]);
K_R_N18_43_02 = csvread('N18_0.43K_09.CSV',3,1,[3,1,602,1]);
K_I_N18_43_02 = csvread('N18_0.43K_09.CSV',3,2,[3,2,602,2]);

K_R_N18_43_A=zeros(600:1);
K_I_N18_43_A=zeros(600:1);
for i=1:600
    K_R_N18_43_A(i)= (K_R_N18_43_00(i)+K_R_N18_43_01(i)+K_R_N18_43_02(i))./3;
    K_I_N18_43_A(i)= (K_I_N18_43_00(i)+K_I_N18_43_01(i)+K_I_N18_43_02(i))./3;
end

K_F_N16_43_00 = csvread('N16_0.43K_07.CSV',3,0,[3,0,602,0]);
K_R_N16_43_00 = csvread('N16_0.43K_07.CSV',3,1,[3,1,602,1]);
K_I_N16_43_00 = csvread('N16_0.43K_07.CSV',3,2,[3,2,602,2]);
K_R_N16_43_01 = csvread('N16_0.43K_08.CSV',3,1,[3,1,602,1]);
K_I_N16_43_01 = csvread('N16_0.43K_08.CSV',3,2,[3,2,602,2]);
K_R_N16_43_02 = csvread('N16_0.43K_09.CSV',3,1,[3,1,602,1]);
K_I_N16_43_02 = csvread('N16_0.43K_09.CSV',3,2,[3,2,602,2]);

K_R_N16_43_A=zeros(600:1);
K_I_N16_43_A=zeros(600:1);
for i=1:600
    K_R_N16_43_A(i)= (K_R_N16_43_00(i)+K_R_N16_43_01(i)+K_R_N16_43_02(i))./3;
    K_I_N16_43_A(i)= (K_I_N16_43_00(i)+K_I_N16_43_01(i)+K_I_N16_43_02(i))./3;
end

K_F_N14_43_00 = csvread('N14_0.43K_07.CSV',3,0,[3,0,602,0]);
K_R_N14_43_00 = csvread('N14_0.43K_07.CSV',3,1,[3,1,602,1]);
K_I_N14_43_00 = csvread('N14_0.43K_07.CSV',3,2,[3,2,602,2]);
K_R_N14_43_01 = csvread('N14_0.43K_08.CSV',3,1,[3,1,602,1]);
K_I_N14_43_01 = csvread('N14_0.43K_08.CSV',3,2,[3,2,602,2]);
K_R_N14_43_02 = csvread('N14_0.43K_09.CSV',3,1,[3,1,602,1]);
K_I_N14_43_02 = csvread('N14_0.43K_09.CSV',3,2,[3,2,602,2]);

K_R_N14_43_A=zeros(600:1);
K_I_N14_43_A=zeros(600:1);
for i=1:600
    K_R_N14_43_A(i)= (K_R_N14_43_00(i)+K_R_N14_43_01(i)+K_R_N14_43_02(i))./3;
    K_I_N14_43_A(i)= (K_I_N14_43_00(i)+K_I_N14_43_01(i)+K_I_N14_43_02(i))./3;
end

K_F_N12_43_00 = csvread('N12_0.43K_07.CSV',3,0,[3,0,602,0]);
K_R_N12_43_00 = csvread('N12_0.43K_07.CSV',3,1,[3,1,602,1]);
K_I_N12_43_00 = csvread('N12_0.43K_07.CSV',3,2,[3,2,602,2]);
K_R_N12_43_01 = csvread('N12_0.43K_08.CSV',3,1,[3,1,602,1]);
K_I_N12_43_01 = csvread('N12_0.43K_08.CSV',3,2,[3,2,602,2]);
K_R_N12_43_02 = csvread('N12_0.43K_09.CSV',3,1,[3,1,602,1]);
K_I_N12_43_02 = csvread('N12_0.43K_09.CSV',3,2,[3,2,602,2]);

K_R_N12_43_A=zeros(600:1);
K_I_N12_43_A=zeros(600:1);
for i=1:600
    K_R_N12_43_A(i)= (K_R_N12_43_00(i)+K_R_N12_43_01(i)+K_R_N12_43_02(i))./3;
    K_I_N12_43_A(i)= (K_I_N12_43_00(i)+K_I_N12_43_01(i)+K_I_N12_43_02(i))./3;
end

K_F_N10_43_00 = csvread('N10_0.43K_07.CSV',3,0,[3,0,602,0]);
K_R_N10_43_00 = csvread('N10_0.43K_07.CSV',3,1,[3,1,602,1]);
K_I_N10_43_00 = csvread('N10_0.43K_07.CSV',3,2,[3,2,602,2]);
K_R_N10_43_01 = csvread('N10_0.43K_08.CSV',3,1,[3,1,602,1]);
K_I_N10_43_01 = csvread('N10_0.43K_08.CSV',3,2,[3,2,602,2]);
K_R_N10_43_02 = csvread('N10_0.43K_09.CSV',3,1,[3,1,602,1]);
K_I_N10_43_02 = csvread('N10_0.43K_09.CSV',3,2,[3,2,602,2]);

K_R_N10_43_A=zeros(600:1);
K_I_N10_43_A=zeros(600:1);
for i=1:600
    K_R_N10_43_A(i)= (K_R_N10_43_00(i)+K_R_N10_43_01(i)+K_R_N10_43_02(i))./3;
    K_I_N10_43_A(i)= (K_I_N10_43_00(i)+K_I_N10_43_01(i)+K_I_N10_43_02(i))./3;
end

K_F_N8_43_00 = csvread('N8_0.43K_08.CSV',3,0,[3,0,602,0]);
K_R_N8_43_00 = csvread('N8_0.43K_08.CSV',3,1,[3,1,602,1]);
K_I_N8_43_00 = csvread('N8_0.43K_08.CSV',3,2,[3,2,602,2]);
K_R_N8_43_01 = csvread('N8_0.43K_09.CSV',3,1,[3,1,602,1]);
K_I_N8_43_01 = csvread('N8_0.43K_09.CSV',3,2,[3,2,602,2]);

K_R_N8_43_A=zeros(600:1);
K_I_N8_43_A=zeros(600:1);
for i=1:600
    K_R_N8_43_A(i)= (K_R_N8_43_00(i)+K_R_N8_43_01(i))./2;
    K_I_N8_43_A(i)= (K_I_N8_43_00(i)+K_I_N8_43_01(i))./2;
end

K_F_N6_43_00 = csvread('N6_0.43K_07.CSV',3,0,[3,0,602,0]);
K_R_N6_43_00 = csvread('N6_0.43K_07.CSV',3,1,[3,1,602,1]);
K_I_N6_43_00 = csvread('N6_0.43K_07.CSV',3,2,[3,2,602,2]);
K_R_N6_43_01 = csvread('N6_0.43K_08.CSV',3,1,[3,1,602,1]);
K_I_N6_43_01 = csvread('N6_0.43K_08.CSV',3,2,[3,2,602,2]);
K_R_N6_43_02 = csvread('N6_0.43K_09.CSV',3,1,[3,1,602,1]);
K_I_N6_43_02 = csvread('N6_0.43K_09.CSV',3,2,[3,2,602,2]);

K_R_N6_43_A=zeros(600:1);
K_I_N6_43_A=zeros(600:1);
for i=1:600
    K_R_N6_43_A(i)= (K_R_N6_43_00(i)+K_R_N6_43_01(i)+K_R_N6_43_02(i))./3;
    K_I_N6_43_A(i)= (K_I_N6_43_00(i)+K_I_N6_43_01(i)+K_I_N6_43_02(i))./3;
end

x = [6,8,10,12,14,16,18];

%Analyze L
L_K_43_0 = [K_I_N18_43_00(1),K_I_N16_43_00(1),K_I_N14_43_00(1),K_I_N12_43_00(1),K_I_N10_43_00(1),K_I_N8_43_00(1),K_I_N6_43_00(1)]./(1e5*(2*pi));
L_K_43_1 = [K_I_N18_43_01(1),K_I_N16_43_01(1),K_I_N14_43_01(1),K_I_N12_43_01(1),K_I_N10_43_01(1),K_I_N8_43_01(1),K_I_N6_43_01(1)]./(1e5*(2*pi));
L_K_43_2 = [K_I_N18_43_02(1),K_I_N16_43_02(1),K_I_N14_43_02(1),K_I_N12_43_02(1),K_I_N10_43_02(1),K_I_N8_43_01(1),K_I_N6_43_02(1)]./(1e5*(2*pi));
L_K_43_0 = flip(L_K_43_0);
L_K_43_1 = flip(L_K_43_1);
L_K_43_2 = flip(L_K_43_2);

%L_K_43_A = zeros(7,1);
%for i=1:7
%    L_K_43_A(i) = (L_K_43_0(i)+L_K_43_1(i)+L_K_43_2(i))./3;
%end

L_K_43_A = [K_I_N18_43_A(1) ,K_I_N16_43_A(1),K_I_N14_43_A(1),K_I_N12_43_A(1),K_I_N10_43_A(1),K_I_N8_43_A(1),K_I_N6_43_A(1)]./(1e5*(2*pi));
L_K_43_A = flip(L_K_43_A);

figure(5)
plot(x,L_K_43_0,x,L_K_43_1,x,L_K_43_2)
grid on
title('Inductance K_43')

figure(6)
plot(x,L_K_43_A)
grid on
title('Average Inductance K_43')

%plot individual graph
figure(1)
plot(K_F_N18_43_00,K_R_N18_43_00,K_F_N18_43_00,K_R_N18_43_01,K_F_N18_43_00,K_R_N18_43_02)
hold on
plot(K_F_N16_43_00,K_R_N16_43_00,K_F_N16_43_00,K_R_N16_43_01,K_F_N16_43_00,K_R_N16_43_02)
plot(K_F_N14_43_00,K_R_N14_43_00,K_F_N14_43_00,K_R_N14_43_01,K_F_N14_43_00,K_R_N14_43_02)
plot(K_F_N12_43_00,K_R_N12_43_00,K_F_N12_43_00,K_R_N12_43_01,K_F_N12_43_00,K_R_N12_43_02)
plot(K_F_N10_43_00,K_R_N10_43_00,K_F_N10_43_00,K_R_N10_43_01,K_F_N10_43_00,K_R_N10_43_02)
plot(K_F_N8_43_00,K_R_N8_43_00,K_F_N8_43_00,K_R_N8_43_01)
plot(K_F_N6_43_00,K_R_N6_43_00,K_F_N6_43_00,K_R_N6_43_01,K_F_N6_43_00,K_R_N6_43_02)
legend('N18,1','N18,2','N18,3','N16,1','N16,2','N16,3','N14,1','N14,2','N14,3','N12,1','N12,2','N12,3','N10,1','N10,2','N10,3','N8,1','N8,2','N6,1','N6,2','N6,3')
title('Knitted 0.43mm Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(2)
plot(K_F_N18_43_00,K_I_N18_43_00,K_F_N18_43_00,K_I_N18_43_01,K_F_N18_43_00,K_I_N18_43_02)
hold on
plot(K_F_N16_43_00,K_I_N16_43_00,K_F_N16_43_00,K_I_N16_43_01,K_F_N16_43_00,K_I_N16_43_02)
plot(K_F_N14_43_00,K_I_N14_43_00,K_F_N14_43_00,K_I_N14_43_01,K_F_N14_43_00,K_I_N14_43_02)
plot(K_F_N12_43_00,K_I_N12_43_00,K_F_N12_43_00,K_I_N12_43_01,K_F_N12_43_00,K_I_N12_43_02)
plot(K_F_N10_43_00,K_I_N10_43_00,K_F_N10_43_00,K_I_N10_43_01,K_F_N10_43_00,K_I_N10_43_02)
plot(K_F_N8_43_00,K_I_N8_43_00,K_F_N8_43_00,K_I_N8_43_01)
plot(K_F_N6_43_00,K_I_N6_43_00,K_F_N6_43_00,K_I_N6_43_01,K_F_N6_43_00,K_I_N6_43_02)
legend('N18,1','N18,2','N18,3','N16,1','N16,2','N16,3','N14,1','N14,2','N14,3','N12,1','N12,2','N12,3','N10,1','N10,2','N10,3','N8,1','N8,2','N6,1','N6,2','N6,3')
title('Knitted 0.43mm Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

figure(3)
plot(K_F_N18_43_00,K_R_N18_43_A)
hold on
plot(K_F_N16_43_00,K_R_N16_43_A)
plot(K_F_N14_43_00,K_R_N14_43_A)
plot(K_F_N12_43_00,K_R_N12_43_A)
plot(K_F_N10_43_00,K_R_N10_43_A)
plot(K_F_N8_43_00,K_R_N8_43_A)
plot(K_F_N6_43_00,K_R_N6_43_A)
legend('N18,A''N16,A','N14,A','N12,A','N10,A','N8,A','N6,A')
title('Knitted 0.43mm Real Average')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

figure(4)
plot(K_F_N18_43_00,K_I_N18_43_A)
hold on
plot(K_F_N16_43_00,K_I_N16_43_A)
plot(K_F_N14_43_00,K_I_N14_43_A)
plot(K_F_N12_43_00,K_I_N12_43_A)
plot(K_F_N10_43_00,K_I_N10_43_A)
plot(K_F_N8_43_00,K_I_N8_43_A)
plot(K_F_N6_43_00,K_I_N6_43_A)
legend('N18,A''N16,A','N14,A','N12,A','N10,A','N8,A','N6,A')
title('Knitted 0.43mm Imag Average')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

%% 
% syms k b
% [k,b] = solve(91.0001==k*72314900+b, -32.7254==k*72481600+b,k,b);
% F_K_43 = [F_K_43,eval(abs(b/k))];

[M,I] = max(K_R_N12_43_00)
F_K_43 = [F_K_43, K_F_N12_43_00(I)]


% F_K_43 = [7.1648    6.2975    5.7638    5.3302, 4.7798    4.4963    4.1961].* 1.0e+07 ;
% F_K_43 = [7.1648    6.2975    5.7638    5.2802, 4.7965    4.4796    4.1961].* 1.0e+07 ;
%% C 0.44mm new 12.21
C_F_N18_44_00 = csvread('N18_0.44C_07.CSV',3,0,[3,0,602,0]);
C_R_N18_44_00 = csvread('N18_0.44C_07.CSV',3,1,[3,1,602,1]);
C_I_N18_44_00 = csvread('N18_0.44C_07.CSV',3,2,[3,2,602,2]);
C_R_N18_44_01 = csvread('N18_0.44C_08.CSV',3,1,[3,1,602,1]);
C_I_N18_44_01 = csvread('N18_0.44C_08.CSV',3,2,[3,2,602,2]);
C_R_N18_44_02 = csvread('N18_0.44C_09.CSV',3,1,[3,1,602,1]);
C_I_N18_44_02 = csvread('N18_0.44C_09.CSV',3,2,[3,2,602,2]);

C_R_N18_44_A=zeros(600:1);
C_I_N18_44_A=zeros(600:1);
for i=1:600
    C_R_N18_44_A(i)= (C_R_N18_44_00(i)+C_R_N18_44_01(i)+C_R_N18_44_02(i))./3;
    C_I_N18_44_A(i)= (C_I_N18_44_00(i)+C_I_N18_44_01(i)+C_I_N18_44_02(i))./3;
end

C_F_N16_44_00 = csvread('N16_0.44C_07.CSV',3,0,[3,0,602,0]);
C_R_N16_44_00 = csvread('N16_0.44C_07.CSV',3,1,[3,1,602,1]);
C_I_N16_44_00 = csvread('N16_0.44C_07.CSV',3,2,[3,2,602,2]);
C_R_N16_44_01 = csvread('N16_0.44C_08.CSV',3,1,[3,1,602,1]);
C_I_N16_44_01 = csvread('N16_0.44C_08.CSV',3,2,[3,2,602,2]);
C_R_N16_44_02 = csvread('N16_0.44C_09.CSV',3,1,[3,1,602,1]);
C_I_N16_44_02 = csvread('N16_0.44C_09.CSV',3,2,[3,2,602,2]);

C_R_N16_44_A=zeros(600:1);
C_I_N16_44_A=zeros(600:1);
for i=1:600
    C_R_N16_44_A(i)= (C_R_N16_44_00(i)+C_R_N16_44_01(i)+C_R_N16_44_02(i))./3;
    C_I_N16_44_A(i)= (C_I_N16_44_00(i)+C_I_N16_44_01(i)+C_I_N16_44_02(i))./3;
end

C_F_N14_44_00 = csvread('N14_0.44C_07.CSV',3,0,[3,0,602,0]);
C_R_N14_44_00 = csvread('N14_0.44C_07.CSV',3,1,[3,1,602,1]);
C_I_N14_44_00 = csvread('N14_0.44C_07.CSV',3,2,[3,2,602,2]);
C_R_N14_44_01 = csvread('N14_0.44C_08.CSV',3,1,[3,1,602,1]);
C_I_N14_44_01 = csvread('N14_0.44C_08.CSV',3,2,[3,2,602,2]);
C_R_N14_44_02 = csvread('N14_0.44C_09.CSV',3,1,[3,1,602,1]);
C_I_N14_44_02 = csvread('N14_0.44C_09.CSV',3,2,[3,2,602,2]);

C_R_N14_44_A=zeros(600:1);
C_I_N14_44_A=zeros(600:1);
for i=1:600
    C_R_N14_44_A(i)= (C_R_N14_44_00(i)+C_R_N14_44_01(i)+C_R_N14_44_02(i))./3;
    C_I_N14_44_A(i)= (C_I_N14_44_00(i)+C_I_N14_44_01(i)+C_I_N14_44_02(i))./3;
end

C_F_N12_44_00 = csvread('N12_0.44C_07.CSV',3,0,[3,0,602,0]);
C_R_N12_44_00 = csvread('N12_0.44C_07.CSV',3,1,[3,1,602,1]);
C_I_N12_44_00 = csvread('N12_0.44C_07.CSV',3,2,[3,2,602,2]);
C_R_N12_44_01 = csvread('N12_0.44C_08.CSV',3,1,[3,1,602,1]);
C_I_N12_44_01 = csvread('N12_0.44C_08.CSV',3,2,[3,2,602,2]);
C_R_N12_44_02 = csvread('N12_0.44C_09.CSV',3,1,[3,1,602,1]);
C_I_N12_44_02 = csvread('N12_0.44C_09.CSV',3,2,[3,2,602,2]);

C_R_N12_44_A=zeros(600:1);
C_I_N12_44_A=zeros(600:1);
for i=1:600
    C_R_N12_44_A(i)= (C_R_N12_44_00(i)+C_R_N12_44_01(i)+C_R_N12_44_02(i))./3;
    C_I_N12_44_A(i)= (C_I_N12_44_00(i)+C_I_N12_44_01(i)+C_I_N12_44_02(i))./3;
end

C_F_N10_44_00 = csvread('N10_0.44C_07.CSV',3,0,[3,0,602,0]);
C_R_N10_44_00 = csvread('N10_0.44C_07.CSV',3,1,[3,1,602,1]);
C_I_N10_44_00 = csvread('N10_0.44C_07.CSV',3,2,[3,2,602,2]);
C_R_N10_44_01 = csvread('N10_0.44C_08.CSV',3,1,[3,1,602,1]);
C_I_N10_44_01 = csvread('N10_0.44C_08.CSV',3,2,[3,2,602,2]);
C_R_N10_44_02 = csvread('N10_0.44C_09.CSV',3,1,[3,1,602,1]);
C_I_N10_44_02 = csvread('N10_0.44C_09.CSV',3,2,[3,2,602,2]);

C_R_N10_44_A=zeros(600:1);
C_I_N10_44_A=zeros(600:1);
for i=1:600
    C_R_N10_44_A(i)= (C_R_N10_44_00(i)+C_R_N10_44_01(i)+C_R_N10_44_02(i))./3;
    C_I_N10_44_A(i)= (C_I_N10_44_00(i)+C_I_N10_44_01(i)+C_I_N10_44_02(i))./3;
end

C_F_N8_44_00 = csvread('N8_0.44C_08.CSV',3,0,[3,0,602,0]);
C_R_N8_44_00 = csvread('N8_0.44C_08.CSV',3,1,[3,1,602,1]);
C_I_N8_44_00 = csvread('N8_0.44C_08.CSV',3,2,[3,2,602,2]);
C_R_N8_44_01 = csvread('N8_0.44C_09.CSV',3,1,[3,1,602,1]);
C_I_N8_44_01 = csvread('N8_0.44C_09.CSV',3,2,[3,2,602,2]);

C_R_N8_44_A=zeros(600:1);
C_I_N8_44_A=zeros(600:1);
for i=1:600
    C_R_N8_44_A(i)= (C_R_N8_44_00(i)+C_R_N8_44_01(i))./2;
    C_I_N8_44_A(i)= (C_I_N8_44_00(i)+C_I_N8_44_01(i))./2;
end

C_F_N6_44_00 = csvread('N6_0.44C_07.CSV',3,0,[3,0,602,0]);
C_R_N6_44_00 = csvread('N6_0.44C_07.CSV',3,1,[3,1,602,1]);
C_I_N6_44_00 = csvread('N6_0.44C_07.CSV',3,2,[3,2,602,2]);
C_R_N6_44_01 = csvread('N6_0.44C_08.CSV',3,1,[3,1,602,1]);
C_I_N6_44_01 = csvread('N6_0.44C_08.CSV',3,2,[3,2,602,2]);
C_R_N6_44_02 = csvread('N6_0.44C_09.CSV',3,1,[3,1,602,1]);
C_I_N6_44_02 = csvread('N6_0.44C_09.CSV',3,2,[3,2,602,2]);

C_R_N6_44_A=zeros(600:1);
C_I_N6_44_A=zeros(600:1);
for i=1:600
    C_R_N6_44_A(i)= (C_R_N6_44_00(i)+C_R_N6_44_01(i)+C_R_N6_44_02(i))./3;
    C_I_N6_44_A(i)= (C_I_N6_44_00(i)+C_I_N6_44_01(i)+C_I_N6_44_02(i))./3;
end

F_C_44 = [];
x = [6,8,10,12,14,16,18];
%Analyze L
L_C_44_0 = flip([C_I_N18_44_00(1),C_I_N16_44_00(1),C_I_N14_44_00(1),C_I_N12_44_00(1),C_I_N10_44_00(1),C_I_N8_44_00(1),C_I_N6_44_00(1)]./(1e5*(2*pi)));
L_C_44_1 = flip([C_I_N18_44_01(1),C_I_N16_44_01(1),C_I_N14_44_01(1),C_I_N12_44_01(1),C_I_N10_44_01(1),C_I_N8_44_01(1),C_I_N6_44_01(1)]./(1e5*(2*pi)));
L_C_44_2 = flip([C_I_N18_44_02(1),C_I_N16_44_02(1),C_I_N14_44_02(1),C_I_N12_44_02(1),C_I_N10_44_02(1),C_I_N8_44_01(1),C_I_N6_44_02(1)]./(1e5*(2*pi)));

%L_C_44_A = zeros(7,1);
%for i = 1:7
%    L_C_44_A(i)= (L_C_44_0(i)+L_C_44_1(i)+L_C_44_2(i))./3;
%end
% L_C_44_A = flip([C_I_N18_44_A(1),C_I_N16_44_A(1),C_I_N14_44_A(1),C_I_N12_44_A(1),C_I_N10_44_A(1),C_I_N8_44_A(1),C_I_N6_44_A(1)]./(1e5*(2*pi)));

L_C_44_A = [C_I_N18_44_A(1),C_I_N16_44_A(1),C_I_N14_44_A(1),C_I_N12_44_A(1),C_I_N10_44_A(1),C_I_N8_44_A(1),C_I_N6_44_A(1)]./(1e5*(2*pi));
L_C_44_A = flip(L_C_44_A);

figure(7)
plot(x,L_C_44_0,x,L_C_44_1,x,L_C_44_2)
title('Inductance C_44')
grid on

figure(8)
plot(x,L_C_44_A)
title('Average Inductance C_44')
grid on

%plot individual graph
figure(9)
plot(C_F_N18_44_00,C_R_N18_44_00,C_F_N18_44_00,C_R_N18_44_01,C_F_N18_44_00,C_R_N18_44_02)
hold on
plot(C_F_N16_44_00,C_R_N16_44_00,C_F_N16_44_00,C_R_N16_44_01,C_F_N16_44_00,C_R_N16_44_02)
plot(C_F_N14_44_00,C_R_N14_44_00,C_F_N14_44_00,C_R_N14_44_01,C_F_N14_44_00,C_R_N14_44_02)
plot(C_F_N12_44_00,C_R_N12_44_00,C_F_N12_44_00,C_R_N12_44_01,C_F_N12_44_00,C_R_N12_44_02)
plot(C_F_N10_44_00,C_R_N10_44_00,C_F_N10_44_00,C_R_N10_44_01,C_F_N10_44_00,C_R_N10_44_02)
plot(C_F_N8_44_00,C_R_N8_44_00,C_F_N8_44_00,C_R_N8_44_01)
plot(C_F_N6_44_00,C_R_N6_44_00,C_F_N6_44_00,C_R_N6_44_01,C_F_N6_44_00,C_R_N6_44_02)
legend('N18,1','N18,2','N18,3','N16,1','N16,2','N16,3','N14,1','N14,2','N14,3','N12,1','N12,2','N12,3','N10,1','N10,2','N10,3','N8,1','N8,2','N6,1','N6,2','N6,3')
title('Copper 0.44mm Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(10)
plot(C_F_N18_44_00,C_I_N18_44_00,C_F_N18_44_00,C_I_N18_44_01,C_F_N18_44_00,C_I_N18_44_02)
hold on
plot(C_F_N16_44_00,C_I_N16_44_00,C_F_N16_44_00,C_I_N16_44_01,C_F_N16_44_00,C_I_N16_44_02)
plot(C_F_N14_44_00,C_I_N14_44_00,C_F_N14_44_00,C_I_N14_44_01,C_F_N14_44_00,C_I_N14_44_02)
plot(C_F_N12_44_00,C_I_N12_44_00,C_F_N12_44_00,C_I_N12_44_01,C_F_N12_44_00,C_I_N12_44_02)
plot(C_F_N10_44_00,C_I_N10_44_00,C_F_N10_44_00,C_I_N10_44_01,C_F_N10_44_00,C_I_N10_44_02)
plot(C_F_N8_44_00,C_I_N8_44_00,C_F_N8_44_00,C_I_N8_44_01)
plot(C_F_N6_44_00,C_I_N6_44_00,C_F_N6_44_00,C_I_N6_44_01,C_F_N6_44_00,C_I_N6_44_02)
legend('N18,1','N18,2','N18,3','N16,1','N16,2','N16,3','N14,1','N14,2','N14,3','N12,1','N12,2','N12,3','N10,1','N10,2','N10,3','N8,1','N8,2','N6,1','N6,2','N6,3')
title('Copper 0.44mm Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

figure(11)
plot(C_F_N18_44_00,C_R_N18_44_A)
hold on
plot(C_F_N16_44_00,C_R_N16_44_A)
plot(C_F_N14_44_00,C_R_N14_44_A)
plot(C_F_N12_44_00,C_R_N12_44_A)
plot(C_F_N10_44_00,C_R_N10_44_A)
plot(C_F_N8_44_00,C_R_N8_44_A)
plot(C_F_N6_44_00,C_R_N6_44_A)
legend('N18,A''N16,A','N14,A','N12,A','N10,A','N8,A','N6,A')
title('Copper 0.43mm Real Average')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

figure(12)
plot(C_F_N18_44_00,C_I_N18_44_A)
hold on
plot(C_F_N16_44_00,C_I_N16_44_A)
plot(C_F_N14_44_00,C_I_N14_44_A)
plot(C_F_N12_44_00,C_I_N12_44_A)
plot(C_F_N10_44_00,C_I_N10_44_A)
plot(C_F_N8_44_00,C_I_N8_44_A)
plot(C_F_N6_44_00,C_I_N6_44_A)
legend('N18,A''N16,A','N14,A','N12,A','N10,A','N8,A','N6,A')
title('Copper 0.43mm Imag Average')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

%% 
% syms k b
% [k,b] = solve(513.94==k*65477000+b, -763.752==k*65810500+b,k,b);
% [M,I] = max(C_R_N18_44_00);
% F_C_44 = [F_C_44, C_F_N18_44_00(I)]
% F_C_44 = [7.2648    6.5310    5.8973    5.3469,4.9133    4.5797    4.2795];
F_C_44 = [7.2648    6.5977    5.8973    5.3469,4.9133    4.5630    4.2795];
%% 0.27 Copper
C_F_N18_27_00 = csvread('N18_0.27C_07.CSV',3,0,[3,0,602,0]);
C_R_N18_27_00 = csvread('N18_0.27C_07.CSV',3,1,[3,1,602,1]);
C_I_N18_27_00 = csvread('N18_0.27C_07.CSV',3,2,[3,2,602,2]);
C_R_N18_27_01 = csvread('N18_0.27C_08.CSV',3,1,[3,1,602,1]);
C_I_N18_27_01 = csvread('N18_0.27C_08.CSV',3,2,[3,2,602,2]);
C_R_N18_27_02 = csvread('N18_0.27C_09.CSV',3,1,[3,1,602,1]);
C_I_N18_27_02 = csvread('N18_0.27C_09.CSV',3,2,[3,2,602,2]);

C_R_N18_27_A=zeros(600:1);
C_I_N18_27_A=zeros(600:1);
for i=1:600
    C_R_N18_27_A(i)= (C_R_N18_27_00(i)+C_R_N18_27_01(i)+C_R_N18_27_02(i))./3;
    C_I_N18_27_A(i)= (C_I_N18_27_00(i)+C_I_N18_27_01(i)+C_I_N18_27_02(i))./3;
end

C_F_N16_27_00 = csvread('N16_0.27C_07.CSV',3,0,[3,0,602,0]);
C_R_N16_27_00 = csvread('N16_0.27C_07.CSV',3,1,[3,1,602,1]);
C_I_N16_27_00 = csvread('N16_0.27C_07.CSV',3,2,[3,2,602,2]);
C_R_N16_27_01 = csvread('N16_0.27C_08.CSV',3,1,[3,1,602,1]);
C_I_N16_27_01 = csvread('N16_0.27C_08.CSV',3,2,[3,2,602,2]);
C_R_N16_27_02 = csvread('N16_0.27C_09.CSV',3,1,[3,1,602,1]);
C_I_N16_27_02 = csvread('N16_0.27C_09.CSV',3,2,[3,2,602,2]);

C_R_N16_27_A=zeros(600:1);
C_I_N16_27_A=zeros(600:1);
for i=1:600
    C_R_N16_27_A(i)= (C_R_N16_27_00(i)+C_R_N16_27_01(i)+C_R_N16_27_02(i))./3;
    C_I_N16_27_A(i)= (C_I_N16_27_00(i)+C_I_N16_27_01(i)+C_I_N16_27_02(i))./3;
end

C_F_N14_27_00 = csvread('N14_0.27C_07.CSV',3,0,[3,0,602,0]);
C_R_N14_27_00 = csvread('N14_0.27C_07.CSV',3,1,[3,1,602,1]);
C_I_N14_27_00 = csvread('N14_0.27C_07.CSV',3,2,[3,2,602,2]);
C_R_N14_27_01 = csvread('N14_0.27C_08.CSV',3,1,[3,1,602,1]);
C_I_N14_27_01 = csvread('N14_0.27C_08.CSV',3,2,[3,2,602,2]);
C_R_N14_27_02 = csvread('N14_0.27C_09.CSV',3,1,[3,1,602,1]);
C_I_N14_27_02 = csvread('N14_0.27C_09.CSV',3,2,[3,2,602,2]);

C_R_N14_27_A=zeros(600:1);
C_I_N14_27_A=zeros(600:1);
for i=1:600
    C_R_N14_27_A(i)= (C_R_N14_27_00(i)+C_R_N14_27_01(i)+C_R_N14_27_02(i))./3;
    C_I_N14_27_A(i)= (C_I_N14_27_00(i)+C_I_N14_27_01(i)+C_I_N14_27_02(i))./3;
end

C_F_N12_27_00 = csvread('N12_0.27C_07.CSV',3,0,[3,0,602,0]);
C_R_N12_27_00 = csvread('N12_0.27C_07.CSV',3,1,[3,1,602,1]);
C_I_N12_27_00 = csvread('N12_0.27C_07.CSV',3,2,[3,2,602,2]);
C_R_N12_27_01 = csvread('N12_0.27C_08.CSV',3,1,[3,1,602,1]);
C_I_N12_27_01 = csvread('N12_0.27C_08.CSV',3,2,[3,2,602,2]);
C_R_N12_27_02 = csvread('N12_0.27C_09.CSV',3,1,[3,1,602,1]);
C_I_N12_27_02 = csvread('N12_0.27C_09.CSV',3,2,[3,2,602,2]);

C_R_N12_27_A=zeros(600:1);
C_I_N12_27_A=zeros(600:1);
for i=1:600
    C_R_N12_27_A(i)= (C_R_N12_27_00(i)+C_R_N12_27_01(i)+C_R_N12_27_02(i))./3;
    C_I_N12_27_A(i)= (C_I_N12_27_00(i)+C_I_N12_27_01(i)+C_I_N12_27_02(i))./3;
end

C_F_N10_27_00 = csvread('N10_0.27C_07.CSV',3,0,[3,0,602,0]);
C_R_N10_27_00 = csvread('N10_0.27C_07.CSV',3,1,[3,1,602,1]);
C_I_N10_27_00 = csvread('N10_0.27C_07.CSV',3,2,[3,2,602,2]);
C_R_N10_27_01 = csvread('N10_0.27C_08.CSV',3,1,[3,1,602,1]);
C_I_N10_27_01 = csvread('N10_0.27C_08.CSV',3,2,[3,2,602,2]);
C_R_N10_27_02 = csvread('N10_0.27C_09.CSV',3,1,[3,1,602,1]);
C_I_N10_27_02 = csvread('N10_0.27C_09.CSV',3,2,[3,2,602,2]);

C_R_N10_27_A=zeros(600:1);
C_I_N10_27_A=zeros(600:1);
for i=1:600
    C_R_N10_27_A(i)= (C_R_N10_27_00(i)+C_R_N10_27_01(i)+C_R_N10_27_02(i))./3;
    C_I_N10_27_A(i)= (C_I_N10_27_00(i)+C_I_N10_27_01(i)+C_I_N10_27_02(i))./3;
end

C_F_N8_27_00 = csvread('N8_0.27C_08.CSV',3,0,[3,0,602,0]);
C_R_N8_27_00 = csvread('N8_0.27C_08.CSV',3,1,[3,1,602,1]);
C_I_N8_27_00 = csvread('N8_0.27C_08.CSV',3,2,[3,2,602,2]);
C_R_N8_27_01 = csvread('N8_0.27C_09.CSV',3,1,[3,1,602,1]);
C_I_N8_27_01 = csvread('N8_0.27C_09.CSV',3,2,[3,2,602,2]);

C_R_N8_27_A=zeros(600:1);
C_I_N8_27_A=zeros(600:1);
for i=1:600
    C_R_N8_27_A(i)= (C_R_N8_27_00(i)+C_R_N8_27_01(i))./2;
    C_I_N8_27_A(i)= (C_I_N8_27_00(i)+C_I_N8_27_01(i))./2;
end

C_F_N6_27_00 = csvread('N6_0.27C_07.CSV',3,0,[3,0,602,0]);
C_R_N6_27_00 = csvread('N6_0.27C_07.CSV',3,1,[3,1,602,1]);
C_I_N6_27_00 = csvread('N6_0.27C_07.CSV',3,2,[3,2,602,2]);
C_R_N6_27_01 = csvread('N6_0.27C_08.CSV',3,1,[3,1,602,1]);
C_I_N6_27_01 = csvread('N6_0.27C_08.CSV',3,2,[3,2,602,2]);
C_R_N6_27_02 = csvread('N6_0.27C_09.CSV',3,1,[3,1,602,1]);
C_I_N6_27_02 = csvread('N6_0.27C_09.CSV',3,2,[3,2,602,2]);

C_R_N6_27_A=zeros(600:1);
C_I_N6_27_A=zeros(600:1);
for i=1:600
    C_R_N6_27_A(i)= (C_R_N6_27_00(i)+C_R_N6_27_01(i)+C_R_N6_27_02(i))./3;
    C_I_N6_27_A(i)= (C_I_N6_27_00(i)+C_I_N6_27_01(i)+C_I_N6_27_02(i))./3;
end

F_C_27 = [];
x = [6,8,10,12,14,16,18];
%Analyze L
L_C_27_0 = flip([C_I_N18_27_00(1),C_I_N16_27_00(1),C_I_N14_27_00(1),C_I_N12_27_00(1),C_I_N10_27_00(1),C_I_N8_27_00(1),C_I_N6_27_00(1)]./(1e5*(2*pi)));
L_C_27_1 = flip([C_I_N18_27_01(1),C_I_N16_27_01(1),C_I_N14_27_01(1),C_I_N12_27_01(1),C_I_N10_27_01(1),C_I_N8_27_01(1),C_I_N6_27_01(1)]./(1e5*(2*pi)));
L_C_27_2 = flip([C_I_N18_27_02(1),C_I_N16_27_02(1),C_I_N14_27_02(1),C_I_N12_27_02(1),C_I_N10_27_02(1),C_I_N8_27_01(1),C_I_N6_27_02(1)]./(1e5*(2*pi)));

%L_C_27_A = zeros(7,1);
%for i = 1:7
%    L_C_27_A(i)= (L_C_27_0(i)+L_C_27_1(i)+L_C_27_2(i))./3;
%end

%L_C_27_A = flip([C_I_N18_27_A(1),C_I_N16_27_A(1),C_I_N14_27_A(1),C_I_N12_27_A(1),C_I_N10_27_A(1),C_I_N8_27_A(1),C_I_N6_27_A(1)]./(1e5*(2*pi)));

L_C_27_A = [C_I_N18_27_A(1),C_I_N16_27_A(1),C_I_N14_27_A(1),C_I_N12_27_A(1),C_I_N10_27_A(1),C_I_N8_27_A(1),C_I_N6_27_A(1)]./(1e5*(2*pi));
L_C_27_A = flip(L_C_27_A);

figure(13)
plot(x,L_C_27_0,x,L_C_27_1,x,L_C_27_2)
title('Inductance C_27')
grid on

figure(14)
plot(x,L_C_27_A)
title('Average Inductance C_27')
grid on

%plot individual graph
figure(15)
plot(C_F_N18_27_00,C_R_N18_27_00,C_F_N18_27_00,C_R_N18_27_01,C_F_N18_27_00,C_R_N18_27_02)
hold on
plot(C_F_N16_27_00,C_R_N16_27_00,C_F_N16_27_00,C_R_N16_27_01,C_F_N16_27_00,C_R_N16_27_02)
plot(C_F_N14_27_00,C_R_N14_27_00,C_F_N14_27_00,C_R_N14_27_01,C_F_N14_27_00,C_R_N14_27_02)
plot(C_F_N12_27_00,C_R_N12_27_00,C_F_N12_27_00,C_R_N12_27_01,C_F_N12_27_00,C_R_N12_27_02)
plot(C_F_N10_27_00,C_R_N10_27_00,C_F_N10_27_00,C_R_N10_27_01,C_F_N10_27_00,C_R_N10_27_02)
plot(C_F_N8_27_00,C_R_N8_27_00,C_F_N8_27_00,C_R_N8_27_01)
plot(C_F_N6_27_00,C_R_N6_27_00,C_F_N6_27_00,C_R_N6_27_01,C_F_N6_27_00,C_R_N6_27_02)
legend('N18,1','N18,2','N18,3','N16,1','N16,2','N16,3','N14,1','N14,2','N14,3','N12,1','N12,2','N12,3','N10,1','N10,2','N10,3','N8,1','N8,2','N6,0','N6,1','N6,2')
title('Copper 0.27mm Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(16)
plot(C_F_N18_27_00,C_I_N18_27_00,C_F_N18_27_00,C_I_N18_27_01,C_F_N18_27_00,C_I_N18_27_02)
hold on
plot(C_F_N16_27_00,C_I_N16_27_00,C_F_N16_27_00,C_I_N16_27_01,C_F_N16_27_00,C_I_N16_27_02)
plot(C_F_N14_27_00,C_I_N14_27_00,C_F_N14_27_00,C_I_N14_27_01,C_F_N14_27_00,C_I_N14_27_02)
plot(C_F_N12_27_00,C_I_N12_27_00,C_F_N12_27_00,C_I_N12_27_01,C_F_N12_27_00,C_I_N12_27_02)
plot(C_F_N10_27_00,C_I_N10_27_00,C_F_N10_27_00,C_I_N10_27_01,C_F_N10_27_00,C_I_N10_27_02)
plot(C_F_N8_27_00,C_I_N8_27_00,C_F_N8_27_00,C_I_N8_27_01)
plot(C_F_N6_27_00,C_I_N6_27_00,C_F_N6_27_00,C_I_N6_27_01,C_F_N6_27_00,C_I_N6_27_02)
legend('N18,1','N18,2','N18,3','N16,1','N16,2','N16,3','N14,1','N14,2','N14,3','N12,1','N12,2','N12,3','N10,1','N10,2','N10,3','N8,1','N8,2','N6,0','N6,1','N6,2')
title('Copper 0.27mm Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

figure(17)
plot(C_F_N18_27_00,C_R_N18_27_A)
hold on
plot(C_F_N16_27_00,C_R_N16_27_A)
plot(C_F_N14_27_00,C_R_N14_27_A)
plot(C_F_N12_27_00,C_R_N12_27_A)
plot(C_F_N10_27_00,C_R_N10_27_A);
plot(C_F_N8_27_00,C_R_N8_27_A)
plot(C_F_N6_27_00,C_R_N6_27_A)
legend('N18,A''N16,A','N14,A','N12,A','N10,A','N8,A','N6,A')
title('Copper 0.27mm Real Average')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

figure(18)
plot(C_F_N18_27_00,C_I_N18_27_A)
hold on
plot(C_F_N16_27_00,C_I_N16_27_A)
plot(C_F_N14_27_00,C_I_N14_27_A)
plot(C_F_N12_27_00,C_I_N12_27_A)
plot(C_F_N10_27_00,C_I_N10_27_A);
plot(C_F_N8_27_00,C_I_N8_27_A)
plot(C_F_N6_27_00,C_I_N6_27_A)
legend('N18,A''N16,A','N14,A','N12,A','N10,A','N8,A','N6,A')
title('Copper 0.27mm Imag Average')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

%% 
K_F_N18_23_00 = csvread('N18_0.23K_07.CSV',3,0,[3,0,602,0]);
K_R_N18_23_00 = csvread('N18_0.23K_07.CSV',3,1,[3,1,602,1]);
K_I_N18_23_00 = csvread('N18_0.23K_07.CSV',3,2,[3,2,602,2]);
K_R_N18_23_01 = csvread('N18_0.23K_08.CSV',3,1,[3,1,602,1]);
K_I_N18_23_01 = csvread('N18_0.23K_08.CSV',3,2,[3,2,602,2]);
K_R_N18_23_02 = csvread('N18_0.23K_09.CSV',3,1,[3,1,602,1]);
K_I_N18_23_02 = csvread('N18_0.23K_09.CSV',3,2,[3,2,602,2]);

K_R_N18_23_A=zeros(600:1);
K_I_N18_23_A=zeros(600:1);
for i=1:600
    K_R_N18_23_A(i)= (K_R_N18_23_00(i)+K_R_N18_23_01(i)+K_R_N18_23_02(i))./3;
    K_I_N18_23_A(i)= (K_I_N18_23_00(i)+K_I_N18_23_01(i)+K_I_N18_23_02(i))./3;
end

K_F_N16_23_00 = csvread('N16_0.23K_07.CSV',3,0,[3,0,602,0]);
K_R_N16_23_00 = csvread('N16_0.23K_07.CSV',3,1,[3,1,602,1]);
K_I_N16_23_00 = csvread('N16_0.23K_07.CSV',3,2,[3,2,602,2]);
K_R_N16_23_01 = csvread('N16_0.23K_08.CSV',3,1,[3,1,602,1]);
K_I_N16_23_01 = csvread('N16_0.23K_08.CSV',3,2,[3,2,602,2]);
K_R_N16_23_02 = csvread('N16_0.23K_09.CSV',3,1,[3,1,602,1]);
K_I_N16_23_02 = csvread('N16_0.23K_09.CSV',3,2,[3,2,602,2]);

K_R_N16_23_A=zeros(600:1);
K_I_N16_23_A=zeros(600:1);
for i=1:600
    K_R_N16_23_A(i)= (K_R_N16_23_00(i)+K_R_N16_23_01(i)+K_R_N16_23_02(i))./3;
    K_I_N16_23_A(i)= (K_I_N16_23_00(i)+K_I_N16_23_01(i)+K_I_N16_23_02(i))./3;
end

K_F_N14_23_00 = csvread('N14_0.23K_07.CSV',3,0,[3,0,602,0]);
K_R_N14_23_00 = csvread('N14_0.23K_07.CSV',3,1,[3,1,602,1]);
K_I_N14_23_00 = csvread('N14_0.23K_07.CSV',3,2,[3,2,602,2]);
K_R_N14_23_01 = csvread('N14_0.23K_08.CSV',3,1,[3,1,602,1]);
K_I_N14_23_01 = csvread('N14_0.23K_08.CSV',3,2,[3,2,602,2]);
K_R_N14_23_02 = csvread('N14_0.23K_09.CSV',3,1,[3,1,602,1]);
K_I_N14_23_02 = csvread('N14_0.23K_09.CSV',3,2,[3,2,602,2]);

K_R_N14_23_A=zeros(600:1);
K_I_N14_23_A=zeros(600:1);
for i=1:600
    K_R_N14_23_A(i)= (K_R_N14_23_00(i)+K_R_N14_23_01(i)+K_R_N14_23_02(i))./3;
    K_I_N14_23_A(i)= (K_I_N14_23_00(i)+K_I_N14_23_01(i)+K_I_N14_23_02(i))./3;
end

K_F_N12_23_00 = csvread('N12_0.23K_07.CSV',3,0,[3,0,602,0]);
K_R_N12_23_00 = csvread('N12_0.23K_07.CSV',3,1,[3,1,602,1]);
K_I_N12_23_00 = csvread('N12_0.23K_07.CSV',3,2,[3,2,602,2]);
K_R_N12_23_01 = csvread('N12_0.23K_08.CSV',3,1,[3,1,602,1]);
K_I_N12_23_01 = csvread('N12_0.23K_08.CSV',3,2,[3,2,602,2]);
K_R_N12_23_02 = csvread('N12_0.23K_09.CSV',3,1,[3,1,602,1]);
K_I_N12_23_02 = csvread('N12_0.23K_09.CSV',3,2,[3,2,602,2]);

K_R_N12_23_A=zeros(600:1);
K_I_N12_23_A=zeros(600:1);
for i=1:600
    K_R_N12_23_A(i)= (K_R_N12_23_00(i)+K_R_N12_23_01(i)+K_R_N12_23_02(i))./3;
    K_I_N12_23_A(i)= (K_I_N12_23_00(i)+K_I_N12_23_01(i)+K_I_N12_23_02(i))./3;
end

K_F_N10_23_00 = csvread('N10_0.23K_07.CSV',3,0,[3,0,602,0]);
K_R_N10_23_00 = csvread('N10_0.23K_07.CSV',3,1,[3,1,602,1]);
K_I_N10_23_00 = csvread('N10_0.23K_07.CSV',3,2,[3,2,602,2]);
K_R_N10_23_01 = csvread('N10_0.23K_08.CSV',3,1,[3,1,602,1]);
K_I_N10_23_01 = csvread('N10_0.23K_08.CSV',3,2,[3,2,602,2]);
K_R_N10_23_02 = csvread('N10_0.23K_09.CSV',3,1,[3,1,602,1]);
K_I_N10_23_02 = csvread('N10_0.23K_09.CSV',3,2,[3,2,602,2]);

K_R_N10_23_A=zeros(600:1);
K_I_N10_23_A=zeros(600:1);
for i=1:600
    K_R_N10_23_A(i)= (K_R_N10_23_00(i)+K_R_N10_23_01(i)+K_R_N10_23_02(i))./3;
    K_I_N10_23_A(i)= (K_I_N10_23_00(i)+K_I_N10_23_01(i)+K_I_N10_23_02(i))./3;
end

K_F_N8_23_00 = csvread('N8_0.23K_08.CSV',3,0,[3,0,602,0]);
K_R_N8_23_00 = csvread('N8_0.23K_08.CSV',3,1,[3,1,602,1]);
K_I_N8_23_00 = csvread('N8_0.23K_08.CSV',3,2,[3,2,602,2]);
K_R_N8_23_01 = csvread('N8_0.23K_09.CSV',3,1,[3,1,602,1]);
K_I_N8_23_01 = csvread('N8_0.23K_09.CSV',3,2,[3,2,602,2]);

K_R_N8_23_A=zeros(600:1);
K_I_N8_23_A=zeros(600:1);
for i=1:600
    K_R_N8_23_A(i)= (K_R_N8_23_00(i)+K_R_N8_23_01(i))./2;
    K_I_N8_23_A(i)= (K_I_N8_23_00(i)+K_I_N8_23_01(i))./2;
end

K_F_N6_23_00 = csvread('N6_0.23K_07.CSV',3,0,[3,0,602,0]);
K_R_N6_23_00 = csvread('N6_0.23K_07.CSV',3,1,[3,1,602,1]);
K_I_N6_23_00 = csvread('N6_0.23K_07.CSV',3,2,[3,2,602,2]);
K_R_N6_23_01 = csvread('N6_0.23K_08.CSV',3,1,[3,1,602,1]);
K_I_N6_23_01 = csvread('N6_0.23K_08.CSV',3,2,[3,2,602,2]);
K_R_N6_23_02 = csvread('N6_0.23K_09.CSV',3,1,[3,1,602,1]);
K_I_N6_23_02 = csvread('N6_0.23K_09.CSV',3,2,[3,2,602,2]);

K_R_N6_23_A=zeros(600:1);
K_I_N6_23_A=zeros(600:1);
for i=1:600
    K_R_N6_23_A(i)= (K_R_N6_23_00(i)+K_R_N6_23_01(i)+K_R_N6_23_02(i))./3;
    K_I_N6_23_A(i)= (K_I_N6_23_00(i)+K_I_N6_23_01(i)+K_I_N6_23_02(i))./3;
end

x = [6,8,10,12,14,16,18];
%Analyze L
L_K_23_0 = [K_I_N18_23_00(1),K_I_N16_23_00(1),K_I_N14_23_00(1),K_I_N12_23_00(1),K_I_N10_23_00(1),K_I_N8_23_00(1),K_I_N6_23_00(1)]./(1e5*(2*pi));
L_K_23_1 = [K_I_N18_23_01(1),K_I_N16_23_01(1),K_I_N14_23_01(1),K_I_N12_23_01(1),K_I_N10_23_01(1),K_I_N8_23_01(1),K_I_N6_23_01(1)]./(1e5*(2*pi));
L_K_23_2 = [K_I_N18_23_02(1),K_I_N16_23_02(1),K_I_N14_23_02(1),K_I_N12_23_02(1),K_I_N10_23_02(1),K_I_N8_23_01(1),K_I_N6_23_02(1)]./(1e5*(2*pi));
L_K_23_0 = flip(L_K_23_0);
L_K_23_1 = flip(L_K_23_1);
L_K_23_2 = flip(L_K_23_2);

%L_K_23_A=zeros(7:1);
%for i=1:7
%   L_K_23_A(i) = L_K_23_0(i)+L_K_23_1(i)+L_K_23_2(i);
%end

%L_K_23_A = [K_I_N18_23_A(1),K_I_N16_23_A(1),K_I_N14_23_A(1),K_I_N12_23_A(1),K_I_N10_23_A(1),K_I_N8_23_A(1),K_I_N6_23_A(1)]./(1e5*(2*pi));
L_K_23_A = [K_I_N18_23_A(1),K_I_N16_23_A(1),K_I_N14_23_A(1),K_I_N12_23_A(1),K_I_N10_23_A(1),K_I_N8_23_A(1),K_I_N6_23_A(1)]./(1e5*(2*pi));
L_K_23_A = flip(L_K_23_A);

figure(19)
plot(x,L_K_23_0,x,L_K_23_1,x,L_K_23_2)
grid on
title('Inductance K_23')

figure(20)
plot(x,L_K_23_A)
grid on
title('Average Inductance K_23')

%plot individual graph
figure(21)
plot(K_F_N18_23_00,K_R_N18_23_00,K_F_N18_23_00,K_R_N18_23_01,K_F_N18_23_00,K_R_N18_23_02)
hold on
plot(K_F_N16_23_00,K_R_N16_23_00,K_F_N16_23_00,K_R_N16_23_01,K_F_N16_23_00,K_R_N16_23_02)
plot(K_F_N14_23_00,K_R_N14_23_00,K_F_N14_23_00,K_R_N14_23_01,K_F_N14_23_00,K_R_N14_23_02)
plot(K_F_N12_23_00,K_R_N12_23_00,K_F_N12_23_00,K_R_N12_23_01,K_F_N12_23_00,K_R_N12_23_02)
plot(K_F_N10_23_00,K_R_N10_23_00,K_F_N10_23_00,K_R_N10_23_01,K_F_N10_23_00,K_R_N10_23_02)
plot(K_F_N8_23_00,K_R_N8_23_00,K_F_N8_23_00,K_R_N8_23_01)
plot(K_F_N6_23_00,K_R_N6_23_00,K_F_N6_23_00,K_R_N6_23_01,K_F_N6_23_00,K_R_N6_23_02)
legend('N18,1','N18,2','N18,3','N16,1','N16,2','N16,3','N14,1','N14,2','N14,3','N12,1','N12,2','N12,3','N10,1','N10,2','N10,3','N8,1','N8,2','N6,1','N6,2','N6,3')
title('Knitted 0.23mm Real')
xlabel('Frequency (Hz)')
ylabel('Ohms')
grid on
hold off

figure(22)
plot(K_F_N18_23_00,K_I_N18_23_00,K_F_N18_23_00,K_I_N18_23_01,K_F_N18_23_00,K_I_N18_23_02)
hold on
plot(K_F_N16_23_00,K_I_N16_23_00,K_F_N16_23_00,K_I_N16_23_01,K_F_N16_23_00,K_I_N16_23_02)
plot(K_F_N14_23_00,K_I_N14_23_00,K_F_N14_23_00,K_I_N14_23_01,K_F_N14_23_00,K_I_N14_23_02)
plot(K_F_N12_23_00,K_I_N12_23_00,K_F_N12_23_00,K_I_N12_23_01,K_F_N12_23_00,K_I_N12_23_02)
plot(K_F_N10_23_00,K_I_N10_23_00,K_F_N10_23_00,K_I_N10_23_01,K_F_N10_23_00,K_I_N10_23_02)
plot(K_F_N8_23_00,K_I_N8_23_00,K_F_N8_23_00,K_I_N8_23_01)
plot(K_F_N6_23_00,K_I_N6_23_00,K_F_N6_23_00,K_I_N6_23_01,K_F_N6_23_00,K_I_N6_23_02)
legend('N18,1','N18,2','N18,3','N16,1','N16,2','N16,3','N14,1','N14,2','N14,3','N12,1','N12,2','N12,3','N10,1','N10,2','N10,3','N8,1','N8,2','N6,1','N6,2','N6,3')
title('Knitted 0.23mm Imag')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

figure(23)
plot(K_F_N18_23_00,K_R_N18_23_A)
hold on
plot(K_F_N16_23_00,K_R_N16_23_A)
plot(K_F_N14_23_00,K_R_N14_23_A)
plot(K_F_N12_23_00,K_R_N12_23_A)
plot(K_F_N10_23_00,K_R_N10_23_A);
plot(K_F_N8_23_00,K_R_N8_23_A)
plot(K_F_N6_23_00,K_R_N6_23_A)
legend('N18,A''N16,A','N14,A','N12,A','N10,A','N8,A','N6,A')
title('Knitted 0.23mm Real Average')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off

figure(24)
plot(K_F_N18_23_00,K_I_N18_23_A)
hold on
plot(K_F_N16_23_00,K_I_N16_23_A)
plot(K_F_N14_23_00,K_I_N14_23_A)
plot(K_F_N12_23_00,K_I_N12_23_A)
plot(K_F_N10_23_00,K_I_N10_23_A);
plot(K_F_N8_23_00,K_I_N8_23_A)
plot(K_F_N6_23_00,K_I_N6_23_A)
legend('N18,A''N16,A','N14,A','N12,A','N10,A','N8,A','N6,A')
title('Knitted 0.23mm Imag Average')
xlabel('Frequency (Hz)')
ylabel('Reactance')
grid on
hold off
%% 
[M,I] = max(K_R_N18_23_00);
F_K_23 = [F_K_23, K_F_N18_23_00(I)]
%% 
% syms k b
% [k,b] = solve(797.88==k*48632400+b, -286.278==k*48799200+b,k,b);
% F_C_27 = [F_C_27,eval(abs(b/k))];
% [M,I] = max(C_R_N18_27_00);
% F_C_27 = [F_C_27, C_F_N18_27_00(I)]
F_C_27 = [7.1648    6.4143    5.8472    5.3469,4.8632    4.5464    4.2795];
%% 
%F_C_27 = [7.1648    6.4143    5.8472    5.3469,4.8632    4.5464    4.2795].* 1.0e+07 ;
%F_C_44 = [7.2648    6.5310    5.8973    5.3469,4.9133    4.5797    4.2795].* 1.0e+07 ;
%F_K_43 = [7.1648    6.2975    5.7638    5.2802,4.7798    4.4963    4.1961].* 1.0e+07 ;
%F_K_23 = [7.0647    6.3642    5.7305    5.2802,4.7965    4.4796    4.1794].* 1.0e+07 ;
F_C_27 = [7.1648    6.4143    5.8306   5.3302,4.8299    4.5464    4.2795].* 1.0e+07 ;
F_C_44 = [7.2648    6.5977    5.8973    5.3469,4.9133    4.5630    4.2795].* 1.0e+07;
F_K_43 = [7.1648    6.2975    5.7638    5.2802, 4.7965    4.4796    4.1961].* 1.0e+07 ;
F_K_23 = [7.0647    6.3642    5.7305    5.2802,4.7965    4.4796    4.1794].* 1.0e+07 ;
figure(99)
plot(x,F_K_43,'*-',x,F_C_44,'+-',x,F_C_27,'s-',x,F_K_23,'^-')
title('Resonant Frequency')
legend('K-43','C-44','C-27','K-23')    
grid on
%% 
% L_C_44=mean(L_C_44_0,L_C_44_1,L_C_44_2);
%Ctotal
C_44_CT = ((2.*pi.*F_C_44).^(-2))./L_C_44_0;

%turn to turn
C_44_Ctt = C_44_CT.*x;

C_27_CT = ((2.*pi.*F_C_27).^(-2))./L_C_27_0;
C_27_Ctt = C_27_CT.*x;

K_43_CT = ((2.*pi.*F_K_43).^(-2))./L_C_44_0;
K_43_Ctt = K_43_CT.*x;

K_23_CT = ((2.*pi.*F_K_23).^(-2))./L_C_27_0;
K_23_Ctt = K_23_CT.*x;
figure(98)
plot(x,C_44_CT,'*-',x,C_27_CT,'+-',x,K_43_CT,'s-',x,K_23_CT,'^-')
title('Total Capacitance at Resonant Frequency')
legend('C_44','C_27','K_43','K_23')
grid on

figure(97)
plot(x,C_44_Ctt,'*-',x,C_27_Ctt,'+-',x,K_43_Ctt,'s-')
title('Turn to Turn Capacitance at Resonant Frequency')
legend('C_44','C_27','K_43')
grid on

figure(96)
plot(x,L_C_44_0,'*-',x,L_C_44_1,x,L_C_44_2,x,L_C_27_0,'+-',x,L_C_27_1,x,L_C_27_2,x,L_K_43_0,'s-',x,L_K_43_1,x,L_K_43_2,x,L_K_23_1,'^-');
title('Inductance at 100kHz')
legend('C-44-1','C-44-2','C-44-3','C-27-1','C-27-2','C-27-3','K-43-1','K-43-2','K-43-3','K-23-1')
%% Taking average of impedance curve and computing capacitance
% L_C_44=mean(L_C_44_0,L_C_44_1,L_C_44_2);
%Ctotal
%C_44_CT = ((2.*pi.*F_C_44).^(-2))./L_C_44_0;
C_44_CT = ((2.*pi.*F_C_44).^(-2))./L_C_44_A;

%turn to turn
C_44_Ctt = C_44_CT.*x;

%C_27_CT = ((2.*pi.*F_C_27).^(-2))./L_C_27_0;
C_27_CT = ((2.*pi.*F_C_27).^(-2))./L_C_27_A;
C_27_Ctt = C_27_CT.*x;

%K_43_CT = ((2.*pi.*F_K_43).^(-2))./L_C_44_0;
K_43_CT = ((2.*pi.*F_K_43).^(-2))./L_K_43_A;
K_43_Ctt = K_43_CT.*x;

%K_23_CT = ((2.*pi.*F_K_23).^(-2))./L_C_27_0;
K_23_CT = ((2.*pi.*F_K_23).^(-2))./L_K_23_A;
K_23_Ctt = K_23_CT.*x;
figure(95)
plot(x,C_44_CT,'*-',x,C_27_CT,'+-',x,K_43_CT,'s-',x,K_23_CT,'^-')
title('Total Capacitance at Resonant Frequency')
legend('C_44','C_27','K_43','K_23')
grid on

figure(94)
plot(x,C_44_Ctt,'*-',x,C_27_Ctt,'+-',x,K_43_Ctt,'s-')
title('Turn to Turn Capacitance at Resonant Frequency')
legend('C_44','C_27','K_43')
grid on

figure(93)
plot(x,L_C_44_0,'*-',x,L_C_44_1,x,L_C_44_2,x,L_C_27_0,'+-',x,L_C_27_1,x,L_C_27_2,x,L_K_43_0,'s-',x,L_K_43_1,x,L_K_43_2,x,L_K_23_1,'^-');
title('Inductance at 100kHz')
legend('C-44-1','C-44-2','C-44-3','C-27-1','C-27-2','C-27-3','K-43-1','K-43-2','K-43-3','K-23-1')