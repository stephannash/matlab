clear all
clc

%% Question #1
fprintf('\nStephan Nash\nWednesday 10:00am\nSpring\n2018\n')


%% Question #2

A = [13 23 0 3;17 13 7 0;0 -11 19 23;5 0 17 19]
[row,colm] = size(A)
diagLine = colm
tempArray = []

for i = 1:1:row
    
    for j = 1:1:colm
        if j == diagLine
            tempArray = [tempArray A(i,j)];
            diagLine = diagLine - 1;
        end
    end
end

%Adding elements of tempArray together
sumAD = 0;
for i = 1:1:length(tempArray)
    sumAD = sumAD + tempArray(i);
end

sumAD


%% Question #3

q3a = fibonacciSequence(6)
q3b = fibonacciSequence(17)
q3c = fibonacciSequence(100)
















