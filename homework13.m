clear all
clc


%% Question #1

syms t
tt = [2:1:18];      %2 to 18 months
rate = 461.85/(0.29071*t + 1.0);
r = subs(rate,t,tt);

intRate(1) = 0;
inc = 1;


% B. Trapezoidal Method of Integration
for i = 1:1:length(r) - 1
    intRate(i+1) = intRate(i) + ((r(i) + r(i+1)) / 2) * inc;
end

total_prod = double(sum(r))


%Using int command
double(int(rate,2,18))












