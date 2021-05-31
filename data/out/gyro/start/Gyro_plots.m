%% Drive Test
load('accX.mat')
load('accY.mat');
load('accZ.mat');
load('magX.mat');
load('magY.mat');
load('magZ.mat');
load('rotX.mat');
load('rotY.mat');
load('rotZ.mat');

figure(1);
set(gca,'FontSize',24);
subplot(3,3,1);
plot(accX,'Linewidth',4);
grid();
title('accX','FontSize',24');
subplot(3,3,4);
plot(accY,'Linewidth',4);
grid();
title('accY','FontSize',24');
subplot(3,3,7);
plot(accZ,'Linewidth',4);
grid();
title('accZ','FontSize',24');
subplot(3,3,2);
plot(magX,'Linewidth',4);
grid();
title('magX','FontSize',24');
subplot(3,3,5);
plot(magY,'Linewidth',4);
grid();
title('magY','FontSize',24');
subplot(3,3,8);
plot(magZ,'Linewidth',4);
grid();
title('magZ','FontSize',24');
subplot(3,3,3);
plot(rotX,'Linewidth',4);
grid();
title('rotX','FontSize',24');
subplot(3,3,6);
plot(rotY,'Linewidth',4);
grid();
title('rotY','FontSize',24');
subplot(3,3,9);
plot(rotZ,'Linewidth',4);
grid();
title('rotZ','FontSize',24');


figure(2);
set(gca,'FontSize',24);
subplot(3,1,1);
plot(accX,'Linewidth',4);
grid();
title('accX','FontSize',24');
subplot(3,1,2);
plot(accY,'Linewidth',4);
grid();
title('accY','FontSize',24');
subplot(3,1,3);
plot(accZ,'Linewidth',4);
grid();
title('accZ','FontSize',24');

figure(3);
set(gca,'FontSize',24);
subplot(3,1,1);
plot(magX,'Linewidth',4);
grid();
title('magX','FontSize',24');
subplot(3,1,2);
plot(magY,'Linewidth',4);
grid();
title('magY','FontSize',24');
subplot(3,1,3);
plot(magZ,'Linewidth',4);
grid();
title('magZ','FontSize',24');

figure(4);
set(gca,'FontSize',24);
subplot(3,1,1);
plot(rotX,'Linewidth',4);
grid();
title('rotX','FontSize',24');
subplot(3,1,2);
plot(rotY,'Linewidth',4);
grid();
title('rotY','FontSize',24');
subplot(3,1,3);
plot(rotZ,'Linewidth',4);
grid();
title('rotZ','FontSize',24');


