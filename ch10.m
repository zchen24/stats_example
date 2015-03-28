%% Chapter 10: Analysis of Variance (ANOVA)
% 
%  * Reference: Statistics Unplugged 3rd Edition
%  * Zihan Chen
%  * 2015-03-27


%% ANOVA MATLAB
% Example of 1 way ANOVA

clc; clear; 

% data 
% dn: data north
% ds: data south 
% de: data east
% dw: data west
dn = [3.8 7.1 9.6 8.4 5.1 11.6 6.2 7.9 9.0 10.3];
ds = [4.2 6.5 4.4 8.1 7.6 5.8 4.0 7.3 5.2 4.8];
de = [8.8 5.1 12.7 6.4 9.8 6.3 10.2 8.5 11.9 8.6];
dw = [4.8 1.2 8.0 9.4 3.6 8.7 6.5];
dng = repmat({'n'}, 1, length(dn));
dsg = repmat({'s'}, 1, length(ds));
deg = repmat({'e'}, 1, length(de));
dwg = repmat({'w'}, 1, length(dw));

y = [dn ds de dw];  % all data
g = [dng dsg deg dwg]; % group

% matlab 
[p, tbl, stats] = anova1(y, g, 'off');

% print answer
disp(['p = ', num2str(p)]);
disp('Given p < 0.05, we reject H0');

%% ANOVA MANUAL 
% Same data set, now do ANOVA manually

% SSB: Between Group Sum of Squares
dnm = mean(dn);
dsm = mean(ds);
dem = mean(de);
dwm = mean(dw);
dm = mean(y);

dmarray = [dnm dsm dem dwm];
dnarray = [length(dn) length(ds) length(de) length(dw)];

SSB = sum(((dmarray-dm).^2).*dnarray);

% SSW: Within Group Sum of Squares
vararray = [var(dn), var(ds), var(de), var(dw)];
SSW = sum(vararray.*(dnarray-1));

% F Value
dfb = length(dmarray)-1;
dfw = length(y) - length(dmarray);
f = (SSB/dfb) / (SSW/dfw);

% F Critical value
sl = 0.05;  % significance level
fcv = finv(1-sl, dfb, dfw);

% Test 
hm = (f > fcv);
pm = 1 - fcdf(f, dfb, dfw);

% print answer
disp('Manual');
disp(['p = ', num2str(pm)]);
disp('Given p < 0.05, we reject H0');


%% Post Hoc MATLAB
% Using default HSD

multcompare(stats);

%% Post Hoc MANUAL
% Honestly Significant Difference (HSD)

% compute all Q values 





