%% Chapter 04: The Normal Curve
% Selected solutions for Chapter 04 The Normal Curve
% 
%  * Reference: Statistics Unplugged 3rd Edition
%  * Zihan Chen
%  * 2015-03-26 


%% Question 01: Area between mean and 1.63
clc; clear; 

c = normcdf([0, 1.63]);
area = c(2) - c(1);
disp(['A1 area = ', num2str(area)]);

%% Question 08: Area above 1.53
clear;

c153 = normcdf(1.53);
area = 1 - c153;
disp(['A8 area = ', num2str(area)]);


%% Question 12: Z values to the middle 60%
clear;

cup = 0.5 + 0.6/2;
clo = 0.5 - 0.6/2;
z = norminv([clo, cup]);
disp(['A8 Z = ', num2str(z(1)), '  ', num2str(z(2))]);
