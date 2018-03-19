function [area,perimeter] = myTriangleFunction(a,b,c)
   %         input                                   outputs
 
s = (a+b+c)/2;
area = sqrt(s*(s-a)*(s-b)*(s-c));
perimeter = a+b+c;


%to call do myTriangleFunction(3,4,1)
































