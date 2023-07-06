%Dhyeya Padhya
%03/01/2023
%Loss_Of_Power.m
%
%MATLAB program to solve physics problem of how much power is lost
% during transmission of electricity, using 2 equations:
%I = (P/V) and P_L = (I^2)*R

clear;clc
P = 205000;                     %Power in watts
R = 0.944;                      %Resistance in ohms
V = 145000:8000:217000;         %Voltages ranging between 145000 and 217000 in 8000 volt increments
I = P./V;                       %Current measured across different volts. Measured in amperes

%Code 1: Vector method
PLdot = (I.^2) * R;             %Computes the power lost due to resistance

%Code 2: for loop method
for volt = 145000:8000:217000   %computes power lost through a for loop and scalars
                                %volt is equivalent to V 
    current = P / volt;         %current in amperes
    PLfor = (current^2)*R;
end
                      
PLdot - PLfor                   %comparing results 
