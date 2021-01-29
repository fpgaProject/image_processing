clear all
close all
clc
size = 0;%% 0 => 1x , 1 => 2x , 2 => 0.5x
filter = 2;%% 0 => sobel ,  1 => median , 2 => canny

hdl_obj = hdlcosim_main;
ValidResult = false;

Pixel_address =  uint8(zeros(480,640));
if (size == 0)
    pixel_out = uint8(zeros(480,640)); 
elseif(size == 1)
    pixel_out = uint8(zeros(960,1280)); 
else
   pixel_out = uint8(zeros(240,320));       
end
pixelResult = 0;
counter = 0;

if(filter == 1) %% median
%     image = imread('SpongeBob.png');Image for median
image = imread('tiger.png');
%     grayImage = rgb2gray(image);
    finalImage = imresize(image , [480 640]);
    finalImage = imnoise(finalImage,'salt & pepper',0.1);
else %% canny and sobel
    image = imread('Image2.jpg');
%     image = imread('testCanny.png');
    grayImage = rgb2gray(image);
    finalImage = imresize(grayImage , [480 640]);
end

imshow(finalImage)
figure

if(size == 2)
    for i=1:2:477
        for j=1:2:640
             x = uint8(finalImage(i:i+3,j));
            [valid , Pixel_address(i,j) ,pixelResult1 , pixelResult2, pixelResult3, pixelResult4]=step(hdl_obj,true,x(1),x(2),x(3) , x(4),uint8(filter),uint8(size)); 
            if(valid == 1)
                pixel_out((i+1)/2,(j+1)/2) = pixelResult1;
            end
            
        end
    end
else
    for i=1:477
        for j=1:640
             x = uint8(finalImage(i:i+3,j));
            [valid , Pixel_address(i,j) ,pixelResult1 , pixelResult2, pixelResult3, pixelResult4]=step(hdl_obj,true,x(1),x(2),x(3),x(4),uint8(filter),uint8(size)); 
            if(valid == 1 && size == 0)
                pixel_out(i,j) = pixelResult1;
            else
                pixel_out(2*(i-1)+1,2*(j-1)+1) =  pixelResult1;
                pixel_out(2*(i-1)+2,2*(j-1)+1) =  pixelResult2;
                pixel_out(2*(i-1)+1,2*(j-1)+2) =  pixelResult3;
                pixel_out(2*(i-1)+2,2*(j-1)+2) =  pixelResult4;

            end
        end
    end
end
if(size == 0)
 imageReady = reshape(pixel_out,480,640);
elseif(size == 1)
 imageReady = reshape(pixel_out,960,1280);
else
     imageReady = reshape(pixel_out,240,320);
end
 imshow(imageReady)
 
 