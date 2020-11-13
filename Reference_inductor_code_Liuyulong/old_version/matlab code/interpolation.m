function [fi,yi] = interpolation(x,y,N)
xi = linspace(7,9,N);
fi = 10.^xi;
yi = interp1(x,y,fi,'cubic');

