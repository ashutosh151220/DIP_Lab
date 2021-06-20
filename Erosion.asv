clc;
close all;
po = imgetfile;
I = imread(po);
original = I;
se = strel('disk',20);
eroded = imerode(original,se);
imshow(original),
figure;
imshow(eroded);

