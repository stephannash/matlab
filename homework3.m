clear all
clc

%% Question #1

syms x

f = 3*x^2 + 2*x -5;

answer = solve(f,x)

% you get two solution for the function because it is a parabolic function
% and therefor has the possibility of passing through the x axis twice.
% When using the Solve command, you cannot have an equals sign in the
% function. Moving the 5 over to the other sides sets the function equal to
% zero. Solving that function is then solving for values of x when the
% function passed through the x axis.


%% Question #2

syms x

f = (x^3) - 0.165*(x^2) + (3.994 * 10^(-4));

answer = solve(f,x);

answer = double(answer) *100;

fprintf('\nThe float would be submerged %g cm with a radius of 5.5cm\n',answer(1))


%% Question #3

x = [1.2 2.5 3.3 7.8];
y = [4.6 1.1 8.2 19.3];

k = interp1(x,y,5,'linear')

xx = [1:0.1:8];

j = interp1(x,y,xx,'polynomial');

figure(1)
plot(xx,j,x,y,'p')
title('Polynomial Interpolation')
xlabel('x')
ylabel('y')
legend('Interpolation','Data Points','Location','Northwest')

%% Question #4

x = [1.2 2.5 3.3 7.8];
y = [4.6 1.1 8.2 19.3];

k1 = polyfit(x,y,1);
k2 = polyfit(x,y,2);
k3 = polyfit(x,y,3);

xx = [1:0.1:8];
kk1 = polyval(k1,xx);
kk2 = polyval(k2,xx);
kk3 = polyval(k3,xx);

figure(2)
plot(xx,kk1,'r--',xx,kk2,'k:',xx,kk3,'g',x,y,'o')
title('Regression Plots')
xlabel('x')
ylabel('y')
legend('First Order Polynomial','Second Order Polynomial','Third Order Polynomial','Data Points','Location','Northwest')




















