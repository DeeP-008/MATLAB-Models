%Dhyeya Padhya
%04/15/23  
%Pixelated_Mario.m 
%This program will create a pixelated image of Mario.
clear;clc

Mario	= 	[	0	0	0	0	0	0	0	0	0	0	0	0	0	0	;  
			    0	0	0	0	1	1	1	1	1	0	0	0	0	0	;  
			    0	0	0	1	1	1	1	1	1	1	1	1	0	0	;  
			    0	0	0	3	3	3	2	2	4	2	0	0	0	0	;  
			    0	0	3	2	3	2	2	2	4	2	2	2	0	0	;  
			    0	0	3	2	3	3	2	2	2	4	2	2	2	0	;  
			    0	0	3	3	2	2	2	2	4	4	4	4	0	0	;  
			    0	0	0	0	2	2	2	2	2	2	0	0	0	0	;  
			    0	0	0	1	1	5	1	1	5	1	1	0	0	0	;  
			    0	0	1	1	1	5	1	1	5	1	1	1	0	0	;  
			    0	1	1	1	1	5	5	5	5	1	1	1	1	0	;  
			    0	2	2	1	5	6	5	5	6	5	1	2	2	0	;  
			    0	2	2	2	5	5	5	5	5	5	2	2	2	0	;  
			    0	2	2	5	5	5	5	5	5	5	5	2	2	0	;  
			    0	0	0	5	5	5	0	0	5	5	5	0	0	0	;  
			    0	0	4	4	4	0	0	0	0	4	4	4	0	0	;  
			    0	4	4	4	4	0	0	0	0	4	4	4	4	0	;  
			    0	0	0	0	0	0	0	0	0	0	0	0	0	0	] ;

myColorMap = [0.93,0.93,0.94;   %Background white
              0.59,0.69,0.46;   %Hat green
              1.00,0.75,0.50;   %Skin
              0.60,0.30,0.00;   %Hair brown
              0.01,0.01,0.01    %Shoe black
              0.00,0.20,0.60;	%Jean blue	
              1.00,0.98,0.00];  %Button yellow

colormap(myColorMap);
imagesc(Mario);
