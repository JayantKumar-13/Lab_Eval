clc;
clear all;
close all;

d = 100; % meters
d0 = 1; % meter
PL_d0 = 60; % dB
n = 2;

path_loss = log_distance_path_loss(d, d0, PL_d0, n);
disp(['Path Loss: ' num2str(path_loss) ' dB']);
