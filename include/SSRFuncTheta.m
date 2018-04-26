function dSSR = SSRFuncTheta(mX, vY, vTheta, iN)
%
% function dSSR = SSRFuncTheta(mX, vY, vTheta, iN)
% 
% Purpose:
%   Generate the average SSR as the function of theta instead of beta.
%   Calculate the average SSR.
% 
% Input:
%   vY: vector of dependent variables
%   mX: matrix of explanatory variables
%   vTheta: a vector of parameters
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

dSSR=SSRFuncBeta(mX, vY, ThetaToBeta(vTheta), iN);

end

