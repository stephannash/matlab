function[sorted] = arraySortFunction(A)

if length(A) == 1
    sorted = A;
    
else 
    
    n = ceil(length(A)/2);
    sorted1 = [];
    sorted2 = [];
    sorted = [];
    for i = 1:1:n
        sorted1 = [sorted1 A(i)];
        if mod(length(A),2) ~= 0 && i ~= n
            sorted2 = [sorted2 A(i+n)];
        elseif mod(length(A),2) == 0
            sorted2 = [sorted2 A(i+n)];
        end
    end
    
    sorted1 = parallel.FevalFuture(arraySortFunction(sorted1));
    sorted2 = parallel.FevalFuture(arraySortFunction(sorted2));
    parallel.fetchOutputs
    
    %Broken
    
    
    
    
    sl1 = length(sorted1);
    sl2 = length(sorted2);
    i = 1;
    k = 1;
    temp1 = sorted1(i);
    temp2 = sorted2(k);
    while i <= sl1 && k <= sl2
        
        temp1 = sorted1(i);
        temp2 = sorted2(k);
        
        if temp1 > temp2
            sorted = [sorted temp2];
            k = k + 1;
            
        else
            sorted = [sorted temp1];
            i = i +1;
        end
        
        
    end
    
    while i <= sl1
        sorted = [sorted sorted1(i)];
        i = i+1;
    end
    while k <= sl2
        sorted = [sorted sorted2(k)];
        k = k+1;
    end   
    
    
    
end



