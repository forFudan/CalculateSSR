function vTheta= BetaToTheta(vBeta)

% function vTheta= BetaToTheta(vBeta)
% 
% Purpose:
%   Transform parameter betas into thetas.
% 
% Input:
%   vBeta: the vector of parameter betas.
%   
% Output:
%   vTheta: the vector of parameter thetas.
% 
% Date:
%   30 Oct. 2013
%   
% Author:
%   Junze Sun and Yuhao Zhu

vTheta=zeros(3,1);
vTheta(3)=vBeta(2);
vTheta(2)=vBeta(3);
vTheta(1)=vBeta(1)/(1-vBeta(2));

end

