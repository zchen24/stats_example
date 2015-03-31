%% Others: Two-Sample F Test (One Sided)
%  * Zihan Chen
%  * 2015-03-29

%% F-test MATLAB
% $F = S_1^2/S_2^2$
%

clc; clear; close all;

% load data 
load examgrades;
x = grades(:,1);
y = grades(:,2);

% test 
[h, p, ci, stats] = vartest2(x, y, 'Tail', 'right');

% print answer
disp('F-Test MATLAB:');
disp(['   h = ', num2str(h)]);
disp(['   F = ', num2str(stats.fstat)]);
disp(['   p = ', num2str(p)]);

%% F-test MANUAL

% F value
fm = var(x)/var(y);

% F critical value
sl = 0.05;  % significance level
df1 = length(x)-1;
df2 = length(y)-1;
fcv = finv(1-sl, df1, df2);

% test 
hm = (fm > fcv);

% p 
pm = 1 - fcdf(fm, df1, df2);

% print answer
disp('F-Test MANUAL:');
disp(['   h = ', num2str(hm)]);
disp(['   F = ', num2str(fm)]);
disp(['   p = ', num2str(pm)]);

%% Plot of F Distribution
% * numerator dof = 3
% * denominator dof = 5

ndof = 3; 
ddof = 5;
x = 0:0.01:10;
y = fpdf(x, ndof, ddof);

figure;
plot(x,y);
title('F(3,5) Distribution');
xlabel('F Value');
ylabel('Probability');

