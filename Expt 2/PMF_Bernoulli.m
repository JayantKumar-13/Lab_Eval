clc;
clear all;
close all;



% Define the parameter of Bernoulli distribution

p = 0.3;  % Probability of success

% different values of 'x'
x = [0,1];

% Compute the PMF
PMF = [1-p,p];


% Plot the PMF
stem(x, PMF, 'LineWidth', 2);
title('Probability Mass Function of Bernoulli Distribution');
xlabel('x');
ylabel('Probability');
xticks([0, 1]);
xticklabels({'0', '1'});
ylim([0, 1]);
grid on;

% Plot the CDF
figure;
plot(x, cdf_values, 'r-', 'LineWidth', 2);
title('Cumulative Distribution Function (CDF) of Rayleigh Distribution');
xlabel('Random Variable (X)');
ylabel('CDF F(x)');
grid on;


