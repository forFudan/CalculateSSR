function dSSR = SSRFuncThetaStar(mX, vY, vThetaStar, iN)
%
% function dSSR = SSRFuncThetaStar(mX, vY, vThetaStar, iN)
% 
% Purpose:
%   Generate the average SSR as the function of ThetaStar instead of Theta.
%   Calculate the average SSR.
% 
% Input:
%   vY: vector of dependent variables
%   mX: matrix of explanatory variables
%   vThetaStar: a vector of parameters
%   iN: number of observations
%   
% Output:
%   dSSR: the calculated average SSR
% 
% Date:
%   30 Oct. 2013
%   
% Author:
%   Junze Sun and Yuhao Zhu

dSSR=SSRFuncTheta(mX, vY, TransBackTheta(vThetaStar), iN);

end

