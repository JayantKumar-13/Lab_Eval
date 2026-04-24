% Define parameters
M = 2; % Number of rows
N = 2; % Number of columns

% Define covariance matrix R_T
R_T = [1, 0.7; 0.7, 1];

% Generate complex normal random variables
g_1 = mvnrnd([0, 0], R_T).'; % Transpose to make it a column vector
g_2 = mvnrnd([0, 0], R_T).'; % Transpose to make it a column vector

% Construct G matrix
G = [g_1, g_2];

% Display G matrix
disp('G Matrix:');
disp(G);
