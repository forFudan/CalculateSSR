function dSSR=AverageSSR(mX, vY, vTheta, iN)

% function dSSR=AverageSSR(mX, vY, vTheta, iN)
%
% Purpose:
%   Program 2.
%   Computes the average SSR for theta = [0; 0; 0].
%   Output the SSR.
% 
% Input:
%   vY: vector of dependent variables
%   mX: matrix of explanatory variables
%   
% Output:
%   dSSR: the calculated average SSR
%
% Date:
%   4 Oct. 2013
%   
% Author:
%   Junze Sun and Yuhao Zhu

dSSR=SSRFuncTheta(mX, vY, vTheta, iN);
fprintf('  The average SSR for theta=[0, 0, 0] is: %g \n', dSSR);
fprintf('\n \n');

end

