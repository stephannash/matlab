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

a = (n*sum(x.*y) - sum(x)*sum(y))/(n*sum(x.^2)-(sum(x))^2);

b = mean(y) - a*mean(x)


tt = [0:.1:2];

syms t
w = a*t + b;

yy = subs(w,t,tt);

plot(tt,yy,x,y,'o')


%% Linearized exponential model 
clear all
clc

x = [0 1 3 5 7 9];
y = [1 0.891 0.708 0.562 0.447 0.355];

n = length(x);

y1 = log(y);

m = (n*sum(x.*y1) - sum(x)*sum(y1))/(n*sum(x.^2)-(sum(x))^2);

c = mean(y1) - m*mean(x);


tt = [0:1:10];

syms t

a = exp(c);
b = m;
w = a*exp(b*t);


yy = subs(w,t,tt);

plot(tt,yy,x,y,'o')



%% Homework 12 stuff
clear all
clc


t = [2 6 10 14 18];
q = [260 189 120 78 75];

n = length(t);
x = [];

for i =1:1:n
    x(i) = t(i)*q(i);
end


a = -1*(n*sum(x.*q) - sum(x)*sum(q))/(n*sum(x.^2)-(sum(x))^2)

b = (mean(q) + a*mean(x))



tt = 0:0.1:18;

syms g 

qq = b/(1+ (a*g));

qqq = subs(qq,g,tt);

%plot(tt,qqq,t,q,'o')

subsMyDude = double(subs(qq,g,344.0009))


f = (367.9209-5)/(5*0.211)
f/12













