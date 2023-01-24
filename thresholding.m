%Omar Sherif El-Zahar
function Isum=thresholding(I)
%function that takes in an RGB image and threshold it using color spacing and covert it into binary image.  
rmat=I(:,:,1);
gmat=I(:,:,2);
bmat=I(:,:,3);
levelr = 0.85;
levelg = 0.85;
levelb = 0.85;
i1=im2bw(rmat,levelr);
i2=im2bw(gmat,levelg);
i3=im2bw(bmat,levelb);
Isum = (i1&i2&i3);
end