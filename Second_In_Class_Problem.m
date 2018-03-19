clear all
clc

D = 12.363;

a = 6.74 * 10^(-6)

Tf = -108
Tr = 80

% equation 1

dD1 = D*a*(Tf - Tr) * -1


% regression from data table 1

T = [80 0 -80 -100 -160 -180 -260 -280 -300 -340];
ITE = [6.47 6.00 5.43 5.28 4.72 4.52 3.58 3.33 3.07 2.45] * 10^(-6);

k = polyfit(T,ITE,2);

%TT = [-340:0.1:80];

%alphaCalc = polyval(k,TT);

%plot(TT,alphaCalc,T,ITE,'*')

a0 = k(3);
a1 = k(2);
a2 = k(1);

syms t

a = a0 + a1*t + a2*t^2;

dD2 = double(D * int(a, t, Tr,Tf)) * -1



% if contraction needed is -0.015", find min temp of the cooling that would
% be needed

syms x

eqn = (D * int(a,t,Tr,x) ) + 0.015;

minTemp = double(solve(eqn,x))

minTemp(1)
minTemp(2)
minTemp(3)

% answer is the most realistic one. -128 (answer(3))















