clc;
clear all;
close all;

% Parameters
num_paths = 10; % Number of multipath components
max_delay = 100; % Maximum delay (in samples)
delay_spread = 20; % Delay spread (standard deviation of delay)
power_dB = randn(1, num_paths); % Power of each path in dB (random for simplicity)

% Generate delay values
delay = randn(1, num_paths) * delay_spread + max_delay/2;

% Create time axis
t = 0:max_delay;

% Initialize PDP
pdp = zeros(size(t));

% Generate PDP
for i = 1:num_paths
    pdp = pdp + 10^(power_dB(i)/10) * exp(-(t - delay(i)).^2 / (2*delay_spread^2));
end

% Normalize PDP
pdp = pdp / max(pdp);

% Plot PDP
plot(t, pdp);
xlabel('Delay (samples)');
ylabel('Normalized Power');
title('Power Delay Profile');
grid on;
