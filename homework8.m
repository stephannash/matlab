clear all
clc

%% Question #1

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

%% Question #2


n = 6; %size
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

%% Question #3

A = [-3 4 7;9 11 -13;-17 19 -23;-29 31 37;39 41 47];
[row,colm] = size(A);

%Put matrix into array
arrayA = [];
k = 1;
for i = 1:1:row
    
    for j = 1:1:colm
        
      arrayA(k) = A(i,j);
      k = k+1;
        
    end
    
end

%sort array
curMin = arrayA(1);
newA = [];
while length(arrayA) > 0
    curMin = arrayA(1);
    temp = 1;
    for j = 1:1:length(arrayA)
        if curMin > arrayA(j);
            curMin = arrayA(j);
            temp = j;
        end
    end
    newA = [newA curMin];
    arrayA(temp) = [];
end

%Put array back into matrix
k = 1;
for i = 1:1:row
    
    for j = 1:1:colm
        
      A(i,j) = newA(k);
      k = k+1;
        
    end
    
end
A

%% Question #4

stress= [19.1 22.81 187 284.2 344.3 417 495];
strain = [.0001 .00012 .001 .0015 .0018 .0022 .0026];

n = length(stress);

Etop = 0;
Ebot = 0;

for i = 1:1:n
    Etop = Etop + (stress(i) * strain(i));
end

for i = 1:1:n
    Ebot = Ebot + strain(i)^2;
end

E = Etop/Ebot;

E













