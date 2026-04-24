clc;
clear all;
close all;



% Define the parameters of the Rayleigh distribution

sigma = 1.5;  % Scale

% Generate random samples from the Gaussian distribution
sample_size = 1000; % You can change this value to generate more or fewer samples
%random_samples = mu + sigma * randn(sample_size, 1);

% Compute the PDF and CDF
%x = linspace(mu - 4*sigma, mu + 4*sigma, 1000); % Range of values for PDF and CDF
x = linspace(0, 5, 1000);
pdf_values = (x ./ (sigma^2)).*exp(-(x).^2 / (2*sigma^2));
%pdf_values = (x ./ sigma^2) .* exp(-x.^2 / (2 * sigma^2));
cdf_values =  1 - exp(-x.^2/(2*(sigma^2)));

% Plot the PDF
figure;
plot(x, pdf_values, 'b-', 'LineWidth', 2);
title('Probability Density Function (PDF) of Rayleigh Distribution');
xlabel('Random Variable (X)');
ylabel('PDF f(x)');
grid on;

% Plot the CDF
figure;
plot(x, cdf_values, 'r-', 'LineWidth', 2);
title('Cumulative Distribution Function (CDF) of Rayleigh Distribution');
xlabel('Random Variable (X)');
ylabel('CDF F(x)');
grid on;

