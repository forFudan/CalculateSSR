function [vOptTheta,dOptima]= OptWithRes(mX, vY, iN)

% function [vOptThetaStar,dOptima]= OptWithRes(mX, vY, iN)
%
% Purpose:
%   Program 4.
%   Optimize the NLS function, with rho restrict to (-1, 1).
%   Approach: transformation of parameters.
%   Display the optimal SSR and the optimal theta. 
% 
% Input:
%   mX: matrix of explanatory variables
%   vY: dependent variables
%   iN: the number of observations
%   
% Output:
%   vOptTheta: the vector of Theta that optimizes the SSR function, with rho restricted.
%   dOptima: optimal average SSR with NLS
%
% Date:
%   30 Oct. 2013
%   
% Author:
%   Junze Sun and Yuhao Zhu


% Starting values
vBeta0=Estimate(mX, vY);
vTheta0=BetaToTheta(vBeta0);

% Transforming parameters
if vTheta0(3)>= -1 && vTheta0(3)<=1
    vThetaStar0=TransTheta(vTheta0);
else
    vThetaStar0=[0, 0, 0];
end

SSR=@(vThetaStar)SSRFuncThetaStar(mX, vY, vThetaStar, iN);	% Define function
[vOptThetaStar,dOptima] = fminsearch(SSR,vThetaStar0);  % Find minimum
vOptTheta=TransBackTheta(vOptThetaStar);    % Transform parameters back

% Display
fprintf('  The Theta that optimizes SSR is: [%g, %g, %g] \n', vOptTheta);
fprintf('  The Optimal SSR is: %e \n', dOptima);
fprintf('\n \n');

end
