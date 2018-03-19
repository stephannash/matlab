clear all
clc

%define x as a symbolic variable
syms x

y = 3*x + 5
g = 4*x^3 - 3*x + 25

z = y*g

f = 2*y + 3*g - sin(y)       %does basic algebra (combines like terms)


%This does not work if you want to plug in value for x
%x = 5

%3 inputs for subs function: 
%1) symbolic expression
%2) Symbolic variable
%3) the number we want to plug in
soln = subs(f,x,5)
soln = double(soln)    %to get decimal value

syms x t a b c

f = 3*x^3 + 2*x*t - 5*x*cos(3*t)


soln = subs(f,x,2.7)

soln2 = subs(soln,t,37.1)

soln2 = double(soln2)



%% Quadratic equation
clear all
clc

syms a b c x

eqn = a*x^2 + b*x + c

soln = solve(eqn,x)


%Another way

a = 2;
b = 15;
c = 3;
eqn = a*x^2 + b*x + c
soln = solve(eqn,x)
soln = double(soln)


%Works for vectors too

syms a

eqn = a*x^2 + b*x + c
soln - solve(eqn,x)
aa = [1:0.1:10];

soln2 = subs(soln,a,aa);             %gives solution for all values of aa

size(soln2)

%plot(aa,soln2(1,:))         %this will plot just the first row of soln2
%something is wrong with that^ and I don't know what it is

%example with trig function

syms x

y = 3*sin(5*x^2) + sin(x)*cos(x)*12

xx = [0:0.1:10];
yy = subs(y,x,xx);

%plot(xx,yy)





%% In class exercise
clear all
clc

syms t

a_Tan = 2*sin(.5*t) + t^2;
a_Normal = (((1/3)*t^3 - 4*cos(.5*t))^2)/300;

aTotal = sqrt(a_Tan^2 + a_Normal^2)

soln1 = subs(aTotal,t,4.3);
soln1 = double(soln1)

tt = [0:.01:10];

yy = subs(aTotal,t,tt);
plot(tt,yy)







































