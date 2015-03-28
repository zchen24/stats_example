%% Chapter 07: Hypothesis Testing with Two Sample
% 
%  * Reference: Statistics Unplugged 3rd Edition
%  * Zihan Chen
%  * 2015-03-27


%% Related Samples MATLAB
% Data: Table 8-2 P181

clc; clear; close all;

% d1: test 1 data
% d2: test 2 data
% dd: difference 
d1 = [50 77 67 94 64 77 85 52 81 91 52 61 83 66 71];
d2 = [55 79 82 90 64 83 80 55 79 91 61 77 83 70 75];

% matlab function
[h, p, ci, stats] = ttest(d1, d2);

% print answer
disp('MATLAB:');
disp(['   h = ', num2str(h)]);
disp(['   t = ', num2str(stats.tstat)]);
disp(['  df = ', num2str(stats.df)]);
disp(['  sd = ', num2str(stats.sd)]);


%% Related Samples MANUAL
% Data: Table 8-2 P181 (Same as above)

% manual
dd = d2 - d1;
ddm = mean(dd);   % mean
ddn = length(dd); % num of samples
dddof = ddn - 1;  % deg of freedom

% variance & std
ddvar = sum((dd - ddm).^2)/(ddn-1);
ddstd = sqrt(ddvar);  

% standard error of mean
ddstdm = sqrt(ddvar)/sqrt(ddn);

% t value (tstat)
ddt = ddm/ddstdm;  

% critical value
sl = 0.05; % significance level
ddcv = tinv(1-sl/2, dddof);

% test 
ddh = (abs(ddt) > ddcv);

disp('MANUAL:');
disp(['   h = ', num2str(ddh)]);
disp(['   t = ', num2str(ddt)]);
disp(['  df = ', num2str(dddof)]);
disp(['  sd = ', num2str(ddstd)]);


%% Independent Samples MATLAB
% Table 8-3 P190

clc; clear;

% data 
% d1: fraternity 
% d2: nonfraternity
d1 = [6 3 2 4 5 6 7 5 4 5 4 8 6 7];
d2 = [0 5 3 4 3 6 3 6 5 4 4 2];

[h, p, ci, stats] = ttest2(d1, d2);

% print answer
disp('MATLAB:');
disp(['   h = ', num2str(h)]);
disp(['   t = ', num2str(stats.tstat)]);
disp(['  df = ', num2str(stats.df)]);
disp(['  sd = ', num2str(stats.sd)]);


%% Independent Samples MANUAL
% Table 8-3 P190 (Same as above)

d1m = mean(d1);    % d1 mean
d1n = length(d1);  % d1 num of samples
d1var = var(d1);   % d1 variance
d1dof = d1n - 1;   % d1 dof 

d2m = mean(d2);    % d2 mean
d2n = length(d2);  % d2 num of samples
d2var = var(d2);   % d2 variance 
d2dof = d2n - 1;   % d2 dof

dof = d1n + d2n - 2;  % totoal dof

% standard error of mean 
dstd = sqrt((d1var*d1dof+d2var*d2dof)/dof);
dstdm = dstd * sqrt(1/d1n+1/d2n);

% t value
dt = (d1m - d2m) / dstdm;

% critial value
sl = 0.05;
dcv = tinv(1-sl/2, dof);

% test 
dh = (abs(dt) > dcv);

% print answer
disp('MANUAL:');
disp(['   h = ', num2str(dh)]);
disp(['   t = ', num2str(dt)]);
disp(['  df = ', num2str(dof)]);
disp(['  sd = ', num2str(dstd)]);




