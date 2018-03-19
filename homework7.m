clear all
clc

%% Question #1

y = 0;
x = 33620;
error = 100; 
i = 0;
while error > 0.01
    error = abs((y - (y + 2*((x-exp(y))/(x+exp(y)))))/y);
    y = y + 2*((x-exp(y))/(x+exp(y)));
    i = i+1;
    
end
actualLN = log(x);

fprintf('\nNatural log of %g is calculated to be %g\nThe actual value of Natrual log of %g is %g.\nIt took %g iterations to obtain the result\n',x,y,x,actualLN,i)


%% Question #2

f = [3 -4 12];
v = [7 -1 3.4];
power = 0;

for i = 1:1:length(f)
    power = power + (f(i) * v(i));
end

dot(f,v)
power


%% Question #3

A = [95 82 61 88 -23 1045 40 88 201 59 -12 600 110 99 95 89];
result = 0;
for i = 1:1:length(A)
    if (A(i) > 0 && A(i) < 100)
        result = result + A(i);
    end
end
result



    
    
    
    
    


