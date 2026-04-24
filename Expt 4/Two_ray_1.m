clc;
clear all;
close all;

f = 900e6;
R = -1;
Pt = 1; % Transmitted power in W
ht = 50; % height of tx antenna (m)
hr = 2; % height of rx antenna (m)
d = 1:0.1:10^5;
L = 1;
Glos =1;
Gref= 1;

% Two ray ground reflection model
d_los = sqrt((ht-hr)^2+d.^2);
d_ref = sqrt((ht+hr)^2+d.^2);
lambda = 3*10^8/f;
phi = 2*pi*(d_ref-d_los)/lambda;
s = lambda/(4*pi)*(sqrt(Glos)./d_los+R*sqrt(Gref)./d_ref.*exp(1i*phi));
Pr = Pt*abs(s).^2;
%Pr_norm = Pr/Pr(1);
%semilogx(d,10*log10(Pr));
%plot(d,10*log10(Pr));

hold on;
ylim([-160 -55]);


