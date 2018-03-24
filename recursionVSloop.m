clear all
clc



A=[1 5 2 4 3];
B=[1 6 4 5 2 3];
C = [1 3];
arrayMergeSort(C)
%arrayMergeSort(B)

%{

DataSize = 4;

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
    A = arrayLoopSort(A)
    loopTimeArray(k) = toc;

    tic
    B = arrayMergeSort(B)
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
%}
