% Dhyeya Padhya
% 03/25/23
% Vole_Model.m
%
% This program will model the growth of a colony of voles over the
% course of 28 months. This model will take into account the added condition 
% that at the end of every May, an annual tourism event introduces abundant
% food to the habitat, causing 45 voles move in from elsewhere to join the 
% colony. 
clear;clc

birth = 0.0075;  %birth rate of 0.75% per month
death = 0.0035;  %death rate of 0.35% per month
deltaT = 1;      %increments in time in years
P(1) = 1050;     %initial number of voles in January 2020

for t = 1:28     %for loop to calculate vole population for 28 months
    P(t+1) = P(t) + deltaT * (birth - death) * P(t);

    %if statement that allows for increase in vole population every May
    if(mod(t,12) == 5)
        P(t+1) = (P(t) + deltaT * (birth - death) * P(t)) + 45;
    end
    P(t+1) = floor(P(t+1)); 
    % cleans up any decimal/partial voles that have been created
end
P(29)
plot(1:29,P)  %plotting the results

%axis labels, plot title and legend
title('Vole Population Growth Model by Dhyeya Padhya', 'FontSize',15);
xlabel('Month');
ylabel('Number of voles in whole numbers');
legend('Vole Population');

%text
text(2,1275, 'Birth Rate = 0.75%');
text(2,1265, 'Death Rate = 0.35%');
text(2,1255, 'Duration = 28 months');
text(2,1245, 'Initial population = 1050 voles');
text(2,1235, 'Gain in population at the end of every May');
text(2.5,1227, '= 45 voles')
text(2,1217,'Population of voles at the end of the 28th month');
text(2.5,1209,'= 1252 voles');

mean ([8, 39, 11, 4, 14, 25, 34, 34])
std([13, 33, 30, 17, 9, 3, 30, 17])
