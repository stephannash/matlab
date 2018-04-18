function[solution] = gaussianElimination(A,B)

[row,colm] = size(A);



for i = 1:1:colm - 1
    
    temp = abs(A(i,i));
    maxRow = i;

    for k = i:1:colm
        if abs(A(k,i)) > temp
            maxRow = k;
        end
    end
    
    temp = A(i,:);
    A(i,:) = A(maxRow,:);
    A(maxRow,:) = temp;
    temp = B(i);
    B(i) = B(maxRow);
    B(maxRow) = temp;
    
    
    for j = i+1:1:row
        rowMult = (A(j,i)/A(i,i));
        A(j,:) = A(j,:) - rowMult*A(i,:);  
        B(j) = B(j) - rowMult*B(i);
    end
    
    
    
    
end


solution = zeros(row, 1 );
for i=row:-1:1
    
   solution(i,1) = B(i);

   for j=(i + 1):row
      solution(i,1) = solution(i,1) - A(i, j)*solution(j,1);    
   end

   solution(i,1) = solution(i,1)/A(i, i);
   
end































