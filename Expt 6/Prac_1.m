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

% Initialize arrays to store Doppler shift for each case
doppler_shift_increasing = zeros(size(theta_range_rad));
doppler_shift_decreasing = zeros(size(theta_range_rad));
doppler_shift_90 = zeros(size(theta_range_rad));

% Calculate Doppler shift for each case
for i = 1:length(theta_range_rad)
    % Calculate Doppler shift for increasing theta
    doppler_shift_increasing(i) = (velocity_vehicle / wavelength) * cos(theta_range_rad(i));
    
    % Calculate Doppler shift for decreasing theta
    doppler_shift_decreasing(i) = (velocity_vehicle / wavelength) * cos(pi - theta_range_rad(i));
    
    % Calculate Doppler shift for 90 degree theta
    doppler_shift_90(i) = (velocity_vehicle / wavelength) * cos(pi/2);
end

% Convert Doppler shift to MHz
doppler_shift_increasing_mhz = doppler_shift_increasing * 1e6; % Convert Hz to MHz
doppler_shift_decreasing_mhz = doppler_shift_decreasing * 1e6; % Convert Hz to MHz
doppler_shift_90_mhz = doppler_shift_90 * 1e6; % Convert Hz to MHz

% Plot Doppler shift against theta
figure;
plot(theta_range_deg, doppler_shift_increasing_mhz, 'b', 'LineWidth', 2);
hold on;
plot(theta_range_deg, doppler_shift_decreasing_mhz, 'r', 'LineWidth', 2);
plot(theta_range_deg, doppler_shift_90_mhz, 'g', 'LineWidth', 2);
xlabel('Theta (degrees)');
ylabel('Doppler shift (MHz)');
title('Doppler Shift vs Theta for Moving Vehicle Scenario');
legend('Increasing Theta', 'Decreasing Theta', 'Theta = 90 degrees');
grid on;
