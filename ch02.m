%% Chapter 02: Describing Data and Distribution
% Selected solutions for Chapter 02 Describing Data and Distribution
%
% * Central Tendency: 
% * Variability / Dispersion
%   * variance 
%   * standard deviation
%
%  * Reference: Statistics Unplugged 3rd Edition
%  * Zihan Chen
%  * 2015-03-26 


%% Central Tendency: Mean 

clc; clear;

% Table 2-1 P21

% data
d = [5 1 3 4 1 4 3 5 2 2];

% matlab 
m = mean(d);

% manual 
mm = sum(d)/length(d);

% print answer
disp(['Mean = ', num2str(m), '  (MATLAB)']);
disp(['Mean = ', num2str(mm), '  (Manual)']);


%% Central Tendency: Median

% matlab 
med = median(d);

% manual 
ds = sort(d);    % data sorted
mi = (length(d) + 1)/2;   % median index
if (mod(mi,1) == 0)
  % odd number of samples
  medm = ds(mi);
else 
  % even number of samples
  medm = (ds(floor(mi)) + ds(ceil(mi)))/2.0;
end

% print answer
disp(['Median number = ', num2str(med), '  (MATLAB)']);
disp(['Median number = ', num2str(medm), '  (Manual)']);

%% Central Tendency: Mode
d = [1 2 2 7 7 7 9 9 9 25 29];
md = mode(d);  % mode 

disp(['Mode = ', num2str(md), '  (MATLAB)']);


%% Variability: Range
clc; clear;

d = [1 2 3 4 5];

%  basically min and max of data 
dmin = min(d);
dmax = max(d);

disp(['Range = [', num2str(dmin), ' ', num2str(dmax), ']']);

%% Variability: Variance

% matlab 
% population, use N 
dvar_population = var(d, 1);  % 1 means use N 
% sample, use n-1
dvar = var(d);   % use n-1 by default

% manual in a matrix format
dm = mean(d);
dn = length(d);
dvarm = sum((d - dm).^2) / (dn-1);

% print answer
disp(['Variance = ', num2str(dvar), '  (MATLAB)']);
disp(['Variance = ', num2str(dvarm), '  (Manual)']);


%% Variability: Standard Deviation

% ---- standard deviation ----
% note sample std, thus use n-1 

% matlab
dstd = std(d);

% manual 
% std = sqrt(var)
dstdm = sqrt(dvarm);

% print answer
disp(['Standard Deviation = ', num2str(dstd), '  (MATLAB)']);
disp(['Standard Deviation = ', num2str(dstdm), '  (Manual)']);








