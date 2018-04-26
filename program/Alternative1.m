function [vOptTheta,dOptima]=Alternative1(mX, vY, iN)
%
% function [vOptTheta,dOptima]=Alternative1(mX, vY, iN)
%
% Purpose:
%   Program 5.
%   Own alternative optimization method: a steepest decent algorithm.
%   Using a steeper decent algorithm to optimize SSR.
%
% Input:
%   mX: matrix of explanatory variables
%   vY: dependent variables
%   iN: the number of observations
%   
% Output:
%   vOptTheta: the vector of Theta that optimizes the SSR function.
%   dOptima: optimal average SSR with NLS
%
% Date:
%   3 Nov. 2013
%   
% Author:
%   Junze Sun and Yuhao Zhu


Func=@(vTheta)SSRFuncTheta(mX, vY, vTheta, iN); % Define function

vBeta0=Estimate(mX, vY);
vOptTheta=BetaToTheta(vBeta0);	% Starting values
dAlpha=-0.01;   % A small distance to the oppsite direction of gradients

vGrad=[1; 1; 1];
while sqrt(((vGrad-[0; 0; 0]))'*(vGrad-[0; 0; 0])) > 0.0001
    vGrad=grad(Func, vOptTheta);
    vOptTheta=vOptTheta+dAlpha*vGrad;
end
dOptima=SSRFuncTheta(mX, vY, vOptTheta, iN);

% Display
disp('  Alternative 1: A steepest decent algorithm.');
fprintf('  The Theta that optimizes SSR is: [%g, %g, %g] \n', vOptTheta);
fprintf('  The Optimal SSR is: %e \n', dOptima);
fprintf('\n');

end