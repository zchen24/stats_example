% Zihan Chen
% 2015-03-26 
% Statistics Unplugged 3rd Edition
% Chapter 05

% Four Fundamental Concepts 
% Just show a couple Application Problem Solutions

% Sample Error 
% Standard Error of the Mean

%% A1 
clc; clear;

mu = 24.12;
sigma = 4;
n = 100;

% a 
m = mu;
% b
mstd = sigma / sqrt(n);


% print answer
disp(['mean = ', num2str(m), '  std err = ', num2str(mstd)]);

%% A3 
clear;

mu = 120; 
sigma = 30; 
n = 100;

% a 
m = mu;
%b 
mstd = sigma/sqrt(n);

% print answer
disp(['mean = ', num2str(m), '  std err = ', num2str(mstd)]);

