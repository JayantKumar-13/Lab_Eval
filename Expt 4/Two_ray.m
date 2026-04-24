clc;
clear all;
close all;

f = 900e6;
R = -1;
Pt = 1; % Transmitted power in mW
ht = 50; % height of tx antenna (m)
hr = 2; % height of rx antenna (m)
d = 1:0.1:10^5;
L = 1;
Gt =1;
Gr= 1;

% Two ray ground reflection model
d_los = sqrt((ht-hr)^2+d.^2);
d_ref = sqrt((ht+hr)^2+d.^2);

% Received power
Pr = Pt*Gt*Gr*((ht^2*hr^2)./(d.^4));
Pr_norm = Pr/Pr(1);

semilogx(d,10*log10(Pr));

