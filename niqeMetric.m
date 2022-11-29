% Naturalness Image Quality Evaluator (NIQE)

clc;
clear;

image = imread('Image_4.jpg');

HE = niqe(histogramEqualization(image));
CLAHE = niqe(clahe(image));
BacklitScore = niqe(backlitImageEnchancement(image));