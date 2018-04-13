% Time how long it takes to add 1 integer to an array

array = [];
arrayTimes = [];

for i = 1:1:10000000
    tic;
    array(i) = i;
    arrayTimes(i) = toc;
end

plot(array, arrayTimes)