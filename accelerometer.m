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



time = M(:,1);      %time is now in seconds

x = M(:,2);
y = M(:,3);
z = M(:,4);

figure(1)
plot(time,x,time,y,time,z)
xlabel('Time')
ylabel('Acceleration')
legend('X-axis','Y-axis','Z-axis')





