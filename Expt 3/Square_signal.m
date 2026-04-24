% Squarewave
clc;
clear all;
close all;

% Parameters
Fs = 1000;          % Sampling frequency (Hz)
T = 1;              % Signal duration in seconds
t = 0:1/Fs:T-1/Fs;  % Time vector
%t1 = 0:1/Fs:T;  % Time vector

% Signal generation (example: sinusoidal signal)
f_signal = 10;      % Frequency of the sinusoidal signal (Hz)
A_signal = 1;       % Amplitude of the sinusoidal signal
signal = A_signal * square(2*pi*f_signal*t);

% Noise generation
SNR_dB = 20;        % Signal-to-noise ratio in decibels
noise_power = var(signal) / (10^(SNR_dB/10));  % Calculate noise power
noise = sqrt(noise_power) * randn(size(t));     % Generate AWGN

% Add noise to the signal
noisy_signal = signal + noise;

% Plot the original signal and the noisy signal
figure;
subplot(2,1,1);
plot(t, signal);
title('Original Signal');

subplot(2,1,2);
plot(t, noisy_signal);
title(['Noisy Signal (SNR = ' num2str(SNR_dB) ' dB)']);
xlabel('Time (seconds)');
