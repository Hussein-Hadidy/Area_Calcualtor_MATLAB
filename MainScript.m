%{
Project Title: Area Limits Calculator
By: Hussein Khaled El-Sayed EL-Hadidy (1200466) hussein.elhadidy03@eng-st.cu.edu.eg
    Mohammed Mahmoud Mohammed Aljamal (1200829) mohamed.elgamal02@eng-st.cu.edu.eg
    Omar Sherif Aly Shebl Elzahar (1200476) omar.elzahar02@eng-st.cu.edu.eg
    Omar Adel Hassan (1200490) omar.abdelazim02@eng-st.cu.edu.eg
    Ahmed Mohamed Mahmoud Abou Alfadl (4191309) ahmed.alfadl99@eng-st.cu.edu.eg
    All members contributed greatly in all tasks, as the program was done mainly using online coding and debugging with each other and dicussing our tasks using Video Confrencing.
    The main area of research of each member will be commented before it being addressed.
    Team 20
    Thank You.
%}
clear
clc
close all
%% Read image
I=imread('Test2.jpg');

%% Thresholding
Isum=thresholding(I);

%% Plotting the 3 planes (for understanding) code should be taken from thresholding function
%Omar Sherif El-Zahar
%{
subplot(2,2,1), imshow(i1);
title('Red Plane');
subplot(2,2,2), imshow(i2);
title('Green Plane');
subplot(2,2,3), imshow(i3);
title('Blue Plane');
subplot(2,2,4), imshow(Isum);
title('Sum of all planes');
%}

%% Complement image and fill holes & Better Edges using enhancing
%Mohammed Mahmoud Mohammed Aljamal
Iopenned=enhancing(Isum);
figure, imshow(Iopenned); %Shows binary image after enhancement

%% Getting number of objects and iterating on it to get the largest and smallest
%Omar Adel Hassan & Mohammed Mahmoud Mohammed Aljamal
figure,imshow(I);
hold on;
[Label n]=bwlabel(Iopenned,4);
blobs=regionprops(Label,'Area','BoundingBox');
areas = [blobs.Area];
[max,maxi]=maxAndPosition(areas);
[min,mini]=minAndPosition(areas);
maxcm=pxtocmsquared(max);
mincm=pxtocmsquared(min);
fprintf('The maximum area is %.2f cm^2\n',maxcm);
rectangle('Position',blobs(maxi).BoundingBox,'Edgecolor','r');
hold off;
answer=input('Do You want the smallest area(y/n): ','s');
while true
    if answer=='y'
        figure, imshow(I);
        rectangle('Position',blobs(mini).BoundingBox,'Edgecolor','b');
        fprintf('The minimum area is %.2fcm^2\n',mincm);
        break;
    elseif  answer=='n'
        disp('The program has ended, Thank You.');
        break;
    else
        answer=input('Please enter y or n: ','s');
    end
end