clc;
clear all;
close all;


EbN0dB = -4:2:12; % Eb/N0 range in dB
EbN0 = 10.^(EbN0dB/10); % Eb/N0 in linear scale
SNR = EbN0; % SNR is same as Eb/N0 for BPSK modulation
BER = 0.5*(1 - sqrt(SNR./(2+SNR))); % Theoretical BER for BPSK modulation using provided expression

% Plot
semilogy(EbN0dB, BER, 'b-o');
grid on;
xlabel('Eb/N0 (dB)');
ylabel('Bit Error Rate (BER)');
title('Bit Error Rate (BER) for BPSK Modulation');
