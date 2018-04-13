clear all
clc

% Gousious whatever. Something with solving e1uations with matrix
% We did it on paper in class

A = [25 5 1;64 8 1;144 12 1];
B = [106.8;177.2;279.2];

% Forward elimination without partial pivoting
% Step 1 - eliminate everything below A(1,1)
% row - 64/25*row1
A(2,:)= A(2,:) - 64/25*A(1,:)
B(2) = B(2) - 64/25*B(1)

% row 3 - 144/25*row1
A(3,:) = A(3,:) - 144/25*A(1,:)
B(3) = B(3) - 144/25*B(1)

%step 2 eliminate everything below A(2,2)
%row 3- (-16.8/-4.8)*row2
A(3,:) = A(3,:) - (-16.8/-4.8)*A(2,:)
B(3) = B(3) - (-16.8/-4.8)*B(2)

% step 3 back substitution
a(3) = B(3)/A(3,3)
a(2) = (B(2) - A(2,3)*a(3))/A(2,2)
a(1) = (B(1) - A(1,3)*a(3) - A(1,3)*a(2))/A(1,1)        % This one is wrong


%% Automating that whole procress

A = [25 5 1;64 8 1;144 12 1];
B = [106.8;177.2;279.2];


[row, colm] = size(A);

[resultA, resultB] = forwardElim(A, B)
[resultPPA, resultPPB] = forwardElimPP(A,B)


    % Back Substitution    

xValues = zeros(row, 1 );
for i=row:-1:1
    
   xValues(i) = resultB(i);

   for j=(i + 1):row
      xValues(i) = xValues(i) - resultA(i, j)*xValues(j);    
   end

   xValues(i) = xValues(i)/resultA(i, i);
   
end
xValues

xValuesPP = zeros(row, 1 );
for i=row:-1:1
    
   xValuesPP(i) = resultPPB(i);

   for j=(i + 1):row
      xValuesPP(i) = xValuesPP(i) - resultPPA(i, j)*xValuesPP(j);    
   end

   xValuesPP(i) = xValuesPP(i)/resultPPA(i, i);
   
end
xValuesPP

















