clear all
clc

%% Question 1
fprintf('\nStephan Nash\nWednesday 10:00AM\nSpring2018\n')

%% Question 2
x = 0.932;
n = 7;
result = practiceExam1Function(x,n);
fprintf('\nThe value of the infinite series when x = %g, and the number of terms being %g is %g\n',x,n,result)


%% Question 3

A = [13 23 0 0;17 0 7 0;0 -11 19 23;0 0 17 19];
[row,colm] = size(A);
isDiag = true;

%loop through, if j is not within 1 of i, check to see if it's zero. If it
%i, it's diag. 

isDiag
        











