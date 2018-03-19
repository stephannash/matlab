function [bmi, weightCat, weightChange] = myBMI(w,h)

bmi =( w/h^2) * 703


if bmi < 18.5
    weightChange =  w - 18.5 * h^2 /703;
    weightCat = 'underweight';
elseif bmi <= 25
    weightCat = 'healthy';
    weightChange = 0;
elseif bmi <= 30
    weightCat = 'overweight';
    weightChange = -(w - 25 * h^2 /703);
   
elseif bmi > 30
    weightCat = 'obese';
     weightChange = -(w - 25 * h^2 /703);
end