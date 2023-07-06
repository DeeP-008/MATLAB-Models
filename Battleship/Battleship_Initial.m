%Dhyeya Padhya
%04/22/23
%Battleship_Initial.m
%
%This program will simulate a variation of the battleship game called
%rowboat.
clear;clc

GB = zeros(9,9);    %creating a 9 x 9 Gameboard array of zeroes

counter = 0 ; 	% Count how many boats are on the board
boats = 6;  %number of boats in board
for k = 1 : 10000 	% Try up to 10000 times
      m = randi(9) ; 	% Guess a row
      n = randi(9) ; 	% Guess a column
      if (counter < boats && GB(m, n) == 0) 	
          % If the spot is empty, and not all the boats are placed yet
           GB(m, n) = 1 ; 	% Put a boat in that spot
           counter = counter + 1 ; 	% Update the count of boats on the board.
      end 	
end

imagesc(GB);     
axis square;     % This makes image a square shape
title('Row boat placement board');     % Title asked for the program


%plot axis label in bold to complement the title
xlabel('by Dhyeya Padhya', FontWeight='bold'); 
