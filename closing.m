clc;
close all;
po = imgetfile;
I = imread(po);
originalBW = I;
imshow(originalBW);
se = strel('disk',10);
closeBW = imclose(originalBW,se);
figure;
imshow(closeBW);