clc
close all
myimage = imread("flower.jpg");
myimage = rgb2gray(myimage);
figure;
imshow(myimage);
title("Original Image");

gaussmask = fspecial('gaussian',3);
filtering = imfilter(myimage,gaussmask);
figure;
imshow(filtering,[]);
title("Output of Gaussian Filter 3X3");

avgfilt = [1 1 1 1 1 1 1;
    1 1 1 1 1 1 1;
    1 1 1 1 1 1 1;
    1 1 1 1 1 1 1;
    1 1 1 1 1 1 1;
    1 1 1 1 1 1 1; 
    1 1 1 1 1 1 1];
avgfiltmask = avgfilt/sum(avgfilt);
convimage = conv2(double(myimage), double(avgfiltmask));
figure;
imshow(convimage,[]);
title("Average Filter with Conv2()");

figure;
myimage = imread("flower.jpg");
myimage = rgb2gray(myimage);
noisyimg = imnoise(myimage, 'salt & pepper',0.5);
imshow(noisyimg,[]);
title('Noisy Image');

mymed3image = medfilt2(noisyimg,[3,3]);
figure;
imshow(mymed3image);
title(" Output of 3x3 Median Filter Image");

mymed7image = medfilt2(noisyimg,[7,7]);
figure;
imshow(mymed7image);
title(" Output of 7x7 Median Filter Image");

h = [1 -2 -1; -1 5 -1; 1 -2 1];
hpt3 = conv2(double(myimage),double(h));
figure;
imshow(hpt3/100);
title("Output of High-pass Filter");


h = [-1 -1 -1; -1 9 -1; -1 -1 -1];
hpt3 = conv2(double(myimage),double(h));
figure;
imshow(hpt3/100);
title("Output of Sharpening - User Defined mask");

h = fspecial('unsharp',0.3);
hpt3 = imfilter(myimage, h);
figure;
imshow(hpt3,[]);
title("Output of unsharp mask filter");