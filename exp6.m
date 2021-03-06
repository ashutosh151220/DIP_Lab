clc;
close all;
myimageA = imread("desert.jpg");
subplot(4,2,1);
imshow(myimageA);
title('ORIGINAL IMAGE A')
myimageA1 = imresize(myimageA,[500,500]);
mygrayimageA = rgb2gray(myimageA1);
mybinaryimageA = imbinarize(mygrayimageA);
myimageB = imread('flower.jpg');
subplot(4,2,2);
imshow(myimageB);
title('ORIGINAL IMAGE B')
myimageadjustB = imresize(myimageB,[500,500]);
mygrayimageB = rgb2gray(myimageadjustB);
mybinaryimageB = imbinarize(mygrayimageB);
subplot(4,2,3);
imshow(mybinaryimageA);
title('Binary Image - Image A');
subplot(4,2,4);
imshow(mybinaryimageB);
title('Binary Image - Image B');
subplot(4,2,5);
resultxor = xor(mybinaryimageA,mybinaryimageB);
imshow(mat2gray(resultxor));
title('Image A XOR Image B');
subplot(4,2,6);
resultor = mybinaryimageA | mybinaryimageB;
imshow(mat2gray(resultor));
title('Image A OR Image B');
subplot(4,2,7);
resultand = mybinaryimageA & mybinaryimageB;
imshow(mat2gray(resultand));
title('Image A AND Image B');
subplot(4,2,8);
B = bitget(mygrayimageA,7);
imshow(logical(B));
title('BitPlane 7');