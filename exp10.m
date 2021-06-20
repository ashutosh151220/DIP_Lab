clc
close all;
clear
Myimg=imread("flower.jpg");
Mygrayimg= imresize(rgb2gray(Myimg),[256,256]);
subplot(2,2,1);
imshow(Mygrayimg),title("original image");

Myfftimg=fft2(Mygrayimg);
tmp=abs(Myfftimg);
Mylogimg=log(1+tmp);
subplot(2,2,2);
imshow(mat2gray(Mylogimg));
title("fft img");

[m,n]=size(Myfftimg);
low = 62;
band1 = 15;
band2 = 60;
Mylowpassmask=ones(m,n);
Mybandpassmask=ones(m,n);
for u = 1:m
for v = 1:n
tmp = ((u-(m+1))/2)^2+(v-(n+1)/2)^2;
raddist = round((sqrt(tmp)));
disp(raddist)
if raddist>low
Mylowpassmask(u,v)= 0;
end
if raddist > band2 || raddist < band1
Mybandpassmask(u,v)= 0;
end
end
end

f1= fftshift(Mylowpassmask);
f2= fftshift(Mybandpassmask);

resimg1 = Myfftimg.*f1;
resimg2 = Myfftimg.*f2;

r1= abs(ifft2(resimg1));
subplot(2,2,3);
imshow(r1,[]);
title('low-pass filtered img');

r2= abs(ifft2(resimg2));
subplot(2,2,4);
imshow(r2,[]);
title('band-pass filtered img');