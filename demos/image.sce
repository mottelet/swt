//    Please ensure SIVP is installed and load SIVP first
if atomsIsInstalled("IPCV") || atomsIsInstalled("sivp")
    //    load an image
    demopath = get_absolute_file_path();
    im=imread(demopath+'/image/woman.bmp');
    //    Display the image
    imshow(im);
    //    Convert the color to gray
    G=rgb2gray(im);
    //    Display the image
    imshow(G);
    //    Convert integer to double
    x=im2double(G);
    //    one level decomposition
    [cA,cH,cV,cD]=dwt2(x,'bior3.3');
    //    normalize the approximation matrix
    a = cA-min(cA);
    a=a/max(a);
    //    display the approximation matrix
    imshow(a);
else
    messagebox("Please install IPCV or sivp toolbox to run this demo")
end
    