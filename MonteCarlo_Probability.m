%Dhyeya Padhya
%05/03/23
%MonteCarlo_Probability.m
%
%This program runs a Monte Carlo simulation to get the probability of
%getting the roll value of 2 6 sided die in a game of Monopoly. Roll value
%refers to the values between 1-12. THis program will find out the
%individual probabilities of getting each of those numbers.
clear;clc

for n = 1: 188000   %start loop
    dice1 = randi(6);   %value of dice can only be between 1-6
    dice2 = randi(6);
    rollValue = dice1+dice2;    %add values of both die to get rollValue
    A(n) = rollValue;   %add it in the array
end

histogram(A, 'Normalization', 'probability');   %create histogram showcasing probability
title('Monopoly Game by Dhyeya Padhya');
xlabel('X Value');
ylabel('Probability of roles with this value')