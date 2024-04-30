# log distance and log normal.
# plot path loss vs distance.
clear all;
close all;
clc;

# taking free space.=> n=2.
# log distance.
d =[0:100:1000];
#d=100;
d0 = 1;
path_loss1 = 60+10*2*log10(d/d0);
subplot(2,1,1);
plot(d,path_loss1);
title("log distance");
xlabel("distance");
ylabel("gain");

#log normal.
%x = normrnd(0,4);
sigma = 4;
x = sigma*randn();
path_loss2 = path_loss1+x;
subplot(2,1,2);
plot(d,path_loss2);
title("log normal");
xlabel("distance");
ylabel("gain");


