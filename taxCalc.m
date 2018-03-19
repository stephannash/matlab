function [fedtax,PAtax,sstax,meditax,totaltax] = taxCalc(income)

PAtax = income*0.0307;

tempIncome = income;

fedtax = 0;

if(tempIncome < 9325)
    fedtax = tempIncome * 0.1;
else
    fedtax = 9325*0.1;
    tempIncome = tempIncome - 9325;
end


taxBrac = [9325 37950 91900 191650 416700 418400];
taxBracPerc = [0.1 0.15 0.25 0.28 0.33 0.35 0.396];
stop = false;
for i = 2:1:6
    if(tempIncome >= taxBrac(i))
        fedtax = fedtax + ((taxBrac(i) - taxBrac(i-1))*taxBracPerc(i));
        
    elseif(~stop)
        fedtax = fedtax + ((income- taxBrac(i-1))*taxBracPerc(i));
        tempIncome = 0;
        stop = true;
    end
    if((i == 6) && (tempIncome > taxBrac(i)))
        fedtax = fedtax + ((tempIncome-taxBrac(i))*taxBracPerc(7));
    end
end

meditax = income * 0.0145;

if(income > 127200)
    sstax = 127200*0.062;
else
    sstax = income *0.062;
end



totaltax = PAtax + fedtax + meditax + sstax;





    
    