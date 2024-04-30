clc;
clear all;
close all;

x=linspace(0,10,1000);
a=2;
b=4;
pdf_values=zeros(size(x));
cdf_values=zeros(size(x));

for i=1:length(x)
  if x(i)>=a && x(i)<=b
    pdf_values(i) = 1/(b-a);
    cdf_values(i) = (x(i)-a)/(b-a);
  endif
  if (b<x(i))
    cdf_values(i) = 1;
  endif
end;

#plot pdf
subplot(2,1,1);
plot(x,pdf_values);
title("pdf of uniform Rv")
grid on;
hold on;

#plot cdf
subplot(2,1,2);
plot(x,cdf_values);
title("cdf of uniform Rv");
grid on;
hold on;

# a=5, b=7
a=5;
b=7;
pdf_values=zeros(size(x));
cdf_values=zeros(size(x));

for i=1:length(x)
  if x(i)>=a && x(i)<=b
    pdf_values(i) = 1/(b-a);
    cdf_values(i) = (x(i)-a)/(b-a);
  endif
  if (b<x(i))
    cdf_values(i) = 1;
  endif
end;

#plot pdf
subplot(2,1,1);
plot(x,pdf_values);

#plot cdf
subplot(2,1,2);
plot(x,cdf_values);

# a=8, b=10
a=8;
b=10;
pdf_values=zeros(size(x));
cdf_values=zeros(size(x));

for i=1:length(x)
  if x(i)>=a && x(i)<=b
    pdf_values(i) = 1/(b-a);
    cdf_values(i) = (x(i)-a)/(b-a);
  endif
  if (b<x(i))
    cdf_values(i) = 1;
  endif
end;

#plot pdf
subplot(2,1,1);
plot(x,pdf_values);
legend("2,4","5,7","8,10");

#plot cdf
subplot(2,1,2);
plot(x,cdf_values);
legend("2,4","5,7","8,10");
