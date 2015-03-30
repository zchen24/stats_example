%% Chapter 09: Beyond the Null Hypothesis
% 
%  * Reference: Statistics Unplugged 3rd Edition
%  * Zihan Chen
%  * 2015-03-29

%% Two-Tailed Test 
clc; clear;

% data 
% d1: urban 
% d2: rural

d1 = [59 77 74 69 53 68 70 71 72 56 62];
d2 = [83 93 91 79 77 54 65 92 68 88 82];

[h, p, ci, stats] = ttest2(d1,d2);

% print answer
disp('Two-Tailed:');
disp(['   h = ', num2str(h)]);
disp(['   t = ', num2str(stats.tstat)]);
disp(['  df = ', num2str(stats.df)]);
disp(['  sd = ', num2str(stats.sd)]);


%% One-Tailed Test
% * H0: mu(d1) >= mu(d2)   urban >= rural 
% * H1: mu(d1) < mu(d2)

[ho, po, cio, statso] = ttest2(d1,d2, 'Tail','left');

% print answer
disp('One-Tailed:');
disp(['   h = ', num2str(ho)]);
disp(['   t = ', num2str(statso.tstat)]);
disp(['  df = ', num2str(statso.df)]);
disp(['  sd = ', num2str(statso.sd)]);

%% Power and Effect
% The book only explains the concept of Power and Effect without detailed
% steps showing how to compute. See Others section for example. 
