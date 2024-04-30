clc;
clear all;
close all;

#Parameters
Fs = 1000;            # sampling frequency
T = 1;                #signal duration in 1 sec
t = 0:1/Fs:T-1/Fs;    #time vectorize

# signal generation (sin signal)
f_signal = 10;
A_signal = 1;
signal = A_signal * sin(2*pi*f_signal*t);

#Noise generation
SNR_db1 = 20;
noise_power1 = var(signal) / (10^(SNR_db1/10));
noise1 = sqrt(noise_power1) * randn(size(t));

SNR_db2 = 0;
noise_power2 = var(signal) / (10^(SNR_db2/10));
noise2 = sqrt(noise_power2) * randn(size(t));

SNR_db3 = -20;
noise_power3 = var(signal) / (10^(SNR_db3/10));
noise3 = sqrt(noise_power3) * randn(size(t));

# Add noise to the signal
noisy_signal1 = signal + noise1;
noisy_signal2 = signal + noise2;
noisy_signal3 = signal + noise3;

subplot(4,1,1);
plot(t,signal,"Linewidth",1);
title('Original Signal');
xlabel('time');
ylabel('signal');

subplot(4,1,2);
plot(t,noisy_signal1,"Linewidth",1);
title('noisy Signal at 20db');
xlabel('time');
ylabel('noise');

subplot(4,1,3);
plot(t,noisy_signal2,"Linewidth",1);
title('noisy Signal at 0db');
xlabel('time');
ylabel('noise');

subplot(4,1,4);
plot(t,noisy_signal3,"Linewidth",1);
title('noisy Signal at -20db');
xlabel('time');
ylabel('noise');



