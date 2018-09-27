%{
By Adison Horstmyer
9/25/18

This program is an example MatLab program that displays a black and white
image as well as a heatmap of the image and a graph of a specific vertical
axis pxiel down the horizonal axis

%}
clc;clear;close all;

%Defines x and the image
y = 50 ;
[img] = imread('testimage.tif');

%Defines the matrix of the image
img = img(:,:,1);

%Displays image in black and white with a colorbar
figure('Name','Image');
imshow(img);
colorbar('northoutside');

%Displays a heatmap of the image data with a colorbar
figure('Name','Heatmap');
heatmap(img);
xlabel('x')
ylabel('y')
colorbar('northoutside');

%Plots the y vertical pixel down the horizontal axis of the heatmap
figure('Name','Plot Graph');
plot(img(y,:));
xlabel('x on heatmap')
ylabel('value on heatmap')
datacursormode on