%Ahmed Mohamed Mahmoud Abou Alfadl 
function [max,maxi]=maxAndPosition(x)
%This function takes in an array and returns the maximum element and its index.
max=-inf;
maxi=0;
for i=1:length(x)
    if x(i)>max
        max=x(i);
        maxi=i;
    end
end
end
