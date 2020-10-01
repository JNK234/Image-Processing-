% Read an Image
I = imread('pout.tif');

% Display an Image
figure
imshow(I);

% Tells basic details about the image
whos I;
% Histogram distribution of the Image
figure
imhist(I);

% Histogram Equalisation of Image
I2 = histeq(I);
figure;
imshow(I2);

figure;
imhist(I2);

% Write the processed Image
imwrite(I2,"pout20.png");
% Complete details about the image
imfinfo('pout20.png')