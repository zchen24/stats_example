%% Chapter 05: Four Fundamental Concepts 
% Selected solutions for Chapter 05 Four Fundamental Concepts 
% 
%  * Reference: Statistics Unplugged 3rd Edition
%  * Zihan Chen
%  * 2015-03-26 


%% Standard Error of the Mean Q1
% Question 1

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

%% Standard Error of the Mean Q3
% Question 3

clear;

mu = 120; 
sigma = 30; 
n = 100;

% a 
m = mu;
% b 
mstd = sigma/sqrt(n);

% print answer
disp(['mean = ', num2str(m), '  std err = ', num2str(mstd)]);

