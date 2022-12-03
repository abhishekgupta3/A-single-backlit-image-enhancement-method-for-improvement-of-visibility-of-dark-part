clc;
clear;
close all;

image = imread('img1.jpg');

HE = loe(image, histogramEqualization(image));
CLAHE = loe(image, clahe(image));
Backlit = loe(image, backlitImageEnchancement(image));