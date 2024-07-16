

im = tiffreadVolume('Composite_cellzstack10twocells.tif');

%%
image = im(:,:,50);
figure()
imagesc(image);


%%

frecImage = fftshift(fft2(double(image)));
imshow(log(frecImage),[]);
%%
filterPoints = [1601,1123 ; 1601,1362 ; 1601,1840 ; 1601,2079];
filterPoints = flip(filterPoints,2);

frequencyFilter = ones(size(image));
frequencyFilter(1123,1601) = 0;
frequencyFilter(1362,1601) = 0;
frequencyFilter(1840,1601) = 0;
frequencyFilter(2079,1601) = 0;

frecImageFiltered = frecImage.*frequencyFilter;

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
tic;
filteredImagefromfunction = FrequencyFilter2D(im,frequencyFilter);
time = toc;
%%

%imagesc(filteredImagefromfunction(:,:,1))

imwrite(filteredImagefromfunction(:,:,1), 'MyFilteredTiffFile1.tif','tif'); 













