clear all
close all
clc
hdl_obj = hdlcosim_main;
ValidResult = false;
Pixel_address =  uint32(zeros(480,640));
pixel_out = uint8(zeros(480,640)); 
pixel_out2 = uint8(zeros(480,640)); 
pixelResult = 0;

% image = imread('Image1.jpg');
image = imread('medianImage.png');
grayImage = rgb2gray(image);
finalImage = imresize(grayImage , [480 640]);
imshow(finalImage)
counter = 1;

for i=1:478
    for j=1:640
         x = uint8(finalImage(i:i+2,j));
        [valid , Pixel_address(i,j) ,pixelResult]=step(hdl_obj,true,x(1),x(2),x(3),uint8(1)); 
        if(valid == 1)
            pixel_out(i,j) = pixelResult; 
        end
    end
end

 imageReady = reshape(pixel_out,480,640);
 imshow(imageReady)
 
 