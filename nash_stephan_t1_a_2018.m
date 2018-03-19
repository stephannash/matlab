clear all
clc


%% Question #1

fprintf('\nStephan Nash\nMonday 10:00am\nSpring\n2018\n')


%% Question #2

answer = cosd(25)

fprintf('\nCos(25 degress) = %g\n',answer)


%% Question #3

la = 25000
ipm = .06 / 12
nm = 5 * 12

pmt = (la*ipm)/(1-(1+ipm)^(-1*nm))

ipmPercent = ipm * 100

fprintf('\nThe monthly payment for a car costing $%g with an interest rate of %g%% per month being paid off over %g months is $%g\n',la,ipmPercent,nm,pmt)


%% Question #4

A = [2 3;5.2 22;8 25]
B = [14 13;10.8 -6;8 -9]

% I don't remember how to multiply matrices element by element
% I do however know how to code it if I did
% to call each individual element of a matrix you would use A(1,1) (calls
% first row and first column of matrix A) and then multiply that by
% whichever one from matrix B
% Example: A(2,2) * B(1,2) = 286
%Then, you would input that number into a new matrix the same way you would
%a normal integer
% C = [A(2,2)* (1,2); ...]



%% Question #5

a = [2 3;5 8]
b = [9.5;12.6]

answer = inv(a)*b

fprintf('\nx = %g\ny = %g\n',answer(1),answer(2))


%% Queston #6

syms t

s = exp(3*t) + log(2*t);

v = diff(s,t);

tt = [1:0.1:4];

ss = subs(s,tt);
vv = subs(v,tt);

figure(1)
plot(tt,vv)
title('Velocity vs Time')
xlabel('Time (seconds)')
ylabel('Velocity (m/s)')


%% Question #7

syms x t

f = 3*x - 4*x*t^3
g = x^2 - 4*x*t + 9

z = subs(f * g,t,2)

answer = double(solve(z,x))

fprintf('\nThe roots for z when t = 2 are:\nx = %g\nx = %g\nx = %g\n',answer(1),answer(2),answer(3))


















