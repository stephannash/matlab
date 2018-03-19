function [answer] = homework6function(a,n)


answer = 0;
for i = 1:1:n
    y = 0.33 * i * a;
    if (y < 2)
        x = 4.5*y + 0.5*i;
    else
        x = i;
    end
    answer = answer + (a*x + exp(y));
end









































