clear all
clc

%% Question #1

%syms y
%f = 0;

%for i = 0:1:n
  % if i == 0
  %      f = 1
  %  elseif mod(i,2) == 0
   %     f = f + y^(i*2 -1)/factorial(i*2-1)
   % else
     %   f = f - y^(i*2-1)/factorial(i*2-1)
   % end
%end

syms x
 n = 7;
 f = 0;
 
for i = 0:1:n-1
    f = f + ((-1)^i) * x^((i*2)+1)/factorial((i*2)+1);
end
 
mAnswer = double(subs(f,x,3));
percError = (mAnswer - sin(3))/sin(3);

fprintf('\nThe maclaurin series calculates the value of Sin(3.0) to be %g\nSin(3.0) = %g\nPercent error: %g%%\n',mAnswer,double(sin(3)),percError)


%% Question #2

a = 0.123;
n = 42;

answer = homework6function(a,n);

fprintf('\nThe sum of the Summation is %g\nThe number of terms being %g\n',answer,n)



































