#matlab implimantation of power delay profile(pdp).
clear all;
close all;
clc;

path_delay = [ 0, 1*10^-6, 3*10^-6, 5*10^-6 ]
path_gain = [ -20, -10, 0, -10 ]
linear_gain = 10.^(path_gain/10);

sum_lgain = (linear_gain.*path_delay);
mean = sum(sum_lgain)/sum(linear_gain)

rms_gain = sum(linear_gain.*(path_delay-mean).^2)/sum(linear_gain);
rms=sqrt(rms_gain)

stem(path_delay,path_gain*-1);
xlabel("path_Delay");
ylabel("path_Gain");



