clear
x = [225000; 350000; 475000; 600000; 725000; 850000; 975000];
y = [5.44; 10; 13.2; 16.1; 17.8; 20.1; 24.1];
format long
k = x\y
y_pred = k * x;

x_goal = 100000;
y_goal = k * x_goal

scatter(x, y)
hold on
plot(x, y_pred)
plot(x_goal, y_goal, 'ro')
grid on
