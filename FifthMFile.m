clear all
clc


syms x
f = 3 * x^2 + 5 * x - sin(3*x) * exp(-2*x)

%derivative of f with respect to x
df = diff(f,x)

%second derivative
d2f = diff(f,x,2)

%find the value of the derivative at x = 3.5
df_3_5 = subs(df,x,3.5)
soln = double(df_3_5)


%% Plotting a function and its derivative

xx = [0:0.1:5];

ff = subs(f,x,xx);
dff = subs(df,x,xx);
d2ff = subs(d2f,x,xx);

%{
figure(1)
plot(xx,ff,xx,dff,xx,d2ff)
legend('Function','1st Derivative','2nd Derivative')
%}


%% In Class Handout

syms t
v = (3.21) * sin(2.3 * t) + (cos(2.3 * t)) * (log(5.2*t))

mass = 0.73;

acc = diff(v,t)

force = mass * acc;

KE = .5 * mass * v^2;

tt = [0.1:0.01:10];
vv = subs(v,t,tt);
accPlot = subs(acc,t,tt);
forcePlot = subs(force,t,tt);
KEPlot = subs(KE,t,tt);

v_max = double(max(vv))
v_min = double(min(vv))

figure2=figure('Position', [100, 100, 1000, 500]);
    subplot(2,2,1)
    plot(tt,vv)
    title('Velocity')
    xlabel('Seconds')
    ylabel('Velocity (m/s)')

    subplot(2,2,2)
    plot(tt,accPlot)    
    title('Acceleration')
    xlabel('Seconds')
    ylabel('Acceleration (m/s^2)')

    subplot(2,2,3)
    plot(tt,forcePlot)
    title('Force')
    xlabel('Seconds')
    ylabel('Force (N)')

    subplot(2,2,4)  
    plot(tt,KEPlot)
    title('Kinetic Energy')
    xlabel('Seconds')
    ylabel('Kinetic Energy (J)')




%% Integration

syms x

f = 3*x^2

%indefinite integral
F = int(f,x)

%definite integral from 3 to 12
f_def = int(f,x,3,12)



%find equation for position from previous example

xp = int(v,t);
tt = [0.1:0.1:5];

xx = subs(xp,t,tt);

%plot of the position equations
plot(tt,xx)





































