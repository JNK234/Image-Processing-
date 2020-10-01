% Basic Image Import, Process and Export operations


% Reading a image from toolbox
I = imread('pout.tif');
imshow(I);

figure;
imhist(I);

figure
I2 = histeq(I);
imshow(I2);

figure
imhist(I2);

% Write the edited image into new images
imwrite(I2,'pot.png');

% Get the details of the image 
imfinfo('pot.png');






