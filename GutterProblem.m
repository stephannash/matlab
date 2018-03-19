
L = 0.25;
s = 0.05;
O = 45; %degrees
a = L - 2*s;
topL = 2*s*cosd(O) + a;
h = s*sind(O);

A = (((L - 2*s) + topL)/2) * h

% Area in centimeters
Acm = (((L - 2*s) + topL)/2) * h * 100


%% Optimized

syms s theta

L = 0.25;

a = L - 2*s;
topL = 2*s*cos(theta) + a;
h = s*sin(theta);


A = (((L - 2*s) + topL)/2) * h

dA = diff(A,s)


OpA = solve(dA,s)



OpB = diff(OpA,theta)

tt = [0:0.001:10];

OpBB = subs(OpB,tt);

OpTheta = double(max(OpBB))

%A with known theta


a = L - 2*s;
topL = 2*s*cos(OpTheta) + a;
h = s*sin(OpTheta );


Akt = (((L - 2*s) + topL)/2) * h
dAkt = diff(Akt,s)

OpS = double(max(subs(dAkt,tt)))

L = 0.25;
theta = OpTheta
s = OpS
a = L - 2*s;
topL = 2*s*cosd(theta) + a;
h = s*sind(theta);


A = (((L - 2*s) + topL)/2) * h



























