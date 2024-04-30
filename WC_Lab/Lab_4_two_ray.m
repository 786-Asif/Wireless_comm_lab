# simulation of Two ray(ground) reflection model in matlab.
clear all;
close all;
clc;
d=1:0.1:10^5;
pt=1;
ht=50;
hr=2;
f1=900*10^6;
f2=1800*10^6;
f3=2400*10^6;
glos=1;
gref=1;
R=-1;
dref=sqrt(d.^2 + (ht+hr)^2);
dlos=sqrt(d.^2 + (ht-hr)^2);
phi1=2*pi*(dref-dlos)*3;d=1:0.1:10^5;
phi2=2*pi*(dref-dlos)*6;d=1:0.1:10^5;
phi3=2*pi*(dref-dlos)*8;d=1:0.1:10^5;
pr1=pt*((1/(3*4*pi)).^2)*abs((sqrt(glos)./dlos) + (R*sqrt(gref)./dref).*exp(-j*phi1)).^2;
prdb1 = 10*log10(pr1);
pr2=pt*((1/(6*4*pi)).^2)*abs((sqrt(glos)./dlos) + (R*sqrt(gref)./dref).*exp(-j*phi2)).^2;
prdb2 = 10*log10(pr2);
pr3=pt*((1/(8*4*pi)).^2)*abs((sqrt(glos)./dlos) + (R*sqrt(gref)./dref).*exp(-j*phi3)).^2;
prdb3 = 10*log10(pr3);
subplot(2,1,1)
semilogx(d,pr1);
hold on;
semilogx(d,pr2);
hold on;
semilogx(d,pr3);
xlabel("distance");
ylabel("pr");
legend("f1=900MHZ","f2=1800MHZ","f3=2400MHZ");
subplot(2,1,2)
semilogx(d,prdb1);
hold on;
semilogx(d,prdb2)
hold on;
semilogx(d,prdb3);
xlabel("distance");
ylabel("pr(db)");
legend("f1=900MHZ","f2=1800MHZ","f3=2400MHZ");


