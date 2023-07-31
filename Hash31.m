function[h]=Hash31(a)
%Hash31 takes a sequence of values and...
% converts them into a unique integer value....
% This means we can then work with the integer value...
% (rather than the original sequence of values).
%input:a=A 1D array of values(or an empty array)
%output:h=An integer value calculated using the hash 31 algorithm.
h=0;
%use a for loop to run through all sequence of values and convert them into
% a hash value
for i=1:length(a)
    h=a(i)+31*h;
    h=mod(h,(2^20));
end
end