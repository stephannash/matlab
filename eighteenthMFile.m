clear all
clc



x = [0.698132 0.959931 1.34464 1.570796 1.919862];
y = [0.188224 0.209138 0.230052 0.250965 0.313707];

n = length(x);


sumXY = 0;
sumX = 0;
sumY = 0;
sumX2 = 0;


for i = 1:1:n
    sumXY = sumXY + (x(i)*y(i));
    sumX = sumX + x(i);
    sumY = sumY + y(i);
    sumX2 = sumX2 + x(i)^2;
end

a = (n*sumXY - (sumX*sumY))/(n*sumX2 - sumX2)

b = mean(y) - a*mean(x)


tt = [1:1:100];

syms t
y = a*t + b;

yy = subs(y,t,tt);

plot (tt,yy,x,y)
    



















