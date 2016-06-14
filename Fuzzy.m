function [  ] = Fuzzy( I )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
Igray=imread(I);
subplot(2,2,1);
imshow(Igray);
title('Original Image');
if size(Igray,3)==3   
%Igray=Irgb;
Igray= 0.2989*Igray(:,:,1)+0.5870*Igray(:,:,2)+0.1140*Igray(:,:,3);
subplot(2,2,2);
imshow(Igray);
title('Grayscale Image')
end
Igray2=FIS1(Igray);
subplot(2,2,3);
imshow(Igray2);
title('Fuzzified Image');
output=FIS2(Igray2);
subplot(2,2,4);
imshow(output);
title('Output Image');

end

