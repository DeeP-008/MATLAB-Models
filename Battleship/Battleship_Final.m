%Dhyeya Padhya
%05/03/23
%Battleship_Final.m
%
%This program will build on the battleship game made by us in
%'Battleship_Initial.m'.
%Where that code just placed boats on the map, this code aims to actually
%play the game and sink the ships.
clear;clc
size = 11 ; % size of the gameboard
boats = 9 ; % number of boats
counter = 0 ;
GB = zeros(size) ;
while counter < boats
    m = randi(size) ;
    n = randi(size) ;
    if GB(m, n) == 0 % meaning that the space is empty
        GB(m, n) = 1 ;
        counter = counter + 1;
    end
end

imagesc(GB)
axis square
title('Row Boat Placement Board')
xlabel('by Dhyeya Padhya')

%My code
shotcount = 0;  %number of shots fired in the game
while(sum(sum(GB)) < 2*boats)
    m = randi(size);
    n = randi(size);
    shotcount = shotcount + 1;  %increase shotcount by 1 everytime the loop progresses
    if(GB(m,n) == 1)
        GB(m,n) = 2;    %indicates that the ship has been destroyed by a shot
    end
end

imagesc(GB);    %print image 
axis square
title('Row Boat Placement Board')
xlabel('by Dhyeya Padhya')
shotcount   %display number of shots firedshots