% Zihan Chen
% 2015-03-26 
% Statistics Unplugged 3rd Edition
% Chapter 02 

% Central Tendency: 
%   - mean 
%   - median 
%   - mode 

% Variability / Dispersion
%   - variance 
%   - standard deviation


%% Central Tendency 
clc; clear;

% ---- Mean -----
% Table 2-1 P21

% data
d = [5 1 3 4 1 4 3 5 2 2];

% matlab 
m = mean(d);

% manual 
mm = sum(d)/length(d);


% ---- Median -----

% matlab 
med = median(d);
disp('Median number = ');
disp(med);

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


% ---- Mode ------
d = [1 2 2 7 7 7 9 9 9 25 29];
md = mode(d);  % mode 


%% Variability / Dispersion
clc; clear;

d = [1 2 3 4 5];

% ---- Range ----
%  basically min and max of data 
dmin = min(d);
dmax = max(d);


% ---- variance ----
% matlab 
% population, use N 
dvar_population = var(d, 1);  % 1 means use N 
% sample, use n-1
dvar = var(d);   % use n-1 by default

% manual in a matrix format
dm = mean(d);
dn = length(d);
dvarm = sum((d - dm).^2) / (dn-1);



% ---- standard deviation ----
% note sample std, thus use n-1 

% matlab
dstd = std(d);

% manual 
% std = sqrt(var)
dstdm = sqrt(dvarm);








