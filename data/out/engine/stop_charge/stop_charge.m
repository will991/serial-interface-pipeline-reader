load('Stop_Charg.mat')
load('Stop_Charg_1_f63.mat');
load('Stop_Charg_2_eef.mat');

figure(1);
plot(Stop_Charg,'Linewidth',4);
grid();
title('Voltage','FontSize',24');
set(gca,'FontSize',24);

figure(2);
set(gca,'FontSize',24);
subplot(2,1,1);
plot(Stop_Charg_1_f63,'Linewidth',4);
grid();
title('Stop 1','FontSize',24');
subplot(2,1,2);
plot(Stop_Charg_2_eef,'Linewidth',4);
grid();
title('Stop 2','FontSize',24');


figure(3);
set(gca,'FontSize',24);
plot(Stop_Charg_1_f63+(15*0.04),'Linewidth',4);
hold on;
plot(Stop_Charg_2_eef+(15*0.04),'Linewidth',4);
hold on;
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
