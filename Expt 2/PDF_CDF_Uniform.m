clc;
clear all;
close all;

% Define the parameters of the Uniform distribution
a = 5;    % Lower bound
b = 10;   % Upper bound

% Generate random samples from the Uniform distribution
sample_size = 1000; 
%random_samples = a + (b - a) * rand(sample_size, 1);

% Compute the PDF and CDF
x = linspace(a, b, 100); % Range of values for PDF and CDF
pdf_values = 1 / (b - a) * ones(size(x)); % Uniform distribution has constant PDF within the range
cdf_values = (x - a) / (b - a);
cdf_values(cdf_values > 1) = 1; % Adjust values greater than 1 to 1 (upper bound)

% Plot the PDF
figure;
plot(x, pdf_values, 'b-', 'LineWidth', 2);
title('Probability Density Function (PDF) of Uniform Distribution');
xlabel('Random Variable (X)');
ylabel('PDF f(x)');
grid on;

% Plot the CDF
figure;
plot(x, cdf_values, 'r-', 'LineWidth', 2);
title('Cumulative Distribution Function (CDF) of Uniform Distribution');
xlabel('Random Variable (X)');
ylabel('CDF F(x)');
grid on;


