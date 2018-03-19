clear all
clc

%I THINK this might be wrong


numRice = 0;
for i = 0:1:63
    numRice = numRice + 2^i;
end

numRice;

gramsRice = numRice/50;
poundsRice = gramsRice*0.00220462;
numMount = poundsRice/357000000000000;

fprintf('\nThere would be %g grains of rice weighing %glbs \nmeaning it would be as much as %g Mount Everests\n',numRice,poundsRice,numMount)





