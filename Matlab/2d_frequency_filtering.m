
fileName= "Composite_cellzstack10twocells";

%im = tiffreadVolume('scan width 8 no sample.tiff');
%im = tiffreadVolume('scan width 32 no sample.tiff');

im = tiffreadVolume(fileName + ".tif");
%%
image = im(:,:, 49);
figure()
imshow(image,[]);


%%

frecImage = fftshift(fft2(double(image)));
imshow(log(frecImage),[]);
%%
filterPoints = [239, 240, 241, 478, 885, 1123, 1124, 1361, 1362, 1840, 1841, 2078, 2079, 2080, 2723, 2724, 2725, 2961, 2962, 2963];


frequencyFilter = ones(size(image));
for ii = 1: length(filterPoints)
    frequencyFilter(filterPoints(ii),1601) = 0;
end


frecImageFiltered = frecImage.*frequencyFilter;
%%

imwrite(frequencyFilter(:,:),"frequencyFilter.tiff");

%%
imshow(log(frecImageFiltered),[]);

%%

filteredImage = abs(ifft2(ifftshift(frecImageFiltered)));
figure()
imshow((filteredImage),[])

%%
figure()
imagesc(abs((frecImage)));
colormap('gray')



%%

filteredImage = uint16(FrequencyFilter2D(im(:,:,:),frequencyFilter));

%%
figure()
imshow(filteredImage(:,:,50),[])
for ii = 2:2:320
    imwrite(filteredImage(:,:,ii),fileName + " ch2 filtered "+ string(ii) + ".tiff");
end




%%

t = Tiff('myfile.tif','w');









