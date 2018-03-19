clear all
clc


%% Question #1

syms x
f = (3*x^4 * cos(7*x))/(12*x^2 -17*x)

df = diff(f)

answer = double(subs(df,x,2.7));

fprintf('\nThe Derivative of f(x) at x = 2.7 is %g\n',answer)


%% Question #2

syms t
v = 2000*log((14*10^4)/(14*10^4 - 2100*t)) - 9.8*t

a = diff(v)
aAnswer = double(subs(a,t,16))

fprintf('\nThe Acceleration at t = 16 seconds is %gm/s^2\n',aAnswer)

tt = [0:0.1:30];

aa = subs(a,t,tt);

figure(1)
plot(tt,aa)
title('Accerleration vs Time')
xlabel('Time (Seconds)')
ylabel('Acceleration (m/s^2)')

d = int(v,t)

cAnswer = double(subs(d,t,30) - subs(d,t,0))

fprintf('\nThe rocket travels %gm in 30 seconds\n',cAnswer)

dd = subs(d,t,tt);

figure(2)
plot(tt,dd)
title('Distance vs Time')
xlabel('Time (Seconds)')
ylabel('Distance (Meters)')



%% Question #3

eqn = '5 * Dy + 6 * y = exp(-1*x)'

IC = 'y(0) = 10'
soln = dsolve(eqn,IC,'x')

bAnswer = double(subs(soln,x,12))

xx = [0:0.01:15];

yy = subs(soln,x,xx);


figure(3)
plot(xx,yy)
title('Y vs X')
xlabel('X')
ylabel('Y')

















