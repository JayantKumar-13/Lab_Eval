clc;
clear all;
close all;

d = 100; % meters
d0 = 1; % meter
PL_d0 = 60; % dB
n = 2;
sigma = 4; % dB

path_loss = log_normal_shadowing_path_loss(d, d0, PL_d0, n, sigma);
disp(['Path Loss: ' num2str(path_loss) ' dB']);

% Plot
% Define range of distances
d_range = linspace(1, 1000, 100); % meters
% Plot path loss with log-normal shadowing
plot_path_loss_with_shadowing(d_range, d0, PL_d0, n, sigma);
