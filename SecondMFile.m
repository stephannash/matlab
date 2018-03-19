clear all
clc


abc = 'Hello';

def = 'World';


%this adds strings together 
%It is called "concatenating Strings"
c = [abc ' ' def]


s1 = '42';

%convert from string to number:
n1 = str2num(s1)
s2 = num2str(n1)



%to show more or less sig figs
format short
format long
format short


%% Quadratic equation
clc
eqn = '3*x^2 + 15*x + 1'

%solve for x
soln = solve(eqn,'x')

%show it as a decimal
soln = double(soln)


%% Inputs for Equations
a = 2;
b = 12;
c = 1;


eqn = 'a*x^2 + b*x + c';
eqn = [num2str(a) '*x^2 + ' num2str(b) '*x + ' num2str(c)];
soln2 = double(solve(eqn,'x'));

%Note how to exress specific answers when the solve function has multiple
%answers. 
fprintf('\nThe roots of the quadratic equations are %g and %g\n',soln2(1),soln2(2))



%% Second Day using this m file

clear all
clc

% Matrix Stuff

A = [2 3;1 4]

A(1,2)  %calls coord. of an element in a matrix


%inverse of matrix:
Ainv = inv(A)


%transpose of matrix
%(main diag. stays the same, but everything is flipped over that line)

Atrans = A'


%using matrixes to solve simultaneous equations. 
%equations: 4x + 2y = 8
%                4x - 5y = -6
% A* [x;y] = B

A = [4 2;4 -5];
B = [8;-6];

answer = inv(A)*B



%More complex equations
% 3x = z - y - 2
%2y - 5x = 12
%x - y + z = 0
%solve each for coef. 
%3x + y - z = -2
%-5x + 2y + 0z = 12
%x + y + z = 0

A = [3 1 -1;-5 2 0;1 1 1];
B = [-2;12;0];
answer = inv(A)*B;

fprintf('\nx = %g, y = %g, z = %g\n',answer(1), answer(2), answer(3))



%% Vectors

vec = [3 6 1 2 9 12]

vec_transpose = vec'

vec(4)  %Because there is only one row or column, you only need one location
vec_transpose(4) %equals the same as vec


n = length(vec)             %length of vector


A = [2 3 1;5 6 7]


%returns the number of rows and columns
n = size(A)

[R C] = size(A)     %assigns number of rows and columns to R and C



%% Finding an equation for a line given two points

A = [1 1;4 1]
B = [6;10]

answer = inv(A)*B

fprintf('\ny = %gx + %g\n',answer(1), answer(2))



%% Plotting in MATLAB
%more specifically, plotting data (not functions)

%Step 1: generate x data
%Step 2: gemerate y data
%Step 4: plot x and y data points

x = [1 2 3 4]
y = [1 4 8.5 17.2]

%horizontal data first

%plot(x,y) 

%starting point:increment:end point
xx = [0:0.01:5] ;         %be advised, those are not semi


%the period means that you're performing on operation on each element of
%that matrix
yy = xx.^2;

%figure(1)
%plot(xx,yy)

%figure(2)
%plot(x,y,'o',xx,yy,'g')

%figure(3)
%plot(x,y,'p',xx,yy,'m-.')

%Those change how the data looks. 


%figure(4)
%plot(x,y,'p','MarkerSize',15)

%figure(5)
%plot(xx,yy,'c--','LineWidth',4)

figure(6)
hold on
plot(x,y,'o','MarkerSize',8)
plot(xx,yy,'r--','Linewidth',3)
xlabel('x-axis')
ylabel('y-axis')
title('y vs x data for y = x^2')
legend('data points','function')
hold off                                        %used to combine multiple commands (like ( ) )


%%
figure(11)
semilogx(xx,yy)

figure(12)
semilogy(xx,yy)

figure(13)
loglog  %I don't remember the rest of the command but it makes both axis go by log. 

%Look in the posted mfile that has all the plotting stuff. 














