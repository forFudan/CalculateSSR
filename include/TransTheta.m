function vThetaStar = TransTheta(vTheta)
%
% function vThetaStar = TransTheta(vTheta)
% 
% Purpose:
%   Transform parameter Theta into Thetastar.
%   If Theta is in (-1, 1), then ThetaStar is in R.
% 
% Input:
%   vTheta: the vector of parameter thetas.
%   
% Output:
%   vThetaStar: the vector of parameter ThetaStars.
% 
% Date:
%   30 Oct. 2013
%   
% Author:
%   Junze Sun and Yuhao Zhu

vThetaStar=vTheta;
vN=(vTheta(3)+1)/2;
vThetaStar(3)=log(vN/(1-vN)); 

end

