clc;
clear all;
close all;

% Define the parameters of the Gaussian distribution
mu = 0;       % Mean
sigma = 1.5;  % Standard deviation

% Generate random samples from the Gaussian distribution
sample_size = 1000; 
random_samples   = mu + sigma * randn(sample_size, 1);

% Compute the PDF and CDF
%x = linspace(mu - 4*sigma, mu + 4*sigma, 1000); % Range of values for PDF and CDF
x = linspace(-5, 5, 1000);
pdf_values = (1 / (sigma * sqrt(2*pi))) * exp(-(x - mu).^2 / (2*sigma^2));
cdf_values = 0.5 * (1 + erf((x - mu) / (sigma * sqrt(2))));

% Plot the PDF
figure;
plot(x, pdf_values, 'b-', 'LineWidth', 2);
title('Probability Density Function (PDF) of Gaussian Distribution');
xlabel('Random Variable (X)');
ylabel('PDF f(x)');
grid on;

% Plot the CDF
figure;
plot(x, cdf_values, 'r-', 'LineWidth', 2);
title('Cumulative Distribution Function (CDF) of Gaussian Distribution');
xlabel('Random Variable (X)');
ylabel('CDF F(x)');
grid on;


