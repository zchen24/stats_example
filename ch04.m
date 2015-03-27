% Zihan Chen
% 2015-03-26 
% Statistics Unplugged 3rd Edition
% Chapter 04

% Some basic normal distribution 
% Just show a couple Application Problem Solutions


%% A1 
clc; clear; 

c = normcdf([0, 1.63]);
area = c(2) - c(1);
disp(['A1 area = ', num2str(area)]);

%% A8
clear;

c153 = normcdf(1.53);
area = 1 - c153;
disp(['A8 area = ', num2str(area)]);


%% A12
clear;

cup = 0.5 + 0.6/2;
clo = 0.5 - 0.6/2;
z = norminv([clo, cup]);
disp(['A8 Z = ', num2str(z(1)), '  ', num2str(z(2))]);
