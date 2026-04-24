% Clear the workspace and close all figures
clear all;
close all;

% Set the random seed for reproducibility
rng('default');

% Number of samples
num_samples = 1000;

% Generate random samples from Gaussian distribution
mu_gaussian = 0; % Mean
sigma_gaussian = 1; % Standard deviation
%samples_gaussian = mu_gaussian + sigma_gaussian * randn(num_samples, 1);

% Generate random samples from uniform distribution
lower_bound_uniform = -2;
upper_bound_uniform = 2;
samples_uniform = lower_bound_uniform + (upper_bound_uniform - lower_bound_uniform) * rand(num_samples, 1);

% Generate random samples from exponential distribution
lambda_exponential = 1; % Rate parameter
samples_exponential = -log(1 - rand(num_samples, 1)) / lambda_exponential;

% Probability density functions (PDFs) and cumulative distribution functions (CDFs)
x = linspace(-5, 5, 1000);

pdf_gaussian = (1 / (sigma_gaussian * sqrt(2*pi))) * exp(-(x - mu_gaussian).^2 / (2 * sigma_gaussian^2));
cdf_gaussian = 0.5 * (1 + erf((x - mu_gaussian) / (sigma_gaussian * sqrt(2))));

% pdf_uniform = (x >= lower_bound_uniform & x <= upper_bound_uniform) / (upper_bound_uniform - lower_bound_uniform);
% cdf_uniform = (x >= lower_bound_uniform) .* (x <= upper_bound_uniform);

pdf_uniform = 1 / (upper_bound_uniform - lower_bound_uniform);
cdf_uniform = (x-lower_bound_uniform) / (upper_bound_uniform - lower_bound_uniform);


pdf_exponential = lambda_exponential * exp(-lambda_exponential * x);
cdf_exponential = 1 - exp(-lambda_exponential * x);

% Plotting PDFs
figure;
subplot(3, 1, 1);
plot(x, pdf_gaussian, 'b', 'LineWidth', 2);
title('Gaussian Distribution (PDF)');
xlabel('x');
ylabel('Probability Density');

subplot(3, 1, 2);
plot(x, pdf_uniform, 'r', 'LineWidth', 2);
title('Uniform Distribution (PDF)');
xlabel('x');
ylabel('Probability Density');

subplot(3, 1, 3);
plot(x, pdf_exponential, 'g', 'LineWidth', 2);
title('Exponential Distribution (PDF)');
xlabel('x');
ylabel('Probability Density');

% Plotting CDFs
figure;
subplot(3, 1, 1);
plot(x, cdf_gaussian, 'b', 'LineWidth', 2);
title('Gaussian Distribution (CDF)');
xlabel('x');
ylabel('Cumulative Probability');

subplot(3, 1, 2);
plot(x, cdf_uniform, 'r', 'LineWidth', 2);
title('Uniform Distribution (CDF)');
xlabel('x');
ylabel('Cumulative Probability');

subplot(3, 1, 3);
plot(x, cdf_exponential, 'g', 'LineWidth', 2);
title('Exponential Distribution (CDF)');
xlabel('x');
ylabel('Cumulative Probability');
