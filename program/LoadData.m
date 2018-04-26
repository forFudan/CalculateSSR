function [vC, mX]=LoadData(data, iY1, iY2, iN)

% function [vC, mX]=LoadData(data, iY1, iY2, iN)
%
% Purpose:
%   Program 1.
%   Load data from file and prepare c and X for the correct time period.
%   Output the mean of consumption, lagged consumption, personal disposal
%   income and lagged personal disposal income. *In logarithm form*
% 
% Input:
%   Data: Data file.
%   iY1: The begining row of the time period.
%   iY2: The ending row of the time period.
%   iN: the number of the observations.
%   
% Output:
%   vC: The vector of consumption.
%   mX: The matrix of independent variables, defined by Xt=(1, ct-1, yt,
%   yt-1).
% 
% Date:
%   30 Otc. 2013
%   
% Author:
%   Junze Sun and Yuhao Zhu


% function statement
mConsumption=importdata(data);
vExpen=mConsumption(:,4);
vCon=mConsumption(:,5);

vLnC=log(vCon);
vLnY=log(vExpen);   %Turning into logarithm form.

vC=vLnC(iY1: iY2);
vLC=vLnC(iY1-1: iY2-1);
vY=vLnY(iY1: iY2);
vLY=vLnY(iY1-1: iY2-1);

mX=[ones(iN,1), vLC, vY, vLY];

% Check the means
disp('  c and X successfully generated!');
fprintf('  The average c is: %g \n', mean(vC));
fprintf('  The average Lc is: %g \n', mean(vLC));
fprintf('  The average y is: %g \n', mean(vY));
fprintf('  The average Ly is: %g \n', mean(vLY));
fprintf('\n \n');

end