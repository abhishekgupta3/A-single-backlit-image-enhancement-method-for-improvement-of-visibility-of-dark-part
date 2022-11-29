function A = alphaBlending(img, H, alpha)
    A = (1 - alpha) .* img + alpha .* H;
end
