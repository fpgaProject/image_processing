clear all
close all
clc
hdl_obj = hdlcosim_main;
ValidResult = false;
Pixel_address =  uint32(zeros(480,640));
pixel_out = uint8(zeros(480,640)); 

image = imread('Image1.jpg');
grayImage = rgb2gray(image);
finalImage = imresize(grayImage , [480 640]);
% imshow(finalImage)

for i=0:479
    for j=1:639
           x = uint8(finalImage(i+1:i+3,j));
           x(1)
           x(2)
           x(3)
        [valid , Pixel_address(i*639+j) , pixel_out(i*639+j)]=step(hdl_obj,true,x(1),x(2),x(3));
    end
end

 imageReady = reshape(pixel_out,480,640);
 imshow(imageReady)