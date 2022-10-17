% Edit image such that the:
f=imread("penguin.jpg");
imshow(f);
histogram(f,5);

% The brightness is lessened 
% and display the histogram
d=imadjust(f,[0.75 1],[0.1 0.5]);
imshow(d),figure,histogram(d,5);

% The brightness is increased 
% and display the histogram
b=im2uint8(mat2gray(2*log(1+double(f))));
imshow(b);
histogram(b,5);

% Display the histogram of high-contrast image
b=imadjust(f,[0 1],[0.3 0.5]);
imshow(b),figure,histogram(b,5);

% Display the histogram of low-contrast image
d=imadjust(f,[0 1],[0.3 0.7]);
imshow(d);
histogram(d,5);

% Display the histogram of negative image.
b=imadjust(f,[0 1],[1 0]);
imshow(b),figure,histogram(b,5);

% Discuss the details and changes that are occurring to the original histogram.