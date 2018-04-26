function vG = grad(fun, vX0)
%
% function vG = grad(fun, vX0)
%
%  Purpose:
%    Calculate the numerical gradient at vX0
%
%  Inputs:
%    fun    name of the multidimensional scalar function
%           (string). This function takes a vector argument of
%           length iP and returns a scalar.
%    vX0    iP x 1 vector, point of interest
%
%  Outputs:
%    vG     iP x 1 vector containing the gradient of fun at vX0. 
%
%  Author:
%    Charles Bos
%
%  Based on code from
%    http://www.matrixlab-examples.com/gradient.html
%  and 
%    maximize.ox (c Jurgen Doornik)
%
 
 % |delta(i)| is relative to |vX0(i)|
delta = vX0 / 1000;             
iP= length(vX0);
for i = 1 : iP
    if vX0(i) == 0
          % avoids delta(i) = 0 (**arbitrary value**)
        delta(i) = 1e-12;      
    end
     % recovers original vX0
    vU = vX0;                    
    vU(i) = vX0(i) + delta(i);
     % fun(vX0(i-1), vX0(i)+delta(i), vX0(i+1), ...)
    df1 = feval ( fun, vU );     
    vU(i) = vX0(i) - delta(i);
     % fun(vX0(i-1), vX0(i)-delta(i), vX0(i+1), ...)
    df2 = feval ( fun, vU );     
   
     % partial derivatives in column vector
    vG(i,1) = (df1 - df2) / (2 * delta(i)); 
end
