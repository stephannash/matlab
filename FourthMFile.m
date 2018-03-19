clear all
clc


Temp = [0 20 40 60 80 100 120 140 160];
u = [0.2 82.8 165.2 247.7 330.4 413.4 496.8 580.7 665.4];
v = [0.0009904 0.0009928 0.0009992 0.0010084 0.0010199 0.0010337 0.0010496 0.0010678 0.0010885];

%interpolation
%find u given Temp = 53
soln = interp1(Temp,u,53,'linear')
%find v given u = 100
soln2 = interp1(u,v,100,'linear')
%find Temp given v = .001
soln3 = interp1(v,Temp,0.001,'linear')


%Plot the data
%{
figure(1)
plot(Temp,u,'o')
xlabel('Temp [C]')
ylabel('Int Energy[kJ/kg]')

figure(2)
plot(Temp,v,'p')
xlabel('Temp [C]')
ylabel('Sp Vol [m3/kg]')
%}

% polynomial interpolation
x = [1 4]
y = [6 10]

%figure(3)
%plot(x,y,'s')

%Use polyfit to find coefficients of the polynomial
k = polyfit(x,y,1)                  %last spot (1) is the order of the polynomial. so this is first order

%to plug in a value for x into the polynomial, use polyval
y_5 = polyval(k,5)              %k is function, 5 is value

%lets add a third point. this is now a 2nd order polynomial interpolation
x = [1 4 8]
y = [6 10 12]

k = polyfit(x,y,2)
%plot(x,y,'p')

y_5 = polyval(k,5)

%graph the polynomial
xx = [0:0.1:15];
yy = polyval(k,xx);
%plot(xx,yy,x,y,'*')

%back to the u and Temp and v and stuff. 
%use polynomial interpolation for u vs Temp
n = length(Temp)
k = polyfit(Temp,v,n-1) %n is the number of points we have in the table


tt = [0:0.1:160];
vv = polyval(k,tt);

%plot(tt,vv,Temp,v,'*')

%extrapolation is using interpolation to project data outside your data
%points. It doesn't work to well 


%% Regression
clear all
clc

S = [0 0.177 0.336 0.584 0.727 0.902 1.061]
e = [0 0.00005 0.0001 0.000167 0.000217 0.000283 0.000333]

%plot(e,S,'*')

k = polyfit(e,S,1);                 %using a 6th order will force the curve to intercept every point. using 1st order will find the line best fit


ee = [0:0.00001:0.000333];
SS = polyval(k,ee);

plot(ee,SS,e,S,'o')






















