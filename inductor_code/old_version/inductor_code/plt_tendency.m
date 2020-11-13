load('Z_0mA.mat');
R4 = x(1);  C1 = x(2);  L1 = x(3);  R1 = x(4);
x = [mean(R4) mean(C1) mean(L1) mean(R1)];
% v = [var(R4) var(C1) var(L1) var(R1)]
RR4(1) = x(1);
CC1(1) = x(2);
LL1(1) = x(3);
RR1(1) = x(4);

load('Z_50mA.mat');
R4 = x(1);  C1 = x(2);  L1 = x(3);  R1 = x(4);
x = [mean(R4) mean(C1) mean(L1) mean(R1)];
% v = [var(R4) var(C1) var(L1) var(R1)]
RR4(2) = x(1);
CC1(2) = x(2);
LL1(2) = x(3);
RR1(2) = x(4);

load('Z_100mA.mat');
R4 = x(1);  C1 = x(2);  L1 = x(3);  R1 = x(4);
x = [mean(R4) mean(C1) mean(L1) mean(R1)];
% v = [var(R4) var(C1) var(L1) var(R1)]
RR4(3) = x(1);
CC1(3) = x(2);
LL1(3) = x(3);
RR1(3) = x(4);

load('Z_150mA.mat');
R4 = x(1);  C1 = x(2);  L1 = x(3);  R1 = x(4);
x = [mean(R4) mean(C1) mean(L1) mean(R1)];
% v = [var(R4) var(C1) var(L1) var(R1)]
RR4(4) = x(1);
CC1(4) = x(2);
LL1(4) = x(3);
RR1(4) = x(4);

load('Z_200mA.mat');
R4 = x(1);  C1 = x(2);  L1 = x(3);  R1 = x(4);
x = [mean(R4) mean(C1) mean(L1) mean(R1)];
% v = [var(R4) var(C1) var(L1) var(R1)]
RR4(5) = x(1);
CC1(5) = x(2);
LL1(5) = x(3);
RR1(5) = x(4);

load('Z_250mA.mat');
R4 = x(1);  C1 = x(2);  L1 = x(3);  R1 = x(4);
x = [mean(R4) mean(C1) mean(L1) mean(R1)];
% v = [var(R4) var(C1) var(L1) var(R1)]
RR4(6) = x(1);
CC1(6) = x(2);
LL1(6) = x(3);
RR1(6) = x(4);

load('Z_300mA.mat');
R4 = x(1);  C1 = x(2);  L1 = x(3);  R1 = x(4);
x = [mean(R4) mean(C1) mean(L1) mean(R1)];
% v = [var(R4) var(C1) var(L1) var(R1)]
RR4(7) = x(1);
CC1(7) = x(2);
LL1(7) = x(3);
RR1(7) = x(4);

n = [0 50 100 150 200 250 300];

figure
plot(n,RR4,'-o')
title('R4')
figure
plot(n,CC1,'-o')
title('C1')
figure
plot(n,LL1,'-o')
title('L1')
figure
plot(n,RR1,'-o')
title('R1')