load('Start.mat')
load('Start_1_d2b.mat');
load('Start_2_f3a.mat');
load('Start_3_9d3.mat');
load('Start_4_481.mat');
load('Start_5_10b.mat');
figure(1);
plot(Start,'Linewidth',4);
grid();
title('Voltage','FontSize',24');
set(gca,'FontSize',24);

i = 15;

for j=1:i:length(Start)
    [Vmin,in] = min(Start(j:min([j+i,length(Start)])));
    slop(j) = (Start(in+i) - Start(in));%/(i*100e-3);
    if(slop(j)>=1.5)
        [Vmin_a(j) in_a(j)] = [Vmin in]
    end
    j = in;
end


[Vmin1,in1] = min(Start_1_d2b);
[Vmin2,in2] = min(Start_2_f3a);
[Vmin3,in3] = min(Start_3_9d3);
[Vmin4,in4] = min(Start_4_481);
[Vmin5,in5] = min(Start_5_10b);

slop_1 = (Start_1_d2b(in1+i) - Start_1_d2b(in1))%/(i*100e-3);  
slop_2 = (Start_2_f3a(in2+i) - Start_2_f3a(in2))%/(i*100e-3);
slop_3 = (Start_3_9d3(in3+i) - Start_3_9d3(in3))%/(i*100e-3);
slop_4 = (Start_4_481(in4+i) - Start_4_481(in4))%/(i*100e-3);
slop_5 = (Start_5_10b(in5+i) - Start_5_10b(in5))%/(i*100e-3);

plot(Start_1_d2b(in1:in1+i),'Linewidth',0.5);
hold on;
plot(Start_2_f3a(in2:in2+i),'Linewidth',0.5);
hold on;
plot(Start_3_9d3(in3:in3+i),'Linewidth',0.5);
hold on;
plot(Start_4_481(in4:in4+i),'Linewidth',0.5);
hold on;
plot(Start_5_10b(in5:in5+i),'Linewidth',0.5);
hold on;
grid();

figure(2);
set(gca,'FontSize',24);
subplot(5,1,1);
plot(Start_1_d2b,'x','Linewidth',0.5);
grid();
title('Start 1','FontSize',24');
subplot(5,1,2);
plot(Start_2_f3a,'Linewidth',4);
grid();
title('Start 2','FontSize',24');
subplot(5,1,3);
plot(Start_3_9d3,'Linewidth',4);
grid();
title('Start 3','FontSize',24');
subplot(5,1,4);
plot(Start_4_481,'Linewidth',4);
grid();
title('Start 4','FontSize',24');
subplot(5,1,5);
plot(Start_5_10b,'Linewidth',4);
grid();
title('Start 5','FontSize',24');

figure(3);
set(gca,'FontSize',24);
plot(Start_1_d2b,'Linewidth',4);
hold on;
plot(Start_2_f3a,'Linewidth',4);
hold on;
plot(Start_3_9d3,'Linewidth',4);
hold on;
plot(Start_4_481,'Linewidth',4);
hold on;
plot(Start_5_10b,'Linewidth',4);
hold on;
grid();

