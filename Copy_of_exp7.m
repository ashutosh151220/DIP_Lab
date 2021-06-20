clc
close all
mycolorimage = imread("desert.jpg");
mygrayimage = rgb2gray(mycolorimage);
mygrayimage = imsubtract(mygrayimage,60);
subplot(2,3,1);
imshow(mygrayimage);
title("Original Image")

myimage = uint8(mygrayimage);
subplot(2,3,2);
imhist(myimage);
axis off,axis tight;
title("Histogram of the Image");

subplot(2,3,3);
myadjustedimage = imadjust(myimage, stretchlim(myimage), []);
imshow(myadjustedimage);
title("Contrast Adjusted Image");

subplot(2,3,4);
myadjustedgammaimage = imadjust(myimage, [], [], 0.8);
imshow(myadjustedgammaimage);
title("Gamma Adjusted Image");

subplot(2,3,5);
[equalizedimage, T] = histeq(myimage);
imhist(equalizedimage);
axis off, axis tight;
title("Histogram of the equalized Image");

subplot(2,3,6);
imshow(equalizedimage);
title("Histogram-Equalized Final Image");