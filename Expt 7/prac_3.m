
% MATLAB code to calculate delay spread, rms delay spread and mean delay
clc;
clear all;
close all;
% 
path_delays = [0, 3, 5, 7]; % Path delays in micro seconds
path_gains = [0.9, 0.7, 0.5, 0.3]; % Path gains



% Delay Spread Calculation
%t_delay = sum(path_delays.*path_gains)/sum(path_gains);

t_delay = max(path_delays)-min(path_delays);

% Mean Delay Calculation
mean_delay = sum(path_delays.*path_gains)/sum(path_gains);

% RMS Delay Spread Calculation
rms_delay_spread = sqrt(sum(((path_delays-mean_delay).^2).*path_gains)/sum(path_gains));

% Display results
disp(['Delay Spread: ' num2str(t_delay) ' seconds']);
disp(['Mean Delay: ' num2str(mean_delay) ' seconds']);
disp(['RMS Delay Spread: ' num2str(rms_delay_spread) ' seconds']);
