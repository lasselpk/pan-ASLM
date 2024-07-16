function [FilteredImage] = FrequencyFilter2D(Image,FrequencyFilter)
%FrequencyFilter2D Takes a tiff image and a frequncy filter matrix and
%applies the filter in the frequency domain.
%   Detailed explanation goes here

[ximage,yimage,zimage] = size(Image);
[xfilt,yfilt] = size(FrequencyFilter);
FilteredImage = zeros(size(Image)); %% Make a copy of the image

    if (ximage == xfilt && yimage == yfilt)
        
        for ii = 1 : zimage

            frecImage = fftshift(fft2((Image(:,:,ii))));

            frecImageFiltered = frecImage.*FrequencyFilter;

            FilteredImage(:,:,ii) = abs(ifft2(ifftshift(frecImageFiltered)));
        end
        
    else
        warning('The filter and the image must have same dimensionality in X and Y')
    end

end

