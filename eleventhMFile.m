clear all
clc


% More loops. Indefinite and infinite

%N = 0
%tic             %starts timer named toc

%while toc < 10
 %   N = N + 1;
%end
%N



%infinite series 1/2^i

S = 0;
n = 1000;
i = 1;
while i <= n
    S = S + 1/2^i
    i = i+1;
end
S

tic
toc


% That ^ but with timer

S = 0;
i = 1;
tic
error = 1;

while (error > .0000001)            %error is change from one iteration to the next
    S = S + 1/2^i;
    error = abs((1/2^i)/(S*100));
    i = i+1;
end

S
toc

































