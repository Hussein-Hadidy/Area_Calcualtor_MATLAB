%Mohammed Mahmoud Mohammed Aljamal
function Iopenned=enhancing(Isum)
%function takes a binary image and complement and fill it with holes.
Icomp = imcomplement(Isum);
Ifilled = imfill(Icomp, 'holes');
se = strel('disk',7);
Iopenned = imopen(Ifilled,se);
end
