clear all
clc



DataSize = 5000;

loopTimeArray = zeros(1,DataSize);
functionTimeArray = zeros(1,DataSize);
arrayLengthArray = zeros(1,DataSize);
for k = 1:1:DataSize
    arrayLength = k;
    B = [];
    for i = 1:1:arrayLength
        B(i) = rand;
    end

    A = B;
    tic
    curMin = A(1);
    newA = zeros(1,length(A));
    while ~isempty(A)
        curMin = A(1);
        temp = 1;
        for j = 1:1:length(A)
            if curMin > A(j)
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



%plot(arrayLengthArray,loopTimeArray)
figure(2)
plot(arrayLengthArray,functionTimeArray,arrayLengthArray,loopTimeArray)
legend('Function Sort', 'Loop Sort', 'location','northwest')
xlabel('Array Size')
ylabel('Time to Sort')
ylim([0,0.1])

