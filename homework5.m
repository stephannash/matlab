clear all
clc

%% Questoin #1

income = 25000;
[fedtax,PAtax,sstax,meditax,totaltax] = taxCalc(income);
fprintf('\nIncome: $%.2f\nFederal Tax: $%.2f\nState Tax: $%.2f\nSocial Security Tax: $%.2f\nMedicare Tax: $%.2f\nTotal Tax: $%.2f\n Effective Tax: %.2f%%\n',income,fedtax,PAtax,sstax,meditax,totaltax,totaltax/income*100)

income = 150000;
[fedtax,PAtax,sstax,meditax,totaltax] = taxCalc(income);
fprintf('\nIncome: $%.2f\nFederal Tax: $%.2f\nState Tax: $%.2f\nSocial Security Tax: $%.2f\nMedicare Tax: $%.2f\nTotal Tax: $%.2f\n Effective Tax: %.2f%%\n',income,fedtax,PAtax,sstax,meditax,totaltax,totaltax/income*100)

income = 650000;
[fedtax,PAtax,sstax,meditax,totaltax] = taxCalc(income);
fprintf('\nIncome: $%.2f\nFederal Tax: $%.2f\nState Tax: $%.2f\nSocial Security Tax: $%.2f\nMedicare Tax: $%.2f\nTotal Tax: $%.2f\n Effective Tax: %.2f%%\n',income,fedtax,PAtax,sstax,meditax,totaltax,totaltax/income*100)



























