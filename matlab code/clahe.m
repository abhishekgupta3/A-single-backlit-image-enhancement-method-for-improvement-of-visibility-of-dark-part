function output = clahe(image)
    image = im2gray(image);
    output = adapthisteq(image);
end

