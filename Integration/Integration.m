%Dhyeya Padhya
%05/03/23
%Integration.m

%This program will integrate over a curve f(x) = 10x^2 + 15x - 12 between 
%the limits of x = 0.95 and x = 2.73 using 4250 panels.

clear ; clc
xL = 0.95;  %lower bound
xR = 2.73;  %upper bound
panels = 4250;  %num of panels
deltax = (xR - xL) / panels ;
h = deltax ;
total_area = 0 ;
for x = xL : h : xR - h
b1 = (10*(x^2)) + (15*x) - 12 ; % f(x)
b2 = (10*((x+h)^2)) + (15*(x+h)) - 12; % f(x+h)
area = 0.5 * h * (b1 + b2) ;
total_area = total_area + area ;
end
fprintf('Total Area = %9.3f \n', total_area)
