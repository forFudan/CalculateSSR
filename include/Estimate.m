function vBeta=Estimate(mX, vY)

% function vBeta=Estimate(mX, vY)
%
% Purpose:
%   Estimate the betas given the OLS function and observations.
% 
% Input:
%   vY: dependent variables
%   mX: matrix of explanatory variables
%   
% Output:
%   vB: the estimated Beta
%
% Date:
%   4 Sep. 2013
%   
% Author:
%   Junze Sun and Yuhao Zhu

vBeta=lscov(mX,vY);

end