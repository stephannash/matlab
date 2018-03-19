clear all
clc

%% Chapter 1 #8

b = 10;
h = 12;

a = 0.5 * b * h;

fprintf('\nThe area of a triangle with base %g and height %g is %g\n',b, h, a)

%% Chapter 1 #9

r = 5;
h = 3;

sa = (2*pi*r*h) + (2*pi*r^2);
v = pi*h*r^2;

fprintf('\nA cylinder with radius %g and height %g has a surface area of %g and a volume of %g\n',r, h, sa, v)


%% Chapter 1 #10

p1x = 3;
p1y = 4;
p2x = 5;
p2y = 9;

slope = (p2y - p1y)/(p2x-p1x);

fprintf('\nThe slope between the point (%g, %g) and (%g, %g) is %g\n', p1x, p1y, p2x, p2y, slope)



%% Chapter 1 #11

distance = sqrt((p2x-p1x)^2 + (p2y-p1y)^2);

fprintf('\nThe distance between the point (%g, %g) and (%g, %g) is %g\n', p1x, p1y, p2x, p2y, distance)


%% Chapter 1 #12

facto = factorial(6);


fprintf('\n6! is %g\n',facto)



%% Chapter 1 #14

format long

k = 0;
piApprox1 = (factorial(4*k)*(1103+(26390*k)))/((factorial(k)^2)*396^(4*k));

piApprox1Final = ((2*sqrt(2))/(9801))*piApprox1;


k = 1;

piApprox2 = (factorial(4*k)*(1103+(26390*k)))/((factorial(k)^2)*396^(4*k));

piApprox2Final = ((2*sqrt(2))/(9801))*(piApprox1+piApprox2);

realPi = 1/pi

%Although I set the format to be long, it does not change the number of
%decimal places fprintf displays so I manually changed the fprinf statement
%to display the correct number of decimal places. 
fprintf('\nWhen N = 0, the approximation of 1/pi = %.15f, when N = 1, the approximation for 1/pi is %.15f, \nwhich compared to %.15f, N = 1 is a much better approximation.\n',piApprox1Final, piApprox2Final, realPi)



format short


%% Chapter 1 #15

x = 2;
hypeSin = (exp(x) - exp(-1*x))/(2);

fprintf('\nUsing exponetials to find sinh(%g) yields %g while matlab computes sinh(%g) to be the same (%g)\n',x, hypeSin, x, sinh(x))


%% Chapter 1 #16
format long

for x = [pi pi/2 pi/4 pi/6]
    theAnswer = sin(x)^2 + cos(x)^2;
    fprintf('\nWhen x = %g, sin^2(x) + cos^2(x) = %g',x, theAnswer)
end
fprintf('\n')

format short

%% Chapter 1 #17

help sind

fprintf('\nsin(87 degrees) = %g\n',sind(87))


%% Chapter 2 #10

S = '123';
N = str2num(S);
class(S)
class(N)


%% Chapter 2 #11

s1 = 'HELLO'
s2 = 'hello'
strcmp(s1,s2)
strcmp(lower(s1),s2)
strcmp(s1,upper(s2))


%% Chapter 2 #12

str1 = sprintf('The word ''Engineering'' has 11 letters.')
str2 = sprintf('The word ''book'' has 4 letters.')
str3 = sprintf('The word ''MATLAB'' has 6 letters.')



