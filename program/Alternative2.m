function [vOptTheta,dOptima]=Alternative2(mX, vY, iN)
%
% function [vOptTheta,dOptima]=Alternative2(mX, vY, iN)
%
% Purpose:
%   Program 5.
%   Own alternative optimization method: Newton-Raphson.
%   Using Newton-Raphson algorithm to optimize SSR.
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

Func=@(vTheta)SSRFuncTheta(mX, vY, vTheta, iN);	% Define function

vBeta0=Estimate(mX, vY);
vOptTheta=BetaToTheta(vBeta0);  % Starting values

vH=[1; 1; 1];
while sqrt((vH)'*(vH))>= 0.0001
    vGrad=grad(Func, vOptTheta);
    mHessian=hessian(Func, vOptTheta);
    vH=-inv(mHessian)*vGrad;
    vOptTheta=vOptTheta+vH;
end
dOptima=SSRFuncTheta(mX, vY, vOptTheta, iN);

% Display
disp('  Alternative 2: Newton-Raphson.');
fprintf('  The Theta that optimizes SSR is: [%g, %g, %g] \n', vOptTheta);
fprintf('  The Optimal SSR is: %e \n', dOptima);

end