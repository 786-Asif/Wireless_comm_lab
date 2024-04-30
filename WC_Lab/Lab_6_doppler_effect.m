#simulation of doppler effect in the matlab.
#freq=2.4ghz and velocity=30km/h and distance=100m
# find lembda and plot graph b/w doppler shift and angle

clear all;
close all;
clc;

freq = (2.4)*10^9;
freq1 = (.9)*10^9;
freq2 = (1.8)*10^9;

velocity = 30 ;

distance  = 100;

lembda = (3*10^8)/(freq);
lembda1 = (3*10^8)/(freq1);
lembda2 = (3*10^8)/(freq2);

theta = [0:10:180];

fd = (velocity/lembda)*cosd(theta);
fd1 = (velocity/lembda1)*cosd(theta);
fd2 = (velocity/lembda2)*cosd(theta);

subplot(2,2,1);
plot(theta,fd);
hold on;
plot(theta,fd1);
plot(theta,fd2);
legend('2.4ghz','.9ghz','1.8ghz');
xlabel("Theta");
ylabel("doppler shift");

subplot(2,2,2);
plot(theta,fd+freq);
subplot(2,2,3);
plot(theta,fd1+freq1);
subplot(2,2,4);
plot(theta,fd2+freq2);
legend('2.4ghz','.9ghz','1.8ghz');
xlabel("Theta");
ylabel("doppler shift");





