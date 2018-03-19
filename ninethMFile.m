clear all
clc

%Three types of loops

%Definite loop
    %Fixed amount of times through
    %For loop
%Indefinite loop
    %while loop
%Infinite loop
    %While(true)


    
for i = 1:1:5       %from 1 to 5 going up by 1
    fprintf('\nThe value of the loop variable is %g',i)
end
    
    %can increment by a negative number
A = [7 12 3 5]

answer = 0;

for i = 1:1:length(A)
    answer = answer + A(i);
end

fprintf('\nThe sum of the array is %g\n',answer)



%Average:
arraySum = 0;
for i = 1:1:length(A)
    arraySum = arraySum + A(i);
end

arrayAverage = arraySum/length(A)


%Standard Deviation
devSum = 0;
for i = 1:1:length(A)
    devSum = devSum + (A(i) - arrayAverage)^2;
end

arrayDev = sqrt(devSum / (length(A) - 1))


































