clear all
clc
format short
%% Question #1
fprintf('\nStephan Nash \nMonday 10AM \nSping \n2017\n')


%% Question #2
log10(120)


%% Question #3

s1 = 13
s2 = 17
s3 = 14

s = (s1 + s2 + s3)/2

A = sqrt(s*(s - s1)*(s-s2)*(s-s3))


%% Question #4

m1 = [2 3 4;5.2 6 7;8 9 1]
m2 = [4 6;78 5;1 1]

answer = m1*m2


%% Question #5

% You did this wrong, you know how, just redo it.

x = [5 11]
y = [6 15]

xx = [0:0.1:20]
k = polyfit(x,y,1)
plotK = polyval(k,xx)

plot(xx,plotK,x,y,'*')


%% Question #6

x = [1 2 3 4.5];
y = [2 5 6 123];

xx = [0:0.1:10];

k = polyfit(x,y,2);
plotK = polyval(k,xx);

plot(xx,plotK,'--',x,y,'*')
legend('Regression Fit','Data Points')


%% Question #7

syms x
syms y

f = x^2.*exp(2*x)

answer = int(f,x,0.2,y)

realAnswer = solve(answer - 19,y)


