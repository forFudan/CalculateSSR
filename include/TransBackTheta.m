function vTheta= TransBackTheta(vThetaStar)
%
% function vTheta= TransBackTheta(vThetaStar)
% 
% Purpose:
%   Transform parameter ThetaStar back into Theta.
%   If ThetaStar is in R, then Thetaa is in (-1, 1).
% 
% Input:
%   vThetaStar: the vector of parameter ThetaStars.
%   
% Output:
%   vTheta: the vector of parameter thetas.
% 
% Date:
%   30 Oct. 2013
%   
% Author:
%   Junze Sun and Yuhao Zhu

vN=exp(vThetaStar(3))/(1+exp(vThetaStar(3)));
vTheta(3)=2*vN-1;

end

