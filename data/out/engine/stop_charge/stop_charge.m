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
plot(Stop_Charg_1_f63+(15*0.04),'o','Linewidth',0.5);
hold on;
plot(Stop_Charg_2_eef+(15*0.04),'o','Linewidth',0.5);
hold on;
plot(Stop_1_a54,'o','Linewidth',4);
hold on;
plot(Stop_2_be8,'o','Linewidth',4);
hold on;
plot(Stop_3_d88,'o','Linewidth',4);
hold on;
plot(Stop_4_d36,'o','Linewidth',4);
hold on;
plot(Stop_5_dc0,'o','Linewidth',4);
hold on;
grid();

drop1 = (12.73 - 12.53)/12.73; %Stop_Charg_1_f63
drop2 = (12.48 - 12.25)/12.48;
drop3 = (13.43 - 13.1)/13.43;
drop4 = (13.57 - 13.11)/13.57;
drop5 = (13.85 - 13.39)/13.85;
drop6 = (13.56 - 13.1)/13.56;
drop7 = (13.71 - 13.37)/13.71;

