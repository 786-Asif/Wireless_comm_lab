#Simulation of knife edge diffraction model using matlab
clear all;
close all;
clc;

nue=-5:5
inde=0;
FEfun=@(x) exp((-j*pi*(x.^2))/2);

for vnue=-5:5
   inde=inde+1;
   intFe=integral(FEfun,vnue,20)
   fe=abs((0.5+0.55*j)*intFe)
   Gdb_e(inde)=20*log10(fe)
 endfor

 plot(nue,Gdb_e);

 hold on;

for i=1:length(nue)
 if nue(i) <= -1
 GdB(i)=0;
 elseif nue(i) <= 0
 GdB(i)=20*log10(0.5-0.62*nue(i));
 elseif nue(i) <= 1
 GdB(i)=20*log10(0.5*exp(-0.95*nue(i)));
 elseif nue(i) <= 2.4
 GdB(i)=20*log10(0.4-sqrt(0.1184-(0.38-
0.1*nue(i))^2));
 else
 GdB(i)=20*log10(0.225/nue(i));
 end
end


 plot(nue,GdB)
 legend("Exact","Approx")

 figure;

 error=abs((Gdb_e-GdB));

 plot(nue,error);
