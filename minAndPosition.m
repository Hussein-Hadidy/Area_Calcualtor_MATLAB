%Ahmed Mohamed Mahmoud Abou Alfadl 
function [min mini]=minAndPosition(x)
%This function takes in an array and returns the minimum element and its index.
min=inf;
mini=0;
for i=1:length(x)
    if x(i)<min
        min=x(i);
        mini=i;
    end
end
end