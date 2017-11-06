% clear;clc
% I = imread('lena.jpg');
% figure;
% subplot(1,3,1);
% imshow(I,[]);
% 
% I = rgb2gray(I);
% I = double(I);
% subplot(1,3,2);
% imshow(I,[]);
% 
% [I_gradx,I_grady] = gradient(I); % x,y方向梯度图
% I = sqrt((I_gradx).^2 + (I_grady).^2); % 梯度幅值图
% 
% subplot(1,3,3);
% imshow(I,[])


clear;clc
I = imread('lena.jpg');
figure;
subplot(1,4,1);
imshow(I,[]);

I = rgb2gray(I);
I = double(I);
subplot(1,4,2);
imshow(I,[]);

[I_gradx,I_grady] = gradient(I); % x,y方向梯度图
I = sqrt((I_gradx).^2 + (I_grady).^2); % 梯度幅值图
I_min = min(min(I));
I_max = max(max(I));
I_reg = 255 * (I - I_min)/(I_max - I_min);
subplot(1,4,3);
imshow(I,[])
subplot(1,4,4);
imshow(I_reg,[])
