
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
[k,b] = solve(17.8402==k*61474300+b, -26.2607==k*61641100+b,k,b);
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
[k,b] = solve(53.5152==k*61807800+b, -35.5454==k*61974600+b,k,b);
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
