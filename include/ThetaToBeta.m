function vBeta = ThetaToBeta(vTheta)
%
% function vBeta = ThetaToBeta(vTheta)
% 
% Purpose:
%   Transform parameter thetas into betas.
% 
% Input:
%   vTheta: the vector of parameter thetas.
%   
% Output:
%   vBeta: the vector of parameter betas.
% 
% Date:
%   30 Oct. 2013
%   
% Author:
%   Junze Sun and Yuhao Zhu

vBeta=zeros(4,1);
vBeta(2)=vTheta(3);
vBeta(3)=vTheta(2);
vBeta(1)=vTheta(1)*(1-vBeta(2));
vBeta(4)=-vTheta(2)*vTheta(3);

end

