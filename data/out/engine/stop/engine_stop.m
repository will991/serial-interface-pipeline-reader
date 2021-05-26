load('Stop.mat')
load('Stop_1_a54.mat');
load('Stop_2_be8.mat');
load('Stop_3_d88.mat');
load('Stop_4_d36.mat');
load('Stop_5_dc0.mat');

figure(1);
plot(Stop,'Linewidth',4);
grid();
title('Voltage','FontSize',24');
set(gca,'FontSize',24);

figure(2);
set(gca,'FontSize',24);
subplot(5,1,1);
plot(Stop_1_a54,'Linewidth',4);
grid();
title('Stop 1','FontSize',24');
subplot(5,1,2);
plot(Stop_2_be8,'Linewidth',4);
grid();
title('Stop 2','FontSize',24');
subplot(5,1,3);
plot(Stop_3_d88,'Linewidth',4);
grid();
title('Stop 3','FontSize',24');
subplot(5,1,4);
plot(Stop_4_d36,'Linewidth',4);
grid();
title('Stop 4','FontSize',24');
subplot(5,1,5);
plot(Stop_5_dc0,'Linewidth',4);
grid();
title('Stop 5','FontSize',24');

figure(3);
set(gca,'FontSize',24);
plot(Stop_1_a54,'Linewidth',4);
hold on;
plot(Stop_2_be8,'Linewidth',4);
hold on;
plot(Stop_3_d88,'Linewidth',4);
hold on;
plot(Stop_4_d36,'Linewidth',4);
hold on;
plot(Stop_5_dc0,'Linewidth',4);
hold on;
grid();
