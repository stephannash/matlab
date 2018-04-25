function [S] = myarclength(x,y)
% This function calculates the arclength of a given data set [x,y]
% Created by John Dixon 12/18/2017

S = 0;
if length(x) ~= length(y)
    fprintf('\nError - x and y vectors must be the same length.\n')    
else
    n = length(x);
    for i = 1:n-1
        dfdx(i) = (y(i+1)-y(i))/(x(i+1)-x(i));
        integrand1(i) = sqrt(1+(dfdx(i))^2);
    end
    for i = 1:n-1
        S = S + integrand1(i)*(x(i+1)-x(i));
    end
end