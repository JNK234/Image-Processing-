% Read an Image

I = imread('rice.png');
imshow(I)

% Preprocess the Image to make background illumination more uniform i.e background illumination of the image 
% is more near the center

se = strel('disk',15);

background = imopen(I,se);
imshow(background);

I2 = I - background;
imshow(I2);

I3 = imadjust(I2);
imshow(I3);

% The previos steps can be done by the following

I2 = imtophat(I,strel('disk',15));
imshow(I2);

% Create a binary version of the image i.e convert greyscale to binary
% image 

bw = imbinarize(I3);
bw = bwareaopen(bw,50);
imshow(bw)
