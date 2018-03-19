
% Differential Equations

clear all
clc

%skydiver problem
m = 100; %Mass
g = 9.8;%gravity
Cd = 1.45; %coefficient of drag for guy with parachute open
rho = 1.2; %density of air
Do = 7.3; %outer diameter of parachute
Di = 0.152; %inner diameter of parachute

%A = pi/4*(Do^2 - Di^2);

%if parachute doesn't open:
A = 1

%initial conditions (moment when parachute opens)
Vi = 56;


%Create differential equation
%Create it as a string

eqn = [num2str(m) '*Dv =' num2str(m*g) '-' num2str(1/2 * rho*Cd*A) '*v^2']

%Define initial conditions as a string

IC = ['v(0) = ' num2str(Vi)]

%dsolve needs strings
soln = dsolve(eqn,IC,'t')

%Plot the solution

tt = [0:0.01:10];
vv = subs(soln,'t',tt);

plot(tt,vv)




%% Second Order Differential Equation

eqn = '7*D2y + 12*Dy - 6*y = 140*sin(3*x)'

IC1 = 'y(0) = 2'
IC2 = 'Dy(0) = 5'

soln = dsolve(eqn,IC1,IC2,'x')

xx = [0:0.1:10];
yy = subs(soln,'x',xx);

plot(xx,yy)









