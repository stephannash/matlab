clear all
clc


%Reading data from a file

filen = 'C:\Users\nashsp1\Documents\GitHub\matlab\data.txt'

% r: rear, w:write, a:append (add to the end)
fh = fopen(filen,'r')

% scan for the first line of data.txt
a = fgets(fh)

%puts a into a matrix
b = sscanf(a,'%f')


%% This is going out of bounds because I already read in a line above ^^

for i = 1:1:3
    a = fgets(fh);
    b = sscanf(a,'%f');
    n = length(b)
    rowSum(i) = 0;
    for j = 1:1:n
        rowSum(i) = rowSum(i) + b(j)
    end
end
rowSum



%%
clear all
clc


% isChar(a) returns true if a is a string

theFile = 'C:\Users\nashsp1\Documents\GitHub\matlab\max_von_mises_sodacan.txt'

fh = fopen(theFile,'r');
a = fgets(fh);
dataArray = [];


while (a ~= -1)
    b = sscanf(a,'%f');
    dataArray = [dataArray b];
    a = fgets(fh);
end
dataArray;

% Find max of the array

n = length(dataArray);
tempMax = dataArray(1);
for i = 2:1:n
    if dataArray(i) > tempMax
        tempMax = dataArray(i);
    end
end
tempMax


%create time vector for plot
tt = [0:0.01:(n-1)/100];

figure(1)
plot(tt,dataArray)
xlabel('Time (Sec)')
ylabel('Stress (Units)')



%% Reading from a spreadsheet
clear all
clc

filen = 'C:\Users\nashsp1\Documents\GitHub\matlab\data.xlsx'

[ndata,text,allData] = xlsread(filen)




















































