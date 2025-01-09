mode(1);lines(0);clc; figure(); clf;
//        generate sine wave
x=[1:512];
y=sin(2*%pi*x/64);
//        continous wavelet transform
coef=cwt(y,1:128,'DOG');
surf(coef);
halt("press enter to proceed");
cwtplot(coef,1:128);

