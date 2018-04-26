function [vOptTheta,dOptima]= OptSSR(mX, vY, iN)

% function [vOptTheta,dOptima,iConverge]= OptSSR(mX, vY, iN)
%
% Purpose:
%   Program 3.
%   Optimize the NLS function, with theta the independent variables.
%   Display the SSR with OLS, starting values, optimal SSR with NLS, and the optimal theta. 
% 
% Input:
%   mX: matrix of explanatory variables
%   vY: dependent variables
%   iN: the number of observations
%   
% Output:
%   vOptTheta: the vector of the theta that optimizes the SSR function.
%   dOptima: optimal average SSR with NLS
%
% Date:
%   30 Oct. 2013
%   
% Author:
%   Junze Sun and Yuhao Zhu

% Initial values
vBeta0=Estimate(mX, vY);
dSSR0=SSRFuncBeta(mX, vY, vBeta0, iN);
vTheta0=BetaToTheta(vBeta0);
fprintf('  The OLS SSR is: %e \n', dSSR0);
fprintf('  The starting value of Theta is: [%f, %f, %f] \n', vTheta0);
fprintf('\n');

SSR=@(vTheta)SSRFuncTheta(mX, vY, vTheta, iN);  % Define the function

[vOptTheta,dOptima] = fminsearch(SSR,vTheta0);  % Find minimum

% Display
fprintf('  The Theta that optimizes SSR is: [%f, %f, %f] \n', vOptTheta);
fprintf('  The Optimal SSR is: %e \n', dOptima);
fprintf('\n \n');

end

