%% Chapter 11: The Chi-Square Test
%  Test of Independence 
%
%  * Reference: 
%     * Statistics Unplugged 3rd Edition
%     * http://tinyurl.com/ndnpelv
%  * Zihan Chen
%  * 2015-03-28


%% Chi-Square MANUAL
% Observed Frequencies:
%
% <html>
% <table border=1>
% <tr><td></td><td>Urban</td><td>Suburban</td><td>Rural</td></tr>
% <tr><td>Yes</td><td>8</td><td>17</td><td>7</td></tr>
% <tr><td>No</td><td>6</td><td>8</td><td>15</td></tr>
% <tr><td>Undecided</td><td>19</td><td>7</td><td>11</td></tr>
% </table>
% </html>


clc; clear;

% col: urban suburban rural
% rol: yes no undecided
d = [8 17 7; 6 8 15; 19 7 11];

% compute expected value
sumc = sum(d);
sumr = sum(d,2);
sumall = sum(sum(d)); 
de = sumr * sumc / sumall;

% chi2 value
chi2 = sum(sum((d - de).^2./de));

% dof
sz = size(d);
dof = (sz(1)-1) * (sz(2)-1);

% chi2
sl = 0.05;  % significance level
chi2cv = chi2inv(1-sl, dof);

% test 
h = (chi2>chi2cv);
p = 1 - chi2cdf(chi2, dof);

% print 
disp(['chi2 = ', num2str(chi2)]);
disp(['p = ', num2str(p)]);
disp(['h = ', num2str(h), ', reject null hypothesis']);


%% Chi-Square MATLAB

clc; 

% Construct Raw Data 
y = [repmat('u', sumc(1), 1); repmat('s', sumc(2), 1); repmat('r', sumc(3), 1)];
x = [repmat('y', d(1,1), 1); repmat('n', d(2,1), 1); repmat('u', d(3,1), 1); ...
  repmat('y', d(1,2), 1); repmat('n', d(2,2), 1); repmat('u', d(3,2), 1); ...
  repmat('y', d(1,3), 1); repmat('n', d(2,3), 1); repmat('u', d(3,3), 1);];

% Matlab 
[tbl, chi2m, pm] = crosstab(x,y);

% test 
hm = (pm < sl);

% print 
disp(['chi2 = ', num2str(chi2m)]);
disp(['p = ', num2str(pm)]);
disp(['h = ', num2str(hm), ', reject null hypothesis']);
