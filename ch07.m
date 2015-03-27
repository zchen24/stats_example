%% Chapter 07: Hypothesis Testing with a Single Sample Mean
% 
%  * Reference: Statistics Unplugged 3rd Edition
%  * Zihan Chen
%  * 2015-03-27


%% Single Sample Test with $\sigma$ Known
% H0: mu = 193.80

clc; clear; 

% constants
mu = 193.80;    % population mean
sigma = 31.55;  % pupulation std
m = 202.94;     % sample mean
n = 50;         % number of smaples

% standard error of the mean
stdm = sigma/sqrt(n);

% Z value 
z = (m - mu)/stdm;

% critical value 
sl = 0.05;   % significance level 
cv = norminv(1-sl/2);

% test 
h = (abs(z) > cv);

% print answer
disp(['h = ', num2str(h)]);
disp('Given h = 1, we reject the Null hypothesis');



%% Single Sample Test with $\sigma$ Unknown
% Question 6

clc; clear;

% constants
mu = 12.56;   % population mean
m = 11.21;    % sample mean
n = 30;       % sample size
s = 3.88;     % sample std 

% standard error of the mean
stdm = s/sqrt(n);

% t value 
t = (m - mu)/stdm;

% critical value (t test)
sl = 0.05; 
cv = tinv(1-sl/2, n-1);

% test 
h = (abs(t) > cv);

% print answer
% print answer
disp(['h = ', num2str(h)]);
disp('Given h = 0, we fail to reject the Null hypothesis');













