clc;
clear all;
close all;

clear all 
close all 
v=-5:0.01:5; 
for n=1:length(v)     
   if v(n) <= -1         
      G(n)=0;     
   elseif v(n) <= 0         
      G(n)=20*log10(0.5-0.62*v(n));     
   elseif v(n) <= 1         
      G(n)=20*log10(0.5*exp(-0.95*v(n)));     
   elseif v(n) <= 2.4         
      G(n)=20*log10(0.4-sqrt(0.1184-(0.38-0.1*v(n))^2));     
   else         
      G(n)=20*log10(0.225/v(n));     
   end      
end 
plot(v, G, 'b') 
xlabel('Fresnel Diffraction Parameter') 
ylabel('Diffraction Loss (dB)') 


%%
clc;
clear all;
close all;


mue=-5:5 % value of nu
inde=0 
for vmuer=-5:5
    syms vumer
inde=inde+1;
%intFe=quad('exp((-j*pi*x.^2)/2)',vmuer,20); %Integration of the function used in integral part of Complex Fresnel Integral
fun = @x exp((-j*pi*x.^2)/2);
%intFe=integral(@x,'exp((-j*pi*x.^2)/2)',vmuer,20);
fe=abs((0.5+0.5*j)*intFe ) %Complex Fresnel Integral.
Gdb_e(inde)=20*log10(fe) % diffraction Gain in dB
end



i=0
LL=-5; %lower limit
UL=5; % upper limit
v=LL:UL; 
for vn=LL:UL
i=i+1

if(vn < -1.0)
	Gdb(i)=0 
elseif( vn <= 0)
	Gdb(i)=20*log10(0.5-0.62*vn)
elseif(vn <= 1)
	Gdb(i)=20*log10(0.5*exp(-0.95*vn))
elseif(vn <= 2.4)
	Gdb(i)=20*log10(0.4-sqrt(0.1184-(0.38-0.1*vn).^2))
else
	Gdb(i)=20*log10(0.225/vn)
end
end

plot(v,Gdb,mue,Gdb_e)

xlabel('x (Freshnel-Diferential Parameter V)'); 
ylabel('y (Knife-Edge Differential Gain Gd[dB])'); 
title('Integrated Diffraction Gain Plot '); 

gtext('Plot without approximation') 
gtext('Plot with approximation') 
grid on
