function dSSR=SSRFuncBeta(mX, vY, vBeta, iN)
%
% function dSSR=SSRFuncBeta(mX, vY, vBeta, iN)
%
% Purpose:
%   Calculate the average SSR as the function of beta.
% 
% Input:
%   iN: the size of vector Sigma
%   vY: dependent variables
%   mX: matrix of explanatory variables
%   vBeta: the estimated Beta
%
% Output:
%   dSSR: the average SSR of the model
%   
% Date:
%   4 Sep. 2013
%   
% Author:
%   Junze Sun and Yuhao Zhu

vRes=vY-(mX*vBeta);
dSSR=(vRes)'*(vRes)./iN;

end
