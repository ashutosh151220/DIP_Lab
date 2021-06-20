I = imread('desert.jpg');
figure;
imshow(I);
title('Original Image');

H = fspecial('motion',20,45);
MotionBlur = imfilter(I,H,'replicate');
figure;
imshow(MotionBlur);
title('Motion Blurred Image');

H = fspecial('disk',10);
blurred = imfilter(I,H,'replicate');
figure;
imshow(blurred);
title('Blurred Image');

H = fspecial('unsharp');
sharpened = imfilter(I,H,'replicate');
figure;
imshow(sharpened);
title('Sharpened Image');