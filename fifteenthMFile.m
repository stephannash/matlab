clear all
clc


%Reading data from a file

filen = 'C:\Users\nashsp1\Documents\GitHub\matlab\data.txt'

% r: rear, w:write, a:append (add to the end)
fh = fopen(filen,'r')

% scan for the first line of data.txt
a = fgets(fh)

%puts a into a matrix
b = sscanf(a,'%g')

%do this for the other lines too