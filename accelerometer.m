clear all
clc

% data taken at 30 Hz
filen = 'C:\Users\nashsp1\Documents\GitHub\matlab\accelerometerData.txt';
M = dlmread(filen,';',1,0);

%{ 
2941 lines in the txt file
First line is index;x;y;z
First line is skipped by dlmread. 
Index starts at 0
Each line is:
index   x   y   z
%}



time = M(:,1)./30;      %time is now in seconds

x = M(:,2);
y = M(:,3);
z = M(:,4);

%{
figure(1)
plot(time,x)
xlabel('Time')
ylabel('Acceleration')

%}

% Integrating x vs time data

intX(1) = 0;
inc = time(2)- time(1);

for i = 1:1:length(time) - 1
    intX(i+1) = intX(i) + ((x(i) + x(i+1)) / 2) * inc;
end




figure(1)
subplot(2,1,1)
plot(time,x)
title('acceleration')
subplot(2,1,2)
plot(time,intX)
title('velocity')





