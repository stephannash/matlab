clear all
clc


% Recersive


%Calculate root of number
format long
r = 789;
percError = 100;
xo = r/2;
counter = 0;
while (percError > 0.0000000000000000000001)
    xn = (1/2)*(xo + (r/xo));
    xo = xn;
    percError = abs(100*(xo - sqrt(r))/sqrt(r));
    counter = counter + 1;
end

calculatedValue = xo
actualValue = sqrt(r)
counter
format short


%finding roots of a function

syms x
y = x^2 - 9;
xo = 5;
percError = 100;

while (percError > 0.0000001)
    xn = xo - (subs(y,x,xo)/(subs(diff(y,x),x,xo)));
    percError = abs((xn - xo) / xn * 100);
    xo = double(xn);
end

double(xo)
solve(y,x)






























