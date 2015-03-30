%% Chapter 12: Correlation and Regression
% 
%  * Reference: 
%    * Statistics Unplugged 3rd Edition
%    * Matlab: http://tinyurl.com/l8htqna
%  * Zihan Chen
%  * 2015-03-28


%% Correlation Analysis MATLAB
% NOTE: a,b values are different from the book, because the book 
% is using 3 digits decimal.

clc; clear;

x = [1378 956 1222 830 991 1300 1521 899 1254 1149];
y = [3.55 2.65 3.54 2.24 3.00 3.77 4.00 2.62 3.07 2.94];

% correlation coefficient 
rmat = corrcoef(x,y);
r_xy = rmat(1,2);


% fit 
ft = polyfit(x,y,1);
b = ft(1); 
a = ft(2); 

yfit = polyval(ft, x);
ssresid = sum((yfit - y).^2);

dof = length(x) - 2;
sse = sqrt(ssresid/dof);

% print 
disp(['cor coef = ', num2str(r_xy)]);
disp(['y = ', num2str(b), 'x + ', num2str(a)]);
disp(['sse = ', num2str(sse)]);




