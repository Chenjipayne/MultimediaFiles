clc;
clear;

%%%%%%%图像的读取与显示%%%%%%%%%%
f1=imread('1.jpg');
f2=imread('2.jpg');
%f3=imread('3.jpg');
%f4=imread('4.jpg');

whos f1                %显示数组附加信息
imfinfo 1.jpg            %显示图像文件信息
[M,N]=size(f1);        %图像(数组)大小

imshow(f1);   
f1=im2double(f1);
% g=255-f1;
 g=imcomplement(f1);

for i=1:M/2
    for j=1:N/2
        f1(i,j)=imcomplement(f1(i,j));
    end
end
% for i=M/2+1:M
%     for j=N/2+1:N
%         f1(i,j)=255-f1(i,j);
%     end
% end

figure,imshow(f1);
figure,imshow(g);



% subplot(1,2,1),imshow(f1)   %多幅图像显示在一个窗口
% subplot(1,2,2),imshow(f2)
%subplot(2,2,3),imshow(f3)
%subplot(2,2,4),imshow(f4)

%%%%%%%图像的保存%%%%%%%%%%
% imwrite(f1,'1_1.jpg')


% %%%%%%%图像的加亮或减暗%%%%%%%%%%
% f3=imadd(f1,80);          %给图像添加一个正常数，加亮
% %f3=imadd(f1,-80);        %给图像添加一个负常数，减暗
% figure,imshow(f3)
% 
% %%%%%%%调整图像大小%%%%%%%%%%
% f4=imresize(f1,[666,666]);   %将图像f1的大小重新调整为[M,N]
% %f4=imresize(f1,3);          %将图像f1进行缩放，M>1放大，0<M<1缩小
% 
% %%%%%%%两幅图像叠加(要求两幅图像大小相同)%%%%%%%%%%
% f5=imadd(f4,f2);
% figure,imshow(f5)
% 
% f6=imresize(f1,3);
% figure,imshow(f6)
% 
% %%%%%%%图像的旋转%%%%%%%%%%
% J=imread('4.jpg');
% J1=imrotate(J,45);             %逆时针旋转45度
% J2=imrotate(J,45,'crop');      %逆时针旋转45度后，剪切
% figure;
% subplot(1,2,1),imshow(J1)
% subplot(1,2,2),imshow(J2)
% 
% 
% %%%%%%%图像类型的转换：彩色到黑白%%%%%%%
% I=imread('lena.jpg');
% K=rgb2gray(I);
% figure;
% subplot(1,2,1),imshow(I)
% title('原始图像')
% subplot(1,2,2),imshow(K);
% title('黑白图像')
% 
% 
% 

