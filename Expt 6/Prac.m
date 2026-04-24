clc;
clear all;
close all;
% Parameters
frequency = 2.4e9; % Frequency of the transmitted signal (Hz)
speed_of_light = 3e8; % Speed of light (m/s)
velocity_vehicle = 30; % Velocity of the vehicle (m/s)
distance = 1000; % Distance between transmitter and receiver (m)
wavelength = speed_of_light / frequency; % Wavelength of the signal (m)

% Define range of theta (angle between direction of motion and direction of wave propagation) in radians
theta_range_rad = linspace(0, pi, 100); % Varying theta from 0 to pi radians

% Convert theta from radians to degrees
theta_range_deg = rad2deg(theta_range_rad);

% Initialize array to store Doppler shift
doppler_shift = zeros(size(theta_range_rad));

% Calculate Doppler shift for each theta
for i = 1:length(theta_range_rad)
    % Calculate Doppler shift
    doppler_shift(i) = (velocity_vehicle / wavelength) * cos(theta_range_rad(i));
end

% Convert Doppler shift to MHz
doppler_shift_mhz = doppler_shift * 1e6; % Convert Hz to MHz

% Plot Doppler shift against theta
figure;
plot(theta_range_deg, doppler_shift_mhz, 'b', 'LineWidth', 2);
xlabel('Theta (degrees)');
ylabel('Doppler shift (MHz)');
title('Doppler Shift vs Theta for Moving Vehicle Scenario');
grid on;

