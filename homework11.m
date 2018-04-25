clear all
clc


x = [2 4.5 5.25 7.81 9.2 10.6];
y = [7.2 7.1 7 5 3.5 5];


% Quadratic Spline

A(1,:) = [x(1)^2 x(1) 1 0 0 0 0 0 0 0 0 0 0 0 0];
A(2,:) = [x(2)^2 x(2) 1 0 0 0 0 0 0 0 0 0 0 0 0];
A(3,:) = [0 0 0 x(2)^2 x(2) 1 0 0 0 0 0 0 0 0 0];
A(4,:) = [0 0 0 x(3)^2 x(3) 1 0 0 0 0 0 0 0 0 0];
A(5,:) = [0 0 0 0 0 0 x(3)^2 x(3) 1 0 0 0 0 0 0];
A(6,:) = [0 0 0 0 0 0 x(4)^2 x(4) 1 0 0 0 0 0 0];
A(7,:) = [0 0 0 0 0 0 0 0 0 x(4)^2 x(4) 1 0 0 0];
A(8,:) = [0 0 0 0 0 0 0 0 0 x(5)^2 x(5) 1 0 0 0];
A(9,:) = [0 0 0 0 0 0 0 0 0 0 0 0 x(5)^2 x(5) 1];
A(10,:) = [0 0 0 0 0 0 0 0 0 0 0 0 x(6)^2 x(6) 1];
A(11,:) = [2*x(2) 1 0 -2*x(2) -1 0 0 0 0 0 0 0 0 0 0];
A(12,:) = [0 0 0 2*x(3) 1 0 -2*x(3) -1 0 0 0 0 0 0 0];
A(13,:) = [0 0 0 0 0 0 2*x(4) 1 0 -2*x(4) -1 0 0 0 0];
A(14,:) = [0 0 0 0 0 0 0 0 0 2*x(5) 1 0 -2*x(5) -1 0];
A(15,:) = [1 0 0 0 0 0 0 0 0 0 0 0 0 0 0];

fprintf('\nAssuming: \na1 = 0\nThe derivatives at intersecting points are equal\n')


B = [y(1);y(2);y(2);y(3);y(3);y(4);y(4);y(5);y(5); y(6);0;0;0;0;0];

soln = A\B;

syms X

y1 = (soln(1)*X^2 + soln(2)*X + soln(3));
y2 = (soln(4)*X^2 + soln(5)*X + soln(6));
y3 = (soln(7)*X^2 + soln(8)*X + soln(9));
y4 = (soln(10)*X^2 + soln(11)*X + soln(12));
y5 = (soln(13)*X^2 + soln(14)*X + soln(15));

xx1 = linspace(x(1),x(2),100);
xx2 = linspace(x(2),x(3),100);
xx3 = linspace(x(3),x(4),100);
xx4 = linspace(x(4),x(5),100);
xx5 = linspace(x(5),x(6),100);

yy1 = subs(y1,X,xx1);
yy2 = subs(y2,X,xx2);
yy3 = subs(y3,X,xx3);
yy4 = subs(y4,X,xx4);
yy5 = subs(y5,X,xx5);

%plot(xx1,yy1,xx2,yy2,xx3,yy3,xx4,yy4,xx5,yy5,x,y,'o')

L1 = myarclength(xx1,yy1);
L2 = myarclength(xx2,yy2);
L3 = myarclength(xx3,yy3);
L4 = myarclength(xx4,yy4);
L5 = myarclength(xx5,yy5);
format long
TotalArcLength = double(L1 + L2 + L3 + L4 + L5)
format short












