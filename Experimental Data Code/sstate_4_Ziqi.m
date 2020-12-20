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
L_C_44 = [C_I_N18_44_00(1),C_I_N18_44_01(1),C_I_N18_44_02(1)]./(2*pi);
%They look similar so take the average
L_C_44 = mean(L_C_44)*1e-6;
L_C_44

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
[k,b] = solve(863.875==k*50913200+b, --452.856==k*51078500+b,k,b);
F_C_44 = eval(abs(b/k));
F_C_44
%% N18 Copper 0.27mm