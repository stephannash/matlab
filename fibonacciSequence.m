function[result] = fibonacciSequence(n)

fibSeq = [1 1];
if n == 1 || n == 2
    result = 1;
else
    for i = 3:1:n
        fibSeq = [fibSeq (fibSeq(i-1) + fibSeq(i-2))];
    end
    result = fibSeq(n);
end
    










