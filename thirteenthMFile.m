clear all
clc


% Dot product of two vectors

F = [3 -2 7];
v =  [2 5 2];

answer = 0;
for i = 1:1:length(F)
    answer = answer + F(i)*v(i);    
end


answer
dot(F,v)


% Find min and max values of vector
A = [4 2 7 3 6 1 9 5 6 3 5];

curMax = A(1);
curMin = A(1);
for i = 2:1:length(A)
    if curMax < A(i);
        curMax = A(i);
    end
    if curMin > A(i);
        curMin = A(i);
    end
end

curMax
curMin


% Sorting
%A = [4 2 7 3 6 1 9 5 6 3 5];

% This uses a nested for loop and a function to sort an array and graphs
% the time it takes for each

DataSize = 2500;

loopTimeArray = [];
functionTimeArray = [];
arrayLengthArray = [];
for k = 1:1:DataSize
    arrayLength = k
    B = [];
    for i = 1:1:arrayLength
        B(i) = rand;
    end

    A = B;
    tic
    curMin = A(1);
    newA = zeros(1,length(A));
    while length(A) > 0
        curMin = A(1);
        temp = 1;
        for j = 1:1:length(A)
            if curMin > A(j);
                curMin = A(j);
                temp = j;
            end
        end
        newA = [newA curMin];
        A(temp) = [];
    end
    loopTimeArray(k) = toc;

    sorted = newA;

    tic
    functionSorted = arraySortFunction(B);
    functionTimeArray(k) = toc;
    
    arrayLengthArray(k) = k;
    
    
end
figure(1)
plot(arrayLengthArray,functionTimeArray,arrayLengthArray,loopTimeArray)
legend('Function Sort', 'Loop Sort', 'location','northwest')
xlabel('Array Size')
ylabel('Time to Sort')
ylim([0,0.02])

%functionSorted
%sorted
%{
if functionSorted == sorted
    true
else
    false
end


if (loopTime < functionTime)
    fprintf('\nUsing a loop is faster by %g seconds\n',functionTime-loopTime)
elseif (loopTime > functionTime)
    fprintf('\nUsing a recursive function is faster by %g seconds\n',loopTime-functionTime)
else
    fprintf('\nWow, exactly the same time\n')
end
%}



plot(arrayLengthArray,functionTimeArray,arrayLengthArray,loopTimeArray)
legend('Function Sort', 'Loop Sort', 'location','northwest')
xlabel('Array Size')
ylabel('Time to Sort')
ylim([0,0.1])



% round(num)
% ceil(num)
% floor(num)


% "Luck Six"

%rand() < 1
%%
n = 6;
%six numbers from 6 to 53
LS (1) = 5 + ceil(48*rand());
i = 1;
while length(LS) < n
    
    isDouble = false;
    temp = 5 + ceil(48*rand());
    j = 1;
    
    for j = 1:1:length(LS)
        if (temp == LS(j))
            isDouble = true;
        end
    end
    
    if ~isDouble
        LS(i) = temp;
        i = i+1;
    end
    
end
LS

good = true;
for i = 1:1:length(LS)
    for j = 1:1:length(LS)
        if LS(i) == LS(j) && i ~= j
            good = false;
            break
        end
    end
end

if good
    fprintf('\nNo Doubles\n')
else
    fprintf('\nHas Doubles\n')
end

%Generate identity matrix (1 down the diag. 0 everywhere else)
n = 5; %size
B=[];
for i = 1:1:n
    for j = 1:1:n
        if i == j
            B(i,j) = 1;
        else
            B(i,j) = 0;
        end
    end
end
B

%Max and min of a matrix

A = [100 3 5;2 6 3;2 5 9];
[row,colm] = size(A);

curMax = A(1,1);
curMin = A(1,1);
for i = 1:1:row
    
    for j = 1:1:colm
        if A(i,j) > curMax
            curMax = A(i,j);
        end
        if A(i,j) < curMin
            curMin = A(i,j);
        end
    end
    
end

curMin
curMax








