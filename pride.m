function ams = pride(n)
%% pride.m
%
%% Purpose
% Create the colormap of the pride flag according the AMS standards defined
% at the https://doi.org/10.1175/1520-0477(1993)074<1709:GFUCTD>2.0.CO;2
%
%% 
%% Input 
% n     : Optional
%         1. If n not provided, then n = 8
%         2. If n > 0 is scalar, then the provided n value is used 
%         3. If n is vector with n1, n2,... > 0, then the n is used.
%% Output
% 
% ams   : colormap, for 1 and 2 the size(ams) = n,3
%                   for 3, the size(ams) = n+1,3
%
%% demo
% figure; colorbar; colormap(pride); title ('Default: 8 color categories');
% ams = pride(45);
% figure; colorbar; colormap(pride(45)); title ('User defined number of color categories');
% figure; colorbar; colormap(pride(0:0.123:20)); title ('User defined vector for the color categories');
%
%% Functions Used
% -
%% ToDo
% 
%% Credits
% Author        : Stelios Flampouris
% Comunication  : stylianos.flampouris@gmail.com
% Version       : 1.0
% Date          : 26 June 2020
% 
% Copyright (C) 2020 Flampouris
% Washington, DC, USA, Earth
% GNU Lesser General Public License <http://www.gnu.org/licenses/>.
%
%% Code
%
ams = flipud(               ...
      [ 0       0       0;  ...
        0.5     0.25    0;  ...
        1       0       0;  ...
        1       0.5     0;  ...
        1       1       0;  ...
        0       1       0;  ...
        0       0       1;  ...
        0.5     0       1       ]);

if nargin==1 
    if length(n) == 1
        n_amsUpd = 0:1/(n-1):1;
    elseif isvector(n)
        n_amsUpd = [0;n(:)]./max(n);
    end
    n_ams   =   0:1/(size(ams,1)-1):1;
    ams     =   interp1(n_ams, ams, n_amsUpd);
end

end
