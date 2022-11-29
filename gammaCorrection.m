function G = gammaCorrection(img, gamma)
    G = uint8( 255 * (double(img) / 255) .^ (1 / gamma) );
end