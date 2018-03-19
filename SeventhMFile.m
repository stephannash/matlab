clear all
clc

% Conditional Statements


x = 11

if x < 10
    fprintf('\nX is less than 10\n')
end

if x < 10
    frpintf('\nX is less than 10\n')
else
    fprintf('\nX is not less than 10\n')
end

if x < 10
    frpintf('\nX is less than 10\n')
elseif (10 < x) && ( x < 25)                                  %having a range for x. also, you dont need parenthesis
    fprintf('\nX is less than 20\n')
else
    fprintf('\nX is not less than 10 or 20\n')
end

%Different Logic Checks
% >
% <
% >=
% <=
% ==
% ~=                        don't get confused with java (!=)

% AND: && (or &)
% OR: || (or |)         it's that vertical line thing

% I'm pretty sure you can put a ~ infront of an expression to not it. 




%% BMI Calculator and Weight Category

%w = 184.352773826458        %in lbs
w = 300
h = 72                                  %in inches


bmi =( w/h^2) * 703

fprintf('\nYour BMI is %g\n', bmi)

if bmi < 18.5
    fprintf('\nYou are underweight\n')
    newW =  18.5 * h^2 /703;
    fprintf('\nYou need to gain %glbs to be a healthy weight\n',abs(w - newW))
elseif bmi <= 25
    fprintf('\nYou are a healthy weight\n')
elseif bmi <= 30
    fprintf('\nYou are overweight\n')
    newW = 25 * h^2 /703;
    fprintf('\nYou need to lose %glbs to be a healthy weight\n',w - newW)
elseif bmi > 30
    fprintf('\nYou are obese\n')
     newW = 25 * h^2 /703;
    fprintf('\nYou need to lose %glbs to be a healthy weight\n',w - newW)
else
    fprintf('\nYou are off the charts\n')
end
[bmi, weightCat, weightChange] = myBMI(w,h)

%mod (% in java) is mod(1312392839128, 12381293)




















