function [result] = practiceExam1Function(x,n)

result = 0;
for i = 1:1:n
    if mod(i,2) ~= 0
        result = result + .5*x^i;
    else
        result = result + .25*x^i;
    end
end
