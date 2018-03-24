function[sorted] = arrayLoopSort(A)

curMin = A(1);
sorted = [];
while ~isempty(A)
    curMin = A(1);
    temp = 1;
    for j = 1:1:length(A)
        if curMin > A(j)
            curMin = A(j);
            temp = j;
        end
    end
    sorted = [sorted curMin];
        
    A(temp) = [];
end