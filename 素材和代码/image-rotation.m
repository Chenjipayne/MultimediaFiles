
I = imread('example.jpg');
figure;
subplot(6,6,1)
imshow(I);

I_rotation = zeros(size(I,1),size(I,2));
for i = 1:36
    M = imrotate(I,i*10,'bilinear','crop');
    I_rotation = I_rotation + M;
    subplot(6,6,i+1);
end

imshow;

I_rotation_mean = I_rotation/36;
figure;
imshow(I_rotation_mean,[])



