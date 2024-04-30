# EXPERIMENT: 2.
# AIM: To PLOT PDF AND CDF OF GAUSSIAN, RAYLEIGH AND UNIFORM RVs.
#(these are used in the RF wireless comm.)

clc;
clear all;
close all;

# define the parameters of th  egaussian distribution
mu1=0;  #mean
mu2=0.5;  #mean
mu3=1;  #mean
sigma1 = 1.5;   # std. deviation
sigma2 = 2;   # std. deviation
sigma3 = 2.5;   # std. deviation

# generate the random sample from the gaussian distribution
sample_size = 1000;
random_sample1 = mu1 + sigma1 * randn(sample_size,1);
random_sample2 = mu2 + sigma2 * randn(sample_size,1);
random_sample3 = mu3 + sigma3 * randn(sample_size,1);

# compute the pdf and cdf
# x = linespace(mu - 4*sigma, mu _ 4*sigma,100); # range of values of pdf and cdf
x = linspace(-5,5,100);
pdf_values1 = (1/(sigma1 * sqrt(2*pi))) * exp(-(x - mu1).^2 / (2*sigma1^2));
cdf_values1 = 0.5 * (1+erf((x-mu1)/(sigma1 * sqrt(2))));

pdf_values2 = (1/(sigma2 * sqrt(2*pi))) * exp(-(x - mu2).^2 / (2*sigma2^2));
cdf_values2 = 0.5 * (1+erf((x-mu2)/(sigma2 * sqrt(2))));

pdf_values3 = (1/(sigma3 * sqrt(2*pi))) * exp(-(x - mu3).^2 / (2*sigma3^2));
cdf_values3 = 0.5 * (1+erf((x-mu3)/(sigma3 * sqrt(2))));

#plot pdf
figure ;
subplot(2,1,1)
plot(x,pdf_values1);
title("probability density function of the gaussian dist");
xlabel("random variable");
ylabel("PDF f(x)");
grid on;
hold on;
plot(x,pdf_values2);
plot(x,pdf_values3);
legend("0,1.5",".5,2","1,2.5");

#plot the CDF
subplot(2,1,2)
plot(x,cdf_values1);
title("cdf function of the gaussian dist");
xlabel("random variable");
ylabel("cdf F(x)");
grid on;
hold on;
plot(x,cdf_values2);
plot(x,cdf_values3);
legend("0,1.5",".5,2","1,2.5");

