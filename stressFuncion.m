function [stress] = stressFuncion(xx)


j1 = xx(1)*xx(2)*xx(3) + 2*xx(4)*xx(5)*xx(6) - xx(1)*xx(5)^2 - xx(2)*xx(6)^2 - xx(2)*xx(4)^2;
j2 = xx(4)^2 + xx(5)^2 + xx(6)^2 = xx(1)*xx(2) - xx(2)*xx(3) - xx(3)*xx(1);
j3 = xx(1) + xx(2) + xx(3);

syms x
eqn = x^3 - j3*x^2 - j2*x - j1;
stress = dowble((eqn,x))





