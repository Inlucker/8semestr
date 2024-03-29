function lab_09()
    close all;
    clear;
    clc;
    I=double(imread('bimage1.bmp')) / 255;

    figure;
    imshow(I); 
    title('Source image');

    PSF=fspecial('motion', 35, 205);
%     PSF=fspecial('motion', 55, 205);
%     PSF=fspecial('motion', 54, 65);
    [J1 P1]=deconvblind(I, PSF);
    figure;
    imshow(J1);
    title('Recovered image'); 
end