function output = backlitImageEnchancement(image)

% Intensity image
I = uint8(sum(double(image),3) / 3);

% Gamma Correction
iGamma = gammaCorrection(I, 2);

% histogram equalization
H = histogramEqualization(I);

% Alpha blending
O = alphaBlending(iGamma, H, 0.5);

% Otsu's method 
img = im2gray(I);
T = multithresh(img);
BW = uint8(imquantize(img, T));
% figure
% imshow(BW, []);

% Guided filtering
Iguided = imguidedfilter(BW, I);
% figure
% imshow(Iguided, []);

% Image composition using the filtered weight map
output = O .* Iguided + (1 - Iguided) .* I;

% Colorise
output = image .* (output ./ I);
% figure
% imshow(output);

end