clc;
close all;
po = imgetfile;
I = imread(po);
grayimg = rgb2gray(I);
binaryimg = imbinarize(grayimg);
se = strel('ball',5,5);
I2 = imdilate(grayimg,se);
imshow(grayimg);
title('Original');
figure;
imshow(I2);
title('Dilated');

