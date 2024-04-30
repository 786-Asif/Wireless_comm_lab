clc;
clear all;
close all;

# define the parameters of the relayeigh distribution
sigma1  = 1.5; # scale
sigma2  = 2.5; # scale
sigma3  = 3.5; # scale

# generate the random sample from the gaussian distribution
sample_size = 1000;
# random sample  = mu + sigma*randn(sample_size ,1);

# compute the pdf and cdf
# x = linspace(mu - 4*sigma,mu+4*sigma  ,1000);

x = linspace(0,5,1000);
pdf_values1 = (x ./ (sigma1^2)).*exp(-(x).^2/(2*sigma1^2));
cdf_values1 = 1-exp(-x.^2/2*(sigma1^2));

pdf_values2 = (x ./ (sigma2^2)).*exp(-(x).^2/(2*sigma2^2));
cdf_values2 = 1-exp(-x.^2/2*(sigma2^2));

pdf_values3 = (x ./ (sigma3^2)).*exp(-(x).^2/(2*sigma3^2));
cdf_values3 = 1-exp(-x.^2/2*(sigma3^2));

#plot pdf
figure ;
subplot(2,1,1)
plot(x,pdf_values1,"LineWidth",1.5);
title("pdf of the Rayleigh dist");
xlabel("random variable");
ylabel("PDF f(x)");
grid on;
hold on;
plot(x,pdf_values2,"LineWidth",1.5);
plot(x,pdf_values3,"LineWidth",1.5);
legend("1.5\mu","2.5\mu","3.5\mu");

#plot the CDF
subplot(2,1,2)
plot(x,cdf_values1,"LineWidth",1.5);
title("cdf function of the Rayleigh dist");
xlabel("random variable");
ylabel("CDF F(x)");
grid on;
hold on;
plot(x,cdf_values2,"LineWidth",1.5);
plot(x,cdf_values3,"LineWidth",1.5);

