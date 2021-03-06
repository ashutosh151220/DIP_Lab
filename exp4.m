close all;
clc;
myimage = imread('desert.jpg');
mycolorimage = imresize(myimage,[256,256]);
mgi = rgb2gray(mycolorimage);
subplot(2,2,1);
imshow(mycolorimage);
title('Original Color image');
subplot(2,2,2);
imhist(mycolorimage);
figure;
imshow(mgi);
figure;
imhist(mgi);
Eqimage = histeq(mgi);
figure;
imshow(Eqimage);
figure;
imhist(Eqimage);