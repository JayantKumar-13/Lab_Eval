clc;
clear all;
close all;

% Parameters
frequency = 2.4e9; % Frequency of the transmitted signal (Hz)
speed_of_light = 3e8; % Speed of light (m/s)
velocity_receiver = 30; % Velocity of the receiver (m/s)
distance = 1000; % Distance between transmitter and receiver (m)
wavelength = speed_of_light / frequency; % Wavelength of the signal (m)

% Define time vector
t = linspace(0, 10, 100); % Time varying from 0 to 10 seconds

% Initialize arrays to store Doppler shift for different values of theta
doppler_shift_increasing = zeros(size(t));
doppler_shift_decreasing = zeros(size(t));
doppler_shift_constant = zeros(size(t));

% Calculate Doppler shift for each time step
for i = 1:length(t)
    % Calculate theta for each time step
    theta_increasing = pi * t(i) / 10; % Increasing theta
    theta_decreasing = pi - pi * t(i) / 10; % Decreasing theta
    theta_constant = pi / 2; % Constant theta
    
    % Calculate Doppler shift for each theta
    doppler_shift_increasing(i) = (velocity_receiver / wavelength) * cos(theta_increasing);
    doppler_shift_decreasing(i) = (velocity_receiver / wavelength) * cos(theta_decreasing);
    doppler_shift_constant(i) = (velocity_receiver / wavelength) * cos(theta_constant);
end

% Plot Doppler shift for different values of theta
figure;
plot(t, doppler_shift_increasing, 'b', 'LineWidth', 2);
hold on;
plot(t, doppler_shift_decreasing, 'r', 'LineWidth', 2);
plot(t, doppler_shift_constant, 'g', 'LineWidth', 2);
xlabel('Time (s)');
ylabel('Doppler shift (Hz)');
title('Doppler Shift for Different Values of Theta');
legend('Increasing Theta', 'Decreasing Theta', 'Constant Theta');
grid on;
