clear all
clc
%Inputs:
LA = 30000 %loan amount
NY =  5 %number of years to pay off car
APR= 6.75 %percent for annual interest rate

%Equation:

NM = NY * 12
IPM = APR / 12 / 100

%monthly payments
pm = ['( ' num2str(LA) '*' num2str(IPM) ')/1-(1+' num2str(IPM) ')^(-' num2str(NM) ')']

monthlyPayment = (LA * IPM)/(1 - (1+IPM)^(-NM))
fprintf('\nThe monthly payment for a loan of %G, paid off over %g years with an APR of %g is %.2f\n',LA,NY,APR,monthlyPayment)