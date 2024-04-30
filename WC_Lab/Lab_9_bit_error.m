#implementation of analytical BER over AWGN and raylegh channel in matlab.
clear all;
close all;
clc;

snr = [-4:2:12];
snrLin = 10.^(snr/10);

# FOR awgn meand wired.
ber1 = qfunc(sqrt(snrLin));

# for raylegh means wireless;
ber2 = 0.5*(1-sqrt(snrLin./(2+snrLin)));

#plot(snr,ber1);
semilogy(snr,ber1);
hold on;

#plot(snr,ber2);
semilogy(snr,ber2);

xlabel("SNR");
ylabel("SEMILOG");
title("AWGN AND RAYLEGH");
legend('AWGN','RAYLEGH');


