clear all
clc


%Infinite Series
syms x
n = 22;
s = 0;

for i = 0:1:n
    s = s + x^i/factorial(i);
end

format long
soln = double(subs(s,x,3))
exp(3)
format short


%% infinite series to get sin(x) and cos(x)



n = 4;
g = 0;
%syms t

% for cos(x)

t = 5

%for i = 0:1:n
 %   g = g + ((-1)^i)*t^(i*2)/factorial(i*2);
%end



i = 0;
error = 1;
while (error > .0000001)
    g = g + ((-1)^i)*t^(i*2)/factorial(i*2)
    error = abs((((-1)^i)*t^(i*2)/factorial(i*2))/(g*100));
    i = i +1;
end
g
cos(t)





% for sin(x) INCOMPLETE
%syms y
%f = 0;

%for i = 0:1:n
 %   if i == 0
  %      f = 1
  %  elseif mod(i,2) == 0
   %     f = f + y^(i*2 -1)/factorial(i*2-1)
   % else
     %   f = f - y^(i*2-1)/factorial(i*2-1)
   % end
%end



















